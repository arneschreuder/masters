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

import tensorflow as tf
from framework.initialisers.glorot_uniform import GlorotUniform
from framework.initialisers.initialiser import Initialiser
from framework.initialisers.zeros import Zeros
from framework.logger.logger import Logger
from framework.neural_networks.neural_network import NeuralNetwork


class Entity:
    """
    A class that represents the physical properties of a candidate solution.
    This class is often used in swarm-based optimisation techniques, but
    is a useful general container of properties related to physics-based movements.

    Attributes
    ----------
    model: NeuralNetwork
        The model. Default = None
    @TODO
    """
    # Model
    model: NeuralNetwork = None

    # Shape
    shape: tf.TensorShape = None

    # Basic physics
    position: tf.Variable = None
    velocity: tf.Variable = None
    gradient: tf.Variable = None

    # State parameters
    position_delta: tf.Variable = None
    sum_gradient_squared: tf.Variable = None
    E_position_delta_variance: tf.Variable = None
    E_gradient_mean: tf.Variable = None
    E_gradient_variance: tf.Variable = None

    # Bests
    pbest: tf.Variable = None

    # Performance
    loss: tf.Variable = None
    pbest_loss: tf.Variable = None

    # Initialisers
    position_initialiser: Initialiser = None

    # Logger
    logger: Logger = None

    # Name
    name: str = None

    def __init__(self, position_initialiser: Initialiser = GlorotUniform(), name="entity"):
        """
        Parameters
        ----------
        position_initialiser: Initialiser
            The initialiser used for the entity's position. Default = GlorotUniform
        """
        # Model
        self.model = None

        # Shape
        self.shape = None

        # Basic physics
        self.position = None
        self.velocity = None
        self.gradient = None

        # State parameters
        self.position_delta = None
        self.sum_gradient_squared = None
        self.E_position_delta_variance = None
        self.E_gradient_mean = None
        self.E_gradient_variance = None

        # Bests
        self.pbest = None

        # Performance
        self.loss = None
        self.pbest_loss = None

        # Initialisers
        self.position_initialiser = position_initialiser

        # Logger
        self.logger = None
        self.name = name

    def map_model(self, model: NeuralNetwork) -> None:
        """
        This function maps the model parameters' and sets
        the entity's dimensionality.

        Parameters
        ----------
        model: NeuralNetwork
            The model to map.
        """
        self.model = model

        # Set the dimensionality of the entity equal
        # to that of the models parameters as it is presented
        # as a flat tensor.
        parameters = model.get_weights_flat()
        self.shape = parameters.shape

    def set_logger(self, logger: Logger) -> None:
        self.logger = logger

    def initialise(self):
        """
        This function actually initialises values for the entity's
        properties.
        """
        zeros_initialiser = Zeros()

        # Physics
        self.position = tf.Variable(
            initial_value=self.position_initialiser(shape=self.shape)
        )
        self.velocity = tf.Variable(
            initial_value=zeros_initialiser(shape=self.shape)
        )
        # No initialiser for gradient, since this is retrieved

        # State
        self.position_delta = tf.Variable(
            initial_value=zeros_initialiser(shape=self.shape)
        )
        self.sum_gradient_squared = tf.Variable(
            initial_value=zeros_initialiser(shape=self.shape)
        )
        self.E_position_delta_variance = tf.Variable(
            initial_value=zeros_initialiser(shape=self.shape)
        )
        self.E_gradient_mean = tf.Variable(
            initial_value=zeros_initialiser(shape=self.shape)
        )
        self.E_gradient_variance = tf.Variable(
            initial_value=zeros_initialiser(shape=self.shape)
        )

        # Bests
        # Set pbest to initial position
        self.pbest = tf.Variable(initial_value=self.position)

        # No initialiser for loss or pbest_loss, since this is retrieved

    def log_state(self, step):
        log_level = int(os.getenv('LOG_LEVEL')
                        ) if os.getenv('LOG_LEVEL') is not None else 1

        if self.logger and log_level == 2:
            if self.position is not None:
                self.logger.log_distribution_results('{} position'.format(self.name),
                                                     result=self.position.numpy(), step=step)
            if self.velocity is not None:
                self.logger.log_distribution_results('{} velocity'.format(self.name),
                                                     result=self.velocity.numpy(), step=step)
            if self.gradient is not None:
                self.logger.log_distribution_results('{} gradient'.format(self.name),
                                                     result=self.gradient.numpy(), step=step)
            if self.position_delta is not None:
                self.logger.log_distribution_results('{} position_delta'.format(self.name),
                                                     result=self.position_delta.numpy(), step=step)
            if self.sum_gradient_squared is not None:
                self.logger.log_distribution_results('{} sum_gradient_squared'.format(self.name),
                                                     result=self.sum_gradient_squared.numpy(), step=step)
            if self.E_position_delta_variance is not None:
                self.logger.log_distribution_results('{} E_position_delta_variance'.format(self.name),
                                                     result=self.E_position_delta_variance.numpy(), step=step)
            if self.E_gradient_mean is not None:
                self.logger.log_distribution_results('{} E_gradient_mean'.format(self.name),
                                                     result=self.E_gradient_mean.numpy(), step=step)
            if self.E_gradient_variance is not None:
                self.logger.log_distribution_results('{} E_gradient_variance'.format(self.name),
                                                     result=self.E_gradient_variance.numpy(), step=step)
            if self.pbest is not None:
                self.logger.log_distribution_results('{} pbest'.format(self.name),
                                                     result=self.pbest.numpy(), step=step)
            if self.loss is not None:
                self.logger.log_scalar_results('{} loss'.format(self.name),
                                               result=self.loss.numpy(), step=step)
            if self.pbest_loss is not None:
                self.logger.log_scalar_results('{} pbest_loss'.format(self.name),
                                               result=self.pbest_loss.numpy(), step=step)
