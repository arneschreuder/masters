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
from typing import List, Tuple

import tensorflow as tf
from framework.entities.entity import Entity
from framework.heuristics.pso import PSO as PSOHeuristic
from framework.optimisers.optimiser import Optimiser
from framework.utilities.utilities import flatten, reshape


class PSO(Optimiser):
    """
    The Particle Swarm concrete Optimiser.

    Attributes
    ----------
    population: int
        The swarm size. Default = None
    entities: List[Entity]
        Entities in population. Default = None
    pbests: List[tf.Tensor]
        Personal best positions. Default = None
    gbest: tf.Tensor
        Global best position. Default = None

    """
    population: int = None
    entities: List[Entity] = None
    pbests: List[tf.Variable] = None
    gbest: tf.Variable = None

    def __init__(self,
                 population: int = 10,
                 inertia_weight: float = 0.729844,
                 social_control: float = 1.496180,
                 cognitive_control: float = 1.496180,
                 learning_rate: float = 1.0,
                 velocity_clip_min: float = -1.0,
                 velocity_clip_max: float = 1.0):
        """
        Parameters
        ----------
        population: int
            Population/swarm size. Default = 30
        inertia_weight: float
            The inertia weight (w). Default = 0.729844
        cognitive_control: float
            The cognative control (c1). Default = 1.496180
        social_control: float
            The social control (c2). Default = 1.496180
        learning_rate: float
            The step size. Default = 1.0
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
                learning_rate=learning_rate,
                velocity_clip_min=velocity_clip_min,
                velocity_clip_max=velocity_clip_max
            )
        )
        self.population = population
        self.entities = None
        self.pbests = None
        self.gbest = None

    def initialise(self):
        """
        Initialiser function.
        Creates the population by creating a swarm of entities.
        Each entity maps the model and initialises.
        PBest and GBest values are also created.
        """
        super(PSO, self).initialise()
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

        # Here we just initialise the gbest value to some random value
        weights = self.model.get_weights_flat()
        self.gbest = tf.Variable(initial_value=weights)

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

        # Evaluate gbest
        self.model.set_weights_flat(weights_flat=self.gbest)
        _, gbest_loss = self.evaluate(features=features, labels=labels)

        if loss < gbest_loss:
            self.gbest.assign(entity.position)

    def __call__(self,
                 features: tf.Tensor,
                 labels: tf.Tensor,
                 step: int) -> Tuple[tf.Tensor, tf.Tensor]:
        for entity, pbest in zip(self.entities, self.pbests):
            # Step
            self.heuristic(
                position=entity.position,
                velocity=entity.velocity,
                pbest=pbest,
                gbest=self.gbest
            )

            # Update pbest and gbest
            self.update_bests(
                features=features,
                labels=labels,
                entity=entity,
                pbest=pbest
            )

        # Evaluate current position
        self.model.set_weights_flat(weights_flat=self.gbest)
        logits, loss = self.evaluate(features=features, labels=labels)
        return logits, loss
