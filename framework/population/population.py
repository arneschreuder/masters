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

import os
from typing import List

import tensorflow as tf
from framework.entities.entity import Entity
from framework.logger.logger import Logger
from framework.neural_networks.neural_network import NeuralNetwork


class Population:
    """
    A class that represents the swarm in some population-based meta-heuristics.

    Attributes
    ----------
    population_size: int
        The size of the population/swarm.
    entities: List[Entity]
        The entities in the population.
    ibest: tf.Variable
        The iteration best entity.
    gbest: tf.Variable
        The global best entity.
    ibest_loss: tf.Variable
        The iteration best entity's loss.
    loss: tf.Variable
        The global best entity's loss.
    logger: Logger
        The logging instance to use.
    """
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

    # Logger
    logger: Logger = None

    def __init__(self, population_size: int = 10):
        """
        Parameters
        ----------
        population_size: int
            The size of the population/swarm.
        """
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

        # Logger
        self.logger = None

    def set_logger(self, logger: Logger) -> None:
        """
        Sets the logger instance.

        Parameters
        ----------
        logger: Logger
            The logging instance to use.
        """
        self.logger = logger

    def initialise(self, model: NeuralNetwork):
        """
        Initialises the population by randomly placing entities in the search space.
        The search space is determined by the model's shape.

        Parameters
        ----------
        model: NeuralNetwork
            The model.
        """
        self.entities = []

        # Personal bests
        for i in range(self.population_size):
            entity = Entity(id=i, name="entity#{}".format(i+1))
            # This is required to determine the dimensionality of the model.
            entity.map_model(model)
            entity.set_logger(logger=self.logger)
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

    def log_state(self, step):
        """
        Logs the population's state.

        Parameters
        ----------
        step: int
            The step number.
        """

        log_level = int(os.getenv('LOG_LEVEL')
                        ) if os.getenv('LOG_LEVEL') is not None else 1

        # Only log on log_level 2
        if self.logger and log_level == 2:
            self.logger.log_distribution_results('population ibest',
                                                 result=self.ibest.numpy(), step=step)
            self.logger.log_distribution_results('population gbest',
                                                 result=self.gbest.numpy(), step=step)

            self.logger.log_scalar_results('population ibest_loss',
                                           result=self.ibest_loss.numpy(), step=step)
            self.logger.log_scalar_results('population loss',
                                           result=self.loss.numpy(), step=step)
