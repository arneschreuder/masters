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

from copy import deepcopy
from logging import log
from typing import List, Tuple

import tensorflow as tf
import tensorflow_probability as tfp
from framework.credit.credit import Credit
from framework.credit.ibest import IBest
from framework.distributions.beta import Beta
from framework.distributions.categorical import Categorical
from framework.distributions.dirichlet import Dirichlet
from framework.distributions.distribution import Distribution
from framework.entities.entity import Entity
from framework.heuristics.bhh import BHH as BHHHeuristic
from framework.heuristics.heuristic import Heuristic
from framework.heuristics.pso import PSO
from framework.heuristics.sgd import SGD
from framework.initialisers.initialiser import Initialiser
from framework.initialisers.ones import Ones
from framework.optimisers.optimiser import Optimiser
from framework.performance_log.performance_log import PerformanceLog
from framework.utilities.utilities import flatten


class BHH(Optimiser):
    population: int = None
    burn_in: int = None
    replay: int = None
    reselection: int = None
    reanalysis: int = None
    credit: List[Credit] = None

    alpha_initialiser: Initialiser = None
    beta_initialiser: Initialiser = None
    gamma_initialiser: Initialiser = None

    K: int = None
    J: int = None
    L: int = None

    # Concentrations
    alpha: tf.Tensor = None
    beta: tf.Tensor = None
    gamma1: tf.Tensor = None
    gamma0: tf.Tensor = None

    # Probability Distributions
    theta: Distribution = None
    phi: Distribution = None
    psi: Distribution = None

    # Selection probabilities
    p_H: tf.Tensor = None  # Prior
    p_EgH: tf.Tensor = None
    p_CgH: tf.Tensor = None
    p_HgEC: tf.Tensor = None  # Posterior

    # Selections
    l_HgEC: tf.Tensor = None
    HgEC: tf.Tensor = None

    # Instances
    heuristics: List[Heuristic] = None
    entities: List[Entity] = None
    pbests: List[tf.Variable] = None
    ibest: tf.Variable = None
    gbest: tf.Variable = None

    # Performance Log
    log: PerformanceLog = None

    def __init__(self,
                 population: int = 30,
                 burn_in: int = 10,
                 replay: int = 3,
                 reselection: int = 1,
                 reanalysis: int = 1,
                 credit: List[Credit] = [
                     IBest()
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
        self.population = population
        self.burn_in = burn_in
        self.replay = replay
        self.reselection = reselection
        self.reanalysis = reanalysis
        self.credit = credit

        self.alpha_initialiser = alpha_initialiser
        self.beta_initialiser = beta_initialiser
        self.gamma_initialiser = gamma_initialiser

        self.J = self.population
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
        self.entities = None
        self.pbests = None
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
        self.entities = []
        self.pbests = []

        # Personal bests
        for i in range(self.population):
            entity = Entity()
            # This is required to determine the dimensionality of the model.
            entity.map_model(self.model)
            entity.initialise()
            self.entities.append(entity)

            # Set pbest to initial position
            pbest = tf.Variable(initial_value=entity.position)
            self.pbests.append(pbest)

        # Here we just initialise the ibest and gbest value to some random value
        weights = self.model.get_weights_flat()
        self.ibest = tf.Variable(initial_value=weights)
        self.gbest = tf.Variable(initial_value=weights)

        self.initialise_probability_distributions()
        self.select()

    def initialise_probability_distributions(self):
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

        # Probability distributions
        self.theta = Dirichlet(concentration=self.alpha)
        self.phi = Dirichlet(concentration=self.beta)
        self.psi = Beta(concentration1=self.gamma1, concentration0=self.gamma0)

    def select(self):
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
        # TODO: LOG-SUM-EXP Trick!!!!
        self.p_HgEC = self.p_EgH * self.p_CgH * self.p_H

        # Likelihoods
        self.l_HgEC = Categorical(probabilities=self.p_HgEC)

        # Sampling
        self.HgEC = self.l_HgEC()

    def get_heuristic(self, j):
        selections = self.HgEC.numpy()
        k = selections[j]
        return k, self.heuristics[k]

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
                        position: tf.Variable,
                        velocity: tf.Variable,
                        gradient: tf.Tensor,
                        pbest: tf.Variable):
        if isinstance(heuristic, SGD):
            heuristic(
                position=position,
                velocity=velocity,
                gradient=gradient
            )
        elif isinstance(heuristic, PSO):
            heuristic(
                position=position,
                velocity=velocity,
                pbest=pbest,
                gbest=self.gbest
            )

    def update_bests(self,
                     features: tf.Tensor,
                     labels: tf.Tensor,
                     entity: Entity,
                     pbest: tf.Tensor
                     ):
        # Evaluate entity
        self.model.set_weights_flat(weights_flat=entity.position)
        _, loss = self.evaluate(features=features, labels=labels)

        # Evaluate pbest
        self.model.set_weights_flat(weights_flat=pbest)
        _, pbest_loss = self.evaluate(features=features, labels=labels)

        if loss < pbest_loss:
            pbest.assign(entity.position)
            pbest_loss = loss

        # Evaluate ibest
        self.model.set_weights_flat(weights_flat=self.ibest)
        _, ibest_loss = self.evaluate(features=features, labels=labels)

        if loss < ibest_loss:
            self.ibest.assign(entity.position)
            ibest_loss = loss

        # Evaluate gbest
        self.model.set_weights_flat(weights_flat=self.gbest)
        _, gbest_loss = self.evaluate(features=features, labels=labels)

        if loss < gbest_loss:
            self.gbest.assign(entity.position)
            gbest_loss = loss

        return loss, pbest_loss, ibest_loss, gbest_loss

    def __call__(self,
                 features: tf.Tensor,
                 labels: tf.Tensor,
                 step: int) -> Tuple[tf.Tensor, tf.Tensor]:
        for j, (entity, pbest) in enumerate(zip(self.entities, self.pbests)):
            # Get the selected heuristic
            k, heuristic = self.get_heuristic(j)

            # Prerequisite for analytical methods like SGD
            gradient = self.get_gradient(features=features, labels=labels)
            gradient_flat = flatten(x=gradient)

            # Apply heuristics to available data
            self.apply_heuristic(
                heuristic=heuristic,
                position=entity.position,
                velocity=entity.velocity,
                gradient=gradient_flat,
                pbest=pbest
            )

            # Set ibest to initial entity on new iteration
            if j == 0:
                self.ibest.assign(entity.position)

            # Update pbest and gbest
            loss, pbest_loss, ibest_loss, gbest_loss = self.update_bests(
                features=features,
                labels=labels,
                entity=entity,
                pbest=pbest
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

        # Update
        # Check if burn in is complete
        if step <= self.burn_in:
            self.initialise_probability_distributions()
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
                self.initialise_probability_distributions()
                self.select()

            # Forget factor
            if step > self.replay:
                self.log.prune(step=step - self.replay)

        # Evaluate current position
        self.model.set_weights_flat(weights_flat=self.gbest)
        logits, loss = self.evaluate(features=features, labels=labels)
        return logits, loss
