# The MIT License (MIT)
# =====================

# Copyright  Arné Schreuder

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
from framework.layers.layer import Layer
from framework.utilities.utilities import flatten, reshape


class NeuralNetwork:
    """
    The base class for Neural Networks.

    Attributes
    ----------
    layers: List[Layer]
        The layers of the Neural Network.
        Can contain trainable variables and hyper-weights.
        Can also contain an optional activation function.
        Default = None.
    """
    layers: List[Layer] = None

    def __init__(self, layers: List[Layer]):
        """
        Parameters
        ----------
        layers: List[Layer]
            The layers to construct the Neural Network
        """
        self.layers = layers

    def initialise(self) -> None:
        """
        Initialiser function. Initialises by iterating layers and 
        intialising each layer.
        """
        for layer in self.layers:
            layer.initialise()

    def get_shapes(self) -> List[tf.TensorShape]:
        """
        Gets all the layers' shapes and bundles them together in a list.

        Returns
        -------
        List[tf.TensorShape]
            List of each layers shape.
        """
        shapes = []

        for layer in self.layers:
            shape = layer.shape
            shapes.append(shape)

        return shapes

    def get_weights(self) -> List[tf.Variable]:
        """
        Gets model trainable variables.

        Returns
        -------
        List[List[tf.Variable]]
            The model's trainable variables in a list.
        """
        weights = []

        for layer in self.layers:
            p = layer.get_weights()
            weights.append(p)

        return weights

    def set_weights(self, weights: List[List[tf.Variable]]) -> None:
        """
        Sets the model's trainable variables.

        Parameters
        ----------
        weights: List[List[tf.Variable]]
            The weights to use for the model's trainable variables
        """
        for layer, w in zip(self.layers, weights):
            layer.set_weights(weights=w)

    def get_weights_flat(self) -> tf.Tensor:
        """
        Gets the model's trainable variables in a single flat tensor.

        Returns
        -------
        tf.Tensor
            The resulting 1-D tensor containing the
            flattened model trainable variables.
        """
        weights = self.get_weights()
        return flatten(x=weights)

    def set_weights_flat(self, weights_flat: tf.Tensor) -> None:
        """
        Sets the model's trainable variables by means of a single flat tensor.

        Parameters
        -------
        weights_flat: tf.Tensor
            The 1-D tensor containing the
            flattened model trainable variables to be assigned.
        """
        shapes = self.get_shapes()
        weights = reshape(x_flat=weights_flat, shapes=shapes)
        self.set_weights(weights=weights)
