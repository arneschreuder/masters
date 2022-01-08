# The MIT License (MIT)
# =====================

# Copyright  Arné Schreuder

# Permission is hereby granted, free of charge, to any person
# obtaining a copy of this software and associated documentation
# files (the “Software”), to deal in the Software without
# restriction, including without limitation the rights to use,
# copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the
# Software is furnished to do so, subject to the following
# conditions:

# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
# OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
# HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
# WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
# OTHER DEALINGS IN THE SOFTWARE.

import os
from typing import List, Tuple

import tensorflow as tf
from framework.distributions.bernoulli import Bernoulli
from framework.distributions.beta import Beta
from framework.distributions.categorical import Categorical
from framework.distributions.dirichlet import Dirichlet
from framework.distributions.distribution import Distribution
from framework.entities.entity import Entity
from framework.heuristics.adadelta import Adadelta
from framework.heuristics.adagrad import Adagrad
from framework.heuristics.adam import Adam
from framework.heuristics.bhh import BHH as BHHHeuristic
from framework.heuristics.de import DE
from framework.heuristics.ga import GA
from framework.heuristics.heuristic import Heuristic
from framework.heuristics.momentum import Momentum
from framework.heuristics.nag import NAG
from framework.heuristics.pso import PSO
from framework.heuristics.rmsprop import RMSProp
from framework.heuristics.sgd import SGD
from framework.hyper_parameters.bhh import BHH as BHHParameters
from framework.initialisers.ones import Ones
from framework.initialisers.zeros import Zeros
from framework.losses.loss import Loss
from framework.optimisers.optimiser import Optimiser
from framework.performance_log.performance_log import PerformanceLog
from framework.population import Population
from framework.utilities.utilities import flatten


class BHH(Optimiser):
    # The number of heuristics in the heuristic pool.
    K: int = None

    # The number of entities in the population/entity pool
    J: int = None

    # The number of performance criteria outcomes. (In this case, binary)
    L: int = None

    # Concentrations
    # The concentration parameters for each heuristic in K.
    alpha: tf.Variable = None
    # The concentration parameters for each entity in J and heuristic in K.
    beta: tf.Variable = None
    # The concentration of the success event of a beta distribution.
    gamma1: tf.Variable = None
    # The concentration of the failed event of a beta distribution.
    gamma0: tf.Variable = None

    # Probability Distributions
    # The heuristic Dirichlet distribution instance.
    theta: Distribution = None
    # The entity, heuristic Dirichlet distribution instance.
    phi: Distribution = None
    # The performance criteria/credit assignment Beta distribution instance.
    psi: Distribution = None

    # Selection probabilities
    # The probability of heuristic h in H occuring.
    p_H: tf.Variable = None  # Prior
    # The probability of entity j in J occuring given heuristic k in K applied.
    p_EgH: tf.Variable = None
    # The probability of performance metric c in C occuring given heuristic k in K applied.
    p_CgH: tf.Variable = None
    # The probability of heuristic h in H occuring, given entity j in J and performance criteria c in C.
    p_HgEC: tf.Variable = None  # Posterior

    # Selections
    # The likelihood of heuristic k in K given entity j in J and performance criteria c in C.
    l_HgEC: Distribution = None
    # The selection of heuristic k in K for entity j in J and performance criteria c in C.
    HgEC: tf.Variable = None

    # Instances
    # The population/swarm of entities.
    population: Population = None

    # Performance Log
    log: PerformanceLog = None

    def __init__(self, params: BHHParameters = BHHParameters()):
        """
        Parameters
        ----------
        params: BHHParameters
            The hyper parameters. Default = BHHParameters()
        """
        super(BHH, self).__init__(
            heuristic=BHHHeuristic(params=params)
        )

        self.J = params.population_size
        self.L = 1  # Binomial/Binary on credit
        self.K = len(params.heuristics)

        # Concentrations
        self.alpha = None
        self.beta = None
        self.gamma1 = None
        self.gamma0 = None

        # Probability Distributions
        self.theta = None
        self.phi = None
        self.psi = None

        # Selection probabilities
        self.p_H = None  # Prior
        self.p_EgH = None
        self.p_CgH = None
        self.p_HgEC = None  # Posterior

        # Selections
        self.l_HgEC = None
        self.HgEC = None

        # Instances
        self.population = Population(population_size=params.population_size)

        # Performance Log
        self.log = PerformanceLog()

    def initialise(self):
        """
        Initialiser function.
        Creates the population by creating a swarm of entities.
        Each entity maps the model and initialises.
        PBest and GBest values are also created.
        """
        super(BHH, self).initialise()

        # Initialise population
        self.population.set_logger(logger=self.logger)
        self.population.initialise(model=self.model)

        # Concentrations
        ones_initialiser = Ones()  # Uniform/Symmetrical
        zeros_initialiser = Zeros()

        self.alpha = tf.Variable(
            initial_value=ones_initialiser(shape=[self.K])
        )
        self.beta = tf.Variable(
            initial_value=ones_initialiser(shape=[self.J, self.K])
        )
        self.gamma1 = tf.Variable(
            initial_value=ones_initialiser(shape=[self.K])
        )
        self.gamma0 = tf.Variable(
            initial_value=ones_initialiser(shape=[self.K])
        )
        self.p_H = tf.Variable(
            initial_value=zeros_initialiser(shape=[self.K])
        )
        self.p_EgH = tf.Variable(
            initial_value=zeros_initialiser(shape=[self.J, self.K])
        )
        self.p_CgH = tf.Variable(
            initial_value=zeros_initialiser(shape=[self.K])
        )
        self.p_HgEC = tf.Variable(
            initial_value=zeros_initialiser(shape=[self.J, self.K])
        )
        self.HgEC = tf.Variable(
            initial_value=tf.cast(zeros_initialiser(shape=[self.J]), tf.int32)
        )

        # Perform initial selection.
        BHHHeuristic.select(
            alpha=self.alpha,
            beta=self.beta,
            gamma1=self.gamma1,
            gamma0=self.gamma0,
            theta=self.theta,
            phi=self.phi,
            psi=self.psi,
            p_H=self.p_H,
            p_EgH=self.p_EgH,
            p_CgH=self.p_CgH,
            p_HgEC=self.p_HgEC,
            l_HgEC=self.l_HgEC,
            HgEC=self.HgEC
        )

    def get_heuristic(self, j):
        """
        Gets the selection heuristic for entity j in J.

        Returns
        int:
            The index of the selected heuristic.
        Heuristic:
            The selected heuristic.
        """
        selections = self.HgEC.numpy()
        k = selections[j]
        return k, self.heuristic.params.heuristics[k]

    def get_gradient(self,
                     features: tf.Tensor,
                     labels: tf.Tensor) -> List[List[tf.Tensor]]:
        """
        Calculates the gradient of the model weights based on loss function.

        Parameters
        ----------
        features: tf.Tensor
            The input data
        labels: tf.Tensor
            The target data/labels

        Returns
        -------
        List[List[tf.Tensor]]
            The gradient as a list of list of tensors
        """
        with tf.GradientTape() as tape:
            weights = self.model.get_weights()
            tape.watch(weights)
            logits = self.model(features=features)
            loss = self.loss_fn(
                labels=labels,
                logits=logits
            )
            gradient = tape.gradient(
                target=loss, sources=weights
            )
            return gradient

    def apply_heuristic(self,
                        heuristic: Heuristic,
                        features: tf.Tensor,
                        labels: tf.Tensor,
                        loss_fn: Loss,
                        entity: Entity,
                        j: int,
                        population: Population,
                        step: int) -> None:
        """
        Delegates the application of the selected heuristic to the relevant entity.

        Parameters
        ----------
        heuristic: Heuristic
            The low level heuristic.
        features: tf.Tensor
            The input data
        labels: tf.Tensor
            The target data/labels
        loss_fn: Loss
            The loss function.
        entity: EntityState
            Entity state
        j: int
            The index of the entity
        population: PopulationState
            Population state
        step: int
            The iteration step numbe
        """
        adadelta_defaults = self.heuristic.params.defaults["adadelta"]
        adam_defaults = self.heuristic.params.defaults["adam"]

        if isinstance(heuristic, SGD):
            """
            Missing Prerequisites:
            --------------
            * sum_gradient_squared (proxy from Adagrad)
            * E_position_delta_variance (proxy from Adadelta)
            * E_gradient_mean (proxy from Adam)
            * E_gradient_variance (proxy from Adam)
            """
            Adagrad.calculate_sum_gradient_squared(entity=entity)
            Adadelta.calculate_E_position_delta_variance(
                params=adadelta_defaults, entity=entity)
            Adam.calculate_E_gradient_mean(params=adam_defaults, entity=entity)
            Adam.calculate_E_gradient_variance(
                params=adam_defaults, entity=entity)

            heuristic(
                entity=entity,
                step=step
            )
        elif isinstance(heuristic, Momentum):
            """
            Missing Prerequisites:
            --------------
            * sum_gradient_squared (proxy from Adagrad)
            * E_position_delta_variance (proxy from Adadelta)
            * E_gradient_variance (proxy from Adam)
            """
            Adagrad.calculate_sum_gradient_squared(entity=entity)
            Adadelta.calculate_E_position_delta_variance(
                params=adadelta_defaults, entity=entity)
            Adam.calculate_E_gradient_variance(
                params=adam_defaults, entity=entity)

            heuristic(
                entity=entity,
                step=step
            )
        elif isinstance(heuristic, NAG):
            """
            Missing Prerequisites:
            --------------
            * sum_gradient_squared (proxy from Adagrad)
            * E_position_delta_variance (proxy from Adadelta)
            * E_gradient_variance (proxy from Adam)
            """
            Adagrad.calculate_sum_gradient_squared(entity=entity)
            Adadelta.calculate_E_position_delta_variance(
                params=adadelta_defaults, entity=entity)
            Adam.calculate_E_gradient_variance(
                params=adam_defaults, entity=entity)

            heuristic(
                entity=entity,
                step=step
            )
        elif isinstance(heuristic, Adagrad):
            """
            Missing Prerequisites:
            --------------
            * E_position_delta_variance (proxy from Adadelta)
            * E_gradient_mean (proxy from Adam)
            * E_gradient_variance (proxy from Adam)
            """
            Adadelta.calculate_E_position_delta_variance(
                params=adadelta_defaults, entity=entity)
            Adam.calculate_E_gradient_mean(params=adam_defaults, entity=entity)
            Adam.calculate_E_gradient_variance(
                params=adam_defaults, entity=entity)

            heuristic(
                entity=entity,
                step=step
            )
        elif isinstance(heuristic, RMSProp):
            """
            Missing Prerequisites:
            --------------
            * sum_gradient_squared (proxy from Adagrad)
            * E_position_delta_variance (proxy from Adadelta)
            * E_gradient_mean (proxy from Adam)
            """
            Adagrad.calculate_sum_gradient_squared(entity=entity)
            Adadelta.calculate_E_position_delta_variance(
                params=adadelta_defaults, entity=entity)
            Adam.calculate_E_gradient_mean(params=adam_defaults, entity=entity)

            heuristic(
                entity=entity,
                step=step
            )
        elif isinstance(heuristic, Adadelta):
            """
            Missing Prerequisites:
            --------------
            * sum_gradient_squared (proxy from Adagrad)
            * E_gradient_mean (proxy from Adam)
            """
            Adagrad.calculate_sum_gradient_squared(entity=entity)
            Adam.calculate_E_gradient_mean(params=adam_defaults, entity=entity)

            heuristic(
                entity=entity,
                step=step
            )
        elif isinstance(heuristic, Adam):
            """
            Missing Prerequisites:
            --------------
            * sum_gradient_squared (proxy from Adagrad)
            * E_position_delta_variance (proxy from Adadelta)
            """
            Adagrad.calculate_sum_gradient_squared(entity=entity)
            Adadelta.calculate_E_position_delta_variance(
                params=adadelta_defaults, entity=entity)

            heuristic(
                entity=entity,
                step=step
            )
        elif isinstance(heuristic, PSO):
            """
            Missing Prerequisites:
            --------------
            * sum_gradient_squared (proxy from Adagrad)
            * E_position_delta_variance (proxy from Adadelta)
            * E_gradient_mean (proxy from Adam)
            * E_gradient_variance (proxy from Adam)
            """
            Adagrad.calculate_sum_gradient_squared(entity=entity)
            Adadelta.calculate_E_position_delta_variance(
                params=adadelta_defaults, entity=entity)
            Adam.calculate_E_gradient_mean(params=adam_defaults, entity=entity)
            Adam.calculate_E_gradient_variance(
                params=adam_defaults, entity=entity)

            heuristic(
                entity=entity,
                population=self.population,
                step=step
            )
        elif isinstance(heuristic, DE):
            """
            Missing Prerequisites:
            --------------
            * sum_gradient_squared (proxy from Adagrad)
            * E_position_delta_variance (proxy from Adadelta)
            * E_gradient_mean (proxy from Adam)
            * E_gradient_variance (proxy from Adam)
            """
            Adagrad.calculate_sum_gradient_squared(entity=entity)
            Adadelta.calculate_E_position_delta_variance(
                params=adadelta_defaults, entity=entity)
            Adam.calculate_E_gradient_mean(params=adam_defaults, entity=entity)
            Adam.calculate_E_gradient_variance(
                params=adam_defaults, entity=entity)

            heuristic(
                features=features,
                labels=labels,
                loss_fn=self.loss_fn,
                entity=entity,
                population=self.population,
                step=step
            )
        elif isinstance(heuristic, GA):
            """
            Missing Prerequisites:
            --------------
            * sum_gradient_squared (proxy from Adagrad)
            * E_position_delta_variance (proxy from Adadelta)
            * E_gradient_mean (proxy from Adam)
            * E_gradient_variance (proxy from Adam)
            """
            Adagrad.calculate_sum_gradient_squared(entity=entity)
            Adadelta.calculate_E_position_delta_variance(
                params=adadelta_defaults, entity=entity)
            Adam.calculate_E_gradient_mean(params=adam_defaults, entity=entity)
            Adam.calculate_E_gradient_variance(
                params=adam_defaults, entity=entity)

            heuristic(
                features=features,
                labels=labels,
                loss_fn=self.loss_fn,
                entity=entity,
                population=self.population,
                step=step
            )

    def update_bests(self,
                     features: tf.Tensor,
                     labels: tf.Tensor,
                     entity: Entity):
        """
        Updates the population best known positions.

        Parameters
        ----------
        features: tf.Tensor
            The input data
        labels: tf.Tensor
            The target data/labels
        entity: Entity
            The entity containing the state.
        """
        # Evaluate entity
        self.model.set_weights_flat(weights_flat=entity.position)
        _, entity.loss = self.evaluate(features=features, labels=labels)

        # Evaluate pbest
        self.model.set_weights_flat(weights_flat=entity.pbest)
        _, entity.pbest_loss = self.evaluate(features=features, labels=labels)

        if entity.loss < entity.pbest_loss:
            entity.pbest.assign(entity.position)
            entity.pbest_loss = entity.loss

        # Evaluate ibest
        self.model.set_weights_flat(weights_flat=self.population.ibest)
        _, self.population.ibest_loss = self.evaluate(
            features=features, labels=labels)

        if entity.loss < self.population.ibest_loss:
            self.population.ibest.assign(entity.position)
            self.population.ibest_loss = entity.loss

        # Evaluate gbest
        self.model.set_weights_flat(weights_flat=self.population.gbest)
        _, self.population.loss = self.evaluate(
            features=features, labels=labels)

        if entity.loss < self.population.loss:
            self.population.gbest.assign(entity.position)
            self.population.loss = entity.loss

        return entity.loss, entity.pbest_loss, self.population.ibest_loss, self.population.loss

    def __call__(self,
                 features: tf.Tensor,
                 labels: tf.Tensor,
                 step: int) -> Tuple[tf.Tensor, tf.Tensor]:
        """
        A single execution of the optimiser's step.

        Parameters
        ----------
        features: tf.Tensor
            The input data
        labels: tf.Tensor
            The target data/labels

        Returns
        -------
        Tuple[tf.Tensor, tf.Tensor]
            Consists out of (logits, loss)
        """
        # Evaluate initial
        if (step <= 1):
            for entity in self.population.entities:
                self.model.set_weights_flat(weights_flat=entity.position)
                _, entity.loss = self.evaluate(
                    features=features, labels=labels)

        for j, entity in enumerate(self.population.entities):
            # Get the selected heuristic
            k, heuristic = self.get_heuristic(j)

            # Prerequisite for analytical methods like SGD
            self.model.set_weights_flat(weights_flat=entity.position)
            gradient = self.get_gradient(features=features, labels=labels)
            gradient_flat = flatten(x=gradient)

            # Set gradient
            entity.gradient = gradient_flat

            # Apply heuristics to available data
            self.apply_heuristic(
                heuristic=heuristic,
                features=features,
                labels=labels,
                loss_fn=self.loss_fn,
                entity=entity,
                j=j,
                population=self.population,
                step=step
            )

            # Update pbest and gbest
            loss, pbest_loss, ibest_loss, gbest_loss = self.update_bests(
                features=features,
                labels=labels,
                entity=entity
            )

            # Log performance
            self.log.append(
                step=step,
                entity=j,
                heuristic=k,
                loss=loss.numpy(),
                pbest_loss=pbest_loss.numpy(),
                ibest_loss=ibest_loss.numpy(),
                gbest_loss=gbest_loss.numpy()
            )

        # Apply own bayesian heuristic
        self.heuristic(
            alpha=self.alpha,
            beta=self.beta,
            gamma1=self.gamma1,
            gamma0=self.gamma0,
            theta=self.theta,
            phi=self.phi,
            psi=self.psi,
            p_H=self.p_H,
            p_EgH=self.p_EgH,
            p_CgH=self.p_CgH,
            p_HgEC=self.p_HgEC,
            l_HgEC=self.l_HgEC,
            HgEC=self.HgEC,
            log=self.log,
            step=step
        )

        # Evaluate current position
        self.model.set_weights_flat(weights_flat=self.population.gbest)
        logits, loss = self.evaluate(features=features, labels=labels)
        self.population.loss = loss

        # Logging
        self.log_state(step=step)
        # self.population.log_state(step=step)

        return logits, loss


    def log_state(self, step):
        log_level = int(os.getenv('LOG_LEVEL')) if os.getenv('LOG_LEVEL') is not None else 0

        # Only if the log level is 2
        if self.logger and log_level >= 2:
            # Log entity
            # for j, entity in enumerate(self.population.entities):
            #     entity.log_state(step)

            # Alpha
            for k, heuristic in enumerate(self.heuristic.params.heuristics):
                self.logger.log_scalar_results(
                    'alpha[{}]'.format(k), result=self.alpha[k], step=step)

            # Beta
            for j, entity in enumerate(self.population.entities):
                for k, heuristic in enumerate(self.heuristic.params.heuristics):
                    self.logger.log_scalar_results(
                        'beta[{}][{}]'.format(j, k), result=self.beta[j][k], step=step)

            # Gamma
            for k, heuristic in enumerate(self.heuristic.params.heuristics):
                self.logger.log_scalar_results(
                    'gamma1[{}]'.format(k), result=self.gamma1[k], step=step)
                self.logger.log_scalar_results(
                    'gamma0[{}]'.format(k), result=self.gamma0[k], step=step)

            # Theta
            theta = Dirichlet(concentration=self.alpha)()
            for k, heuristic in enumerate(self.heuristic.params.heuristics):
                self.logger.log_scalar_results(
                    'theta[{}]'.format(k), result=theta[k], step=step)

            # Phi
            phi = Dirichlet(concentration=self.beta)()
            for j, entity in enumerate(self.population.entities):
                for k, heuristic in enumerate(self.heuristic.params.heuristics):
                    self.logger.log_scalar_results(
                        'phi[{}][{}]'.format(j, k), result=phi[j][k], step=step)

            # Psi
            psi = Beta(concentration1=self.gamma1, concentration0=self.gamma0)()
            for k, heuristic in enumerate(self.heuristic.params.heuristics):
                self.logger.log_scalar_results(
                    'psi[{}]'.format(k), result=psi[k], step=step)

            # p_H
            for k, heuristic in enumerate(self.heuristic.params.heuristics):
                self.logger.log_scalar_results(
                    'p_H[{}]'.format(k), result=self.p_H[k], step=step)

            # p_EgH
            for j, entity in enumerate(self.population.entities):
                for k, heuristic in enumerate(self.heuristic.params.heuristics):
                    self.logger.log_scalar_results(
                        'p_EgH[{}][{}]'.format(j, k), result=self.p_EgH[j][k], step=step)

            # p_CgH
            for k, heuristic in enumerate(self.heuristic.params.heuristics):
                self.logger.log_scalar_results(
                    'p_CgH[{}]'.format(k), result=self.p_CgH[k], step=step)

            # p_HgEC
            for j, entity in enumerate(self.population.entities):
                for k, heuristic in enumerate(self.heuristic.params.heuristics):
                    self.logger.log_scalar_results(
                        'p_HgEC[{}][{}]'.format(j, k), result=self.p_HgEC[j][k], step=step)
            # l_CgH
            l_CgH = Bernoulli(probs=self.p_CgH)()
            for k, heuristic in enumerate(self.heuristic.params.heuristics):
                self.logger.log_scalar_results(
                    'l_CgH[{}]'.format(k), result=l_CgH[k], step=step)
            
            # l_EgH
            l_EgH = Categorical(logits=self.p_EgH)()
            for j, entity in enumerate(self.population.entities):
                self.logger.log_scalar_results(
                    'l_EgH[{}]'.format(j), result=l_EgH[j], step=step)

            # l_HgEC
            l_HgEC = Categorical(logits=self.p_HgEC)()
            for j, entity in enumerate(self.population.entities):
                self.logger.log_scalar_results(
                    'l_HgEC[{}]'.format(j), result=l_HgEC[j], step=step)

            # HgEC
            for j, entity in enumerate(self.population.entities):
                self.logger.log_scalar_results(
                    'HgEC[{}]'.format(j), result=self.HgEC[j], step=step)

            



            



            

            


            


            
            
            
            
        
