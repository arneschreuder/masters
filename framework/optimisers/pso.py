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
from typing import List

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
    population_size: int
        The swarm size. Default = None
    entities: List[Entity]
        Entities in population. Default = None
    pbests: List[tf.Tensor]
        Personal best positions. Default = None
    gbest: tf.Tensor
        Global best position. Default = None

    """
    population_size: int = None
    entities: List[Entity] = None
    pbests: List[tf.Variable] = None
    gbest: tf.Variable = None

    def __init__(self,
                 population_size: int = 30,
                 inertia_weight: float = 0.729844,
                 social_control: float = 1.496180,
                 cognitive_control: float = 1.496180,
                 learning_rate: float = 1.0,
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
        learning_rate: float
            The step size. Default = 1.0
        velocity_clip_min: float
            The velocity minimum bound. Default = -1.0
        velocity_clip_max: float
            The velocity maximum bound. Default = 1.0
        """
        super().__init__(
            heuristic=PSOHeuristic(
                inertia_weight=inertia_weight,
                social_control=social_control,
                cognitive_control=cognitive_control,
                learning_rate=learning_rate,
                velocity_clip_min=velocity_clip_min,
                velocity_clip_max=velocity_clip_max
            )
        )
        self.population_size = population_size
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
        for i in range(self.population_size):
            entity = Entity()
            # This is required to determine the dimensionality of the model.
            entity.map_model(self.model)
            entity.initialise()
            self.entities.append(entity)

            # Set pbest to initial position
            pbest = tf.Variable(initial_value=entity.position)
            self.pbests.append(pbest)

        # Here we just initialise the gbest value to some random value
        parameters = self.model.get_parameters_flat()
        self.gbest = tf.Variable(initial_value=parameters)

    def __call__(self, features, labels):
        for entity, pbest in zip(self.entities, self.pbests):
            self.heuristic(
                position=entity.position,
                velocity=entity.velocity,
                pbest=pbest,
                gbest=self.gbest
            )

            # TODO:
            # Assume asynchronous, so first run through all, get losses
            # Then only check and update pbest and gbest

            # TODO:
            # Evaluation must take in a solution, make it more generic

            # Evaluate entity
            self.model.set_parameters_flat(parameters_flat=entity.position)
            _, loss = self.evaluate(features=features, labels=labels)

            # Evaluate pbest
            self.model.set_parameters_flat(parameters_flat=pbest)
            _, pbest_loss = self.evaluate(features=features, labels=labels)

            # Evaluate pbest
            self.model.set_parameters_flat(parameters_flat=self.gbest)
            _, gbest_loss = self.evaluate(features=features, labels=labels)

            if loss < pbest_loss:
                pbest.assign(entity.position)

            if loss < gbest_loss:
                self.gbest.assign(entity.position)

        # Evaluate current position
        self.model.set_parameters_flat(parameters_flat=self.gbest)
        logits, loss = self.evaluate(features=features, labels=labels)
        return logits, loss
