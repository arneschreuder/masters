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

from typing import Tuple

import tensorflow as tf
from framework.entities.entity import Entity
from framework.heuristics.ga import GA as GAHeuristic
from framework.hyper_parameters.ga import GA as GAParameters
from framework.optimisers.optimiser import Optimiser
from framework.population import Population


class GA(Optimiser):
    """
    The Genetic Algorithm Optimiser.

    Attributes
    ----------
    entity: Entity
        The entity that represents the candidate solution to the model.
        Default = None
    population: Population
        The population of entities that make up the swarm. Default = None.
    """
    population: Population = None

    def __init__(self, params: GAParameters = GAParameters()):
        """
        Parameters
        ----------
        params: GAParameters
            The hyper parameters. Default = GAParameters()
        """
        super(GA, self).__init__(
            heuristic=GAHeuristic(params=params)
        )
        self.population = Population(population_size=params.population_size)

    def initialise(self):
        """
        Initialiser function.
        Creates the population by creating a swarm of entities.
        Each entity maps the model and initialises.
        PBest and GBest values are also created.
        """
        super(GA, self).initialise()

        # Initialise population
        self.population.set_logger(logger=self.logger)
        self.population.initialise(model=self.model)

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
            # Step
            self.heuristic(
                features=features,
                labels=labels,
                loss_fn=self.loss_fn,
                entity=entity,
                j=j,
                population=self.population,
                step=step
            )

            # Update pbest and gbest
            self.update_bests(
                features=features,
                labels=labels,
                entity=entity
            )
            entity.log_state(step=step)

        # Evaluate current position
        self.model.set_weights_flat(weights_flat=self.population.gbest)
        logits, loss = self.evaluate(features=features, labels=labels)
        self.population.loss = loss
        self.population.log_state(step=step)

        return logits, loss
