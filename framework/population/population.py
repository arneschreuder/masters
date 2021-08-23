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

from typing import List

import tensorflow as tf
from framework.entities.entity import Entity
from framework.neural_networks.neural_network import NeuralNetwork


class Population:
    # Population Size
    population_size: int = None

    # Entities
    entities: List[Entity] = None

    # Bests
    ibest: tf.Variable = None
    gbest: tf.Variable = None

    # Performance
    ibest_loss: tf.Variable = None
    loss: tf.Variable = None

    def __init__(self, population_size: int = 10):
        # Population Size
        self.population_size = population_size

        # Entities
        self.entities = None

        # Bests
        self.ibest = None
        self.gbest = None

        # Performance
        self.ibest_loss = None
        self.loss = None

    def initialise(self, model: NeuralNetwork):
        self.entities = []

        # Personal bests
        for i in range(self.population_size):
            entity = Entity()
            # This is required to determine the dimensionality of the model.
            entity.map_model(model)
            entity.initialise()

            # Set pbest to initial position
            pbest = tf.Variable(initial_value=entity.position)
            entity.pbest = pbest

            # Add entity to list
            self.entities.append(entity)

        # Here we just initialise the gbest value to some random value
        weights = model.get_weights_flat()
        self.ibest = tf.Variable(initial_value=weights)
        self.gbest = tf.Variable(initial_value=weights)
