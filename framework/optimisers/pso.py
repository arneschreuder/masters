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
from framework.heuristics.pso import PSO as PSOHeuristic
from framework.neural_networks.neural_network import NeuralNetwork
from framework.optimisers.optimiser import Optimiser
from framework.population import Population


class PSO(Optimiser):
    """
    The Particle Swarm concrete Optimiser.

    Attributes
    ----------
    population_size: int
        The population_size. Default = None
    population: Population
        The population. Default = None
    """
    population_size: int = None
    population: Population = None

    def __init__(self,
                 population_size: int = 10,
                 inertia_weight: float = 0.729844,
                 social_control: float = 1.496180,
                 cognitive_control: float = 1.496180,
                 velocity_clip_min: float = -1.0,
                 velocity_clip_max: float = 1.0):
        """
        Parameters
        ----------
        population_size: int
            Population/swarm size. Default = 30
        inertia_weight: float
            The inertia weight (w). Default = 0.729844
        cognitive_control: float
            The cognative control (c1). Default = 1.496180
        social_control: float
            The social control (c2). Default = 1.496180
        velocity_clip_min: float
            The velocity minimum bound. Default = -1.0
        velocity_clip_max: float
            The velocity maximum bound. Default = 1.0
        """
        super(PSO, self).__init__(
            heuristic=PSOHeuristic(
                inertia_weight=inertia_weight,
                social_control=social_control,
                cognitive_control=cognitive_control,
                velocity_clip_min=velocity_clip_min,
                velocity_clip_max=velocity_clip_max
            )
        )
        self.population_size = population_size
        self.population = Population(population_size=self.population_size)

    def initialise(self):
        """
        Initialiser function.
        Creates the population by creating a swarm of entities.
        Each entity maps the model and initialises.
        PBest and GBest values are also created.
        """
        super(PSO, self).initialise()

        # Initialise population
        self.population.initialise(model=self.model)

    def update_bests(self,
                     features: tf.Tensor,
                     labels: tf.Tensor,
                     entity: Entity,
                     pbest: tf.Variable):
        # Evaluate entity
        self.model.set_weights_flat(weights_flat=entity.position)
        _, entity.loss = self.evaluate(features=features, labels=labels)

        # Evaluate pbest
        self.model.set_weights_flat(weights_flat=pbest)
        _, pbest_loss = self.evaluate(features=features, labels=labels)

        if entity.loss < pbest_loss:
            entity.pbest.assign(entity.position)

        # Evaluate gbest
        self.model.set_weights_flat(weights_flat=self.population.gbest)
        _, gbest_loss = self.evaluate(features=features, labels=labels)

        if entity.loss < gbest_loss:
            self.population.gbest.assign(entity.position)

    def __call__(self,
                 features: tf.Tensor,
                 labels: tf.Tensor,
                 step: int) -> Tuple[tf.Tensor, tf.Tensor]:
        for entity in self.population.entities:
            # Step
            self.heuristic(
                entity=entity,
                population=self.population,
                step=step
            )

            # Update pbest and gbest
            self.update_bests(
                features=features,
                labels=labels,
                entity=entity,
                pbest=entity.pbest
            )

        # Evaluate current position
        self.model.set_weights_flat(weights_flat=self.population.gbest)
        logits, loss = self.evaluate(features=features, labels=labels)
        self.loss = loss

        return logits, loss
