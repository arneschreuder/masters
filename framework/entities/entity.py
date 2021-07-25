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

import tensorflow as tf
from framework.initialisers.glorot_uniform import GlorotUniform
from framework.initialisers.initialiser import Initialiser
from framework.initialisers.zeros import Zeros
from framework.neural_networks.neural_network import NeuralNetwork


class Entity:
    """
    A class that represents the physical properties of a candidate solution.
    This class is often used in swarm-based optimisation techniques, but
    is a useful general container of properties related to physics-based movements.

    Attributes
    ----------
    shape: tf.TensorShape
        The dimensionality of the entity. Default = None
    position_initialiser: Initialiser
        The initialiser used for the entity's position. Default = None
    velocity_initialiser: Initialiser
        The initialiser used for the entity's velocity. Default = None
    state_initialiser: Initialiser
            The initialiser used to initialise the state. Default = None
    position: tf.Variable
        The entity's position. This is often referred to as a candidate solution.
        Default = None
    velocity: tf.Variable
        The entity's velocity. Default = None
    state: tf.Variable
        The state of the gradient accumulator. Default = None
    """
    shape: tf.TensorShape = None

    position_initialiser: Initialiser = None
    velocity_initialiser: Initialiser = None
    state_initialiser: Initialiser = None

    position: tf.Variable = None
    velocity: tf.Variable = None
    state: tf.Variable = None

    model: NeuralNetwork = None

    def __init__(self,
                 position_initialiser: Initialiser = GlorotUniform(),
                 velocity_initialiser: Initialiser = Zeros(),
                 state_initialiser: Initialiser = Zeros()):
        """
        Parameters
        ----------
        position_initialiser: Initialiser
            The initialiser used for the entity's position. Default = GlorotUniform
        velocity_initialiser: Initialiser
            The initialiser used for the entity's velocity. Default = Zeros
        state_initialiser: Initialiser
            The initialiser used to initialise the state. Default = Zeros()
        """
        self.shape = None
        self.position_initialiser = position_initialiser
        self.velocity_initialiser = velocity_initialiser
        self.state_initialiser = state_initialiser
        self.position = None
        self.velocity = None
        self.state = None
        self.model = None

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

    def initialise(self):
        """
        This function actually initialises values for the entity's
        properties.
        """
        # Position, velocity and state are tf.Variables because their values
        # will be changed by other functions.
        self.position = tf.Variable(
            initial_value=self.position_initialiser(shape=self.shape)
        )
        self.velocity = tf.Variable(
            initial_value=self.velocity_initialiser(shape=self.shape)
        )
        self.state = tf.Variable(
            initial_value=self.state_initialiser(shape=self.shape)
        )
