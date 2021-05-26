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
from framework.activations.activation import Activation
from framework.initialisers.glorot_uniform import GlorotUniform
from framework.initialisers.initialiser import Initialiser
from framework.initialisers.zeros import Zeros
from framework.layers.layer import Layer


class Dense(Layer):
    """
    The Fully-Connected topological layer as with optional activation.
    This configuration is refered to as a Dense layer.

    Attributes
    ----------
    shape: tf.TensorShape
        The dimensionality of the layer. Default = None
    activation: Activation
        The activation function to use. Default = None
    kernel_initialiser: Initialiser
        The initialiser used to initialise the kernel variable. Default = None
    biases_initialiser: Initialiser
        The initialiser used to initialise the biases variable. Default = None
    kernel: tf.Variable
        The kernel kernel. Default = None
    biases: tf.Variable
        The kernel biases. Default = None
    """
    shape: tf.TensorShape = None
    activation: Activation = None
    kernel_initialiser: Initialiser = None
    biases_initialiser: Initialiser = None
    kernel: tf.Variable = None
    biases: tf.Variable = None

    def __init__(self,
                 shape: tf.TensorShape,
                 activation: Activation = None,
                 kernel_initialiser: Initialiser = GlorotUniform(),
                 biases_initialiser: Initialiser = Zeros()):
        """
        Parameters
        ----------
        shape: tf.TensorShape
            The dimensionality of the layer. Default = None
        activation: Activation
            The activation function to use. Default = None
        kernel_initialiser: Initialiser
            The initialiser used to initialise the kernel variable. Default = None
        biases_initialiser: Initialiser
            The initialiser used to initialise the biases variable. Default = None
        """
        super(Dense, self).__init__()

        # Shape & Activation
        self.shape = shape
        self.activation = activation

        # Initialisers
        self.kernel_initialiser = kernel_initialiser
        self.biases_initialiser = biases_initialiser

        # State
        self.kernel = None
        self.biases = None

    def get_weights(self) -> List[tf.Variable]:
        """
        Returns
        -------
        List[tf.Variable]
            List of weights that essentially contains kernel and biases
        """
        return [self.kernel, self.biases]

    def set_weights(self, weights: List[tf.Tensor]) -> None:
        """
        Parameters
        -------
        weights: List[tf.Tensor]
            New weights and biases presented as index 0 and 1 in a list of params
        """
        self.kernel.assign(weights[0])
        self.biases.assign(weights[1])

    def initialise(self):
        """
        Initialisation function. Initialises weight and biases.
        """
        # State
        self.kernel = tf.Variable(
            initial_value=self.kernel_initialiser(shape=self.shape)
        )
        self.biases = tf.Variable(
            initial_value=self.kernel_initialiser(shape=[1, self.shape[1]])
        )

    def __call__(self, features: tf.Tensor) -> tf.Tensor:
        """
        Invocation function.

        Parameters
        ----------
        features: tf.Tensor
            Input data.

        Returns
        ----------
        tf.Tensor
            Output data.  
        """

        net = features @ self.kernel + self.biases

        # Activation can be optional.
        # Consider where softmax is used as prediction layer.
        # Then no activation is needed in last layer during training.
        if self.activation is None:
            return net

        return self.activation(features=net)
