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
from framework.layers.layer import Layer
from framework.utilities.utilities import flatten, reshape


class NeuralNetwork:
    """
    The base class for Neural Networks.

    Attributes
    ----------
    layers: List[Layer]
        The layers of the Neural Network.
        Can contain trainable variables and hyper-parameters.
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

    def get_parameters(self) -> List[List[tf.Variable]]:
        """
        Gets model trainable variables.

        Returns
        -------
        List[List[tf.Variable]]
            The model's trainable variables in a list.
        """
        parameters = []

        for layer in self.layers:
            p = layer.get_parameters()
            parameters.append(p)

        return parameters

    def set_parameters(self, parameters: List[List[tf.Variable]]) -> None:
        """
        Sets the model's trainable variables.

        Parameters
        ----------
        parameters: List[List[tf.Variable]]
            The parameters to use for the model's trainable variables
        """
        for layer, p in zip(self.layers, parameters):
            layer.set_parameters(parameters=p)

    def get_parameters_flat(self) -> tf.Tensor:
        """
        Gets the model's trainable variables in a single flat tensor.

        Returns
        -------
        tf.Tensor
            The resulting 1-D tensor containing the
            flattened model trainable variables.
        """
        parameters = self.get_parameters()
        return flatten(parameters=parameters)

    def set_parameters_flat(self, parameters_flat: tf.Tensor) -> None:
        """
        Sets the model's trainable variables by means of a single flat tensor.

        Parameters
        -------
       parameters_flat: tf.Tensor
            The 1-D tensor containing the
            flattened model trainable variables to be assigned.
        """
        shapes = self.get_shapes()
        parameters = reshape(parameters_flat=parameters_flat, shapes=shapes)
        self.set_parameters(parameters=parameters)
