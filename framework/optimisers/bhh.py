# The MIT License (MIT)
# =====================

# Copyright 2021 Arné Schreuder

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

from typing import List, Tuple

import tensorflow as tf
from framework.credits.credit import Credit
from framework.credits.ibest import IBest
from framework.distributions.beta import Beta
from framework.distributions.categorical import Categorical
from framework.distributions.dirichlet import Dirichlet
from framework.distributions.distribution import Distribution
from framework.entities.entity import Entity
from framework.heuristics.adadelta import Adadelta
from framework.heuristics.adagrad import Adagrad
from framework.heuristics.bhh import BHH as BHHHeuristic
from framework.heuristics.heuristic import Heuristic
from framework.heuristics.momentum import Momentum
from framework.heuristics.nag import NAG
from framework.heuristics.pso import PSO
from framework.heuristics.rmsprop import RMSProp
from framework.heuristics.sgd import SGD
from framework.initialisers.initialiser import Initialiser
from framework.initialisers.ones import Ones
from framework.initialisers.zeros import Zeros
from framework.optimisers.optimiser import Optimiser
from framework.performance_log.performance_log import PerformanceLog
from framework.population import Population
from framework.utilities.utilities import flatten

# TODO: STILL NEED TO COMMENT THIS FILE


class BHH(Optimiser):
    population_size: int = None
    burn_in: int = None
    replay: int = None
    reselection: int = None
    reanalysis: int = None
    credit: List[Credit] = None

    # TODO: DO we need to keep these as properties?

    alpha_initialiser: Initialiser = None
    beta_initialiser: Initialiser = None
    gamma_initialiser: Initialiser = None

    # TODO: DO we need to keep these as properties?

    K: int = None
    J: int = None
    L: int = None

    # Concentrations
    alpha: tf.Tensor = None
    beta: tf.Tensor = None
    gamma1: tf.Tensor = None
    gamma0: tf.Tensor = None

    # TODO: DO we need to keep these as properties?

    # Probability Distributions
    theta: Distribution = None
    phi: Distribution = None
    psi: Distribution = None

    # TODO: DO we need to keep these as properties?

    # Selection probabilities
    p_H: tf.Tensor = None  # Prior
    p_EgH: tf.Tensor = None
    p_CgH: tf.Tensor = None
    p_HgEC: tf.Tensor = None  # Posterior

    # TODO: DO we need to keep these as properties?

    # Selections
    l_HgEC: tf.Tensor = None
    HgEC: tf.Tensor = None

    # Instances
    population: Population = None
    heuristics: List[Heuristic] = None

    ibest: tf.Variable = None
    gbest: tf.Variable = None

    # Performance Log
    log: PerformanceLog = None

    def __init__(self,
                 population_size: int = 10,
                 burn_in: int = 30,
                 replay: int = 30,
                 reselection: int = 1,
                 reanalysis: int = 1,
                 credit: List[Credit] = [
                     IBest(discounted_rewards=True)
                 ],
                 heuristics: List[Heuristic] = [
                     SGD(),
                     PSO(),
                 ],
                 alpha_initialiser: Initialiser = Ones(),
                 beta_initialiser: Initialiser = Ones(),
                 gamma_initialiser: Initialiser = Ones()):
        super(BHH, self).__init__(
            heuristic=BHHHeuristic(credit=credit)
        )
        # Setting hyper-parameters
        self.population_size = population_size
        self.burn_in = burn_in
        self.replay = replay
        self.reselection = reselection
        self.reanalysis = reanalysis
        self.credit = credit

        self.alpha_initialiser = alpha_initialiser
        self.beta_initialiser = beta_initialiser
        self.gamma_initialiser = gamma_initialiser

        self.J = self.population_size
        self.L = 1  # Binomial/Binary on credit
        self.K = len(heuristics)

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
        self.heuristics = heuristics
        self.population = Population(population_size=self.population_size)
        self.ibest = None
        self.gbest = None

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
        self.population.initialise(model=self.model)

        # Concentrations
        self.alpha = tf.Variable(
            initial_value=self.alpha_initialiser(shape=[self.K])
        )
        self.beta = tf.Variable(
            initial_value=self.beta_initialiser(shape=[self.J, self.K])
        )
        self.gamma1 = tf.Variable(
            initial_value=self.gamma_initialiser(shape=[self.K])
        )
        self.gamma0 = tf.Variable(
            initial_value=self.gamma_initialiser(shape=[self.K])
        )

        self.select()

    # TODO: Shouldn't this be in the heuristic of BHH?
    def select(self):
        # Probability distributions
        self.theta = Dirichlet(concentration=self.alpha)
        self.phi = Dirichlet(concentration=self.beta)
        self.psi = Beta(concentration1=self.gamma1, concentration0=self.gamma0)

        # Probabilities
        self.p_H = self.theta()
        self.p_EgH = self.phi()
        self.p_CgH = self.psi()
        """
        PERFORMANCE BIAS:

        - Calculate the probability of  P(H|E,C) \propto P(E|H)*P(C|H)*(P(H)
        - Create a categorical distribution with the probabilities from above
        - Then pick the combination of entity and heuristic by sampling from
        - a categorical distribution with the learnt probabilities
        - probabilities
        """
        # To avoid underflow here, we use the log.
        # This is sufficient since we are using Maximum-a-priori (MAP) updates of model.
        # Yielding that we always calculate self.p_HgEC from model params.
        # The alternative to this is to use Maximum-likelihood-estimate (MLE) update of model.
        # In that case, we will assign p_H_t_plus_1 = p_HgEC_t = p_EgH_t* p_CgH_t * p_H_t
        # See: https://stats.stackexchange.com/questions/105602/example-of-how-the-log-sum-exp-trick-works-in-naive-bayes
        self.p_HgEC = tf.math.log(self.p_EgH * self.p_CgH * self.p_H)

        # Likelihoods
        self.l_HgEC = Categorical(logits=self.p_HgEC)

        # Sampling
        self.HgEC = self.l_HgEC()

    # TODO: Shouldn't this be in the heuristic of the BHH?
    def get_heuristic(self, j):
        selections = self.HgEC.numpy()
        k = selections[j]
        return k, self.heuristics[k]

    # TODO: Shared code?
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

    # TODO: Shouldnt this be in heuristic of BHH?
    def apply_heuristic(self,
                        heuristic: Heuristic,
                        entity: Entity,
                        population: Population,
                        step: int):
        if isinstance(heuristic, SGD):
            heuristic(
                entity=entity,
                step=step
            )
        elif isinstance(heuristic, Momentum):
            heuristic(
                entity=entity,
                step=step
            )
        elif isinstance(heuristic, NAG):
            heuristic(
                entity=entity,
                step=step
            )
        elif isinstance(heuristic, Adagrad):
            heuristic(
                entity=entity,
                step=step
            )
        elif isinstance(heuristic, RMSProp):
            heuristic(
                entity=entity,
                step=step
            )
        elif isinstance(heuristic, Adadelta):
            heuristic(
                entity=entity,
                step=step
            )
        elif isinstance(heuristic, PSO):
            heuristic(
                entity=entity,
                population=population,
                step=step
            )

    # TODO: Shared code? Move to population?
    def update_bests(self,
                     features: tf.Tensor,
                     labels: tf.Tensor,
                     entity: Entity):
        # Evaluate entity
        self.model.set_weights_flat(weights_flat=entity.position)
        _, entity.loss = self.evaluate(features=features, labels=labels)

        # Evaluate pbest
        self.model.set_weights_flat(weights_flat=entity.pbest)
        _, pbest_loss = self.evaluate(features=features, labels=labels)

        if entity.loss < pbest_loss:
            entity.pbest.assign(entity.position)

        # Evaluate ibest
        self.model.set_weights_flat(weights_flat=self.population.ibest)
        _, ibest_loss = self.evaluate(features=features, labels=labels)

        if entity.loss < ibest_loss:
            self.population.ibest.assign(entity.position)

        # Evaluate gbest
        self.model.set_weights_flat(weights_flat=self.population.gbest)
        _, gbest_loss = self.evaluate(features=features, labels=labels)

        if entity.loss < gbest_loss:
            self.population.gbest.assign(entity.position)

        return entity.loss, entity.pbest_loss, self.population.ibest_loss, self.population.loss

    def __call__(self,
                 features: tf.Tensor,
                 labels: tf.Tensor,
                 step: int) -> Tuple[tf.Tensor, tf.Tensor]:
        for j, entity in enumerate(self.population.entities):
            # Get the selected heuristic
            k, heuristic = self.get_heuristic(j)

            # Prerequisite for analytical methods like SGD
            gradient = self.get_gradient(features=features, labels=labels)
            gradient_flat = flatten(x=gradient)

            # Set gradient
            entity.gradient = gradient_flat

            # Apply heuristics to available data
            self.apply_heuristic(
                heuristic=heuristic,
                entity=entity,
                population=self.population,
                step=step
            )

            # Set ibest to initial entity on new iteration
            # TODO: Is this code still needed?
            if j == 0:
                self.ibest.assign(entity.position)

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

        # TODO: Move to heuristic?
        # Update
        # Check if burn-in is complete
        if step < self.burn_in:
            self.select()
        else:
            # Check for re-analysis
            if step % self.reanalysis == 0:
                self.heuristic(
                    alpha=self.alpha,
                    beta=self.beta,
                    gamma1=self.gamma1,
                    gamma0=self.gamma0,
                    log=self.log
                )

            # Check for reselection
            if step % self.reselection == 0:
                self.select()

            # Forget factor
            if step > self.replay:
                self.log.prune(step=step - self.replay)

        # Evaluate current position
        self.model.set_weights_flat(weights_flat=self.gbest)
        logits, loss = self.evaluate(features=features, labels=labels)
        self.population.loss = loss

        return logits, loss
