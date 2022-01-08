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
from framework.neural_networks.neural_network import NeuralNetwork


class Feedforward(NeuralNetwork):
    """
    The Feedforward Neural Network concrete implementation.
    """

    def __init__(self, layers: List[Layer]):
        """
        Parameters
        ----------
        layers: List[Layer]
            The layers to construct the Neural Network
        """
        super(Feedforward, self).__init__(layers=layers)

    def __call__(self, features: tf.Tensor) -> tf.Tensor:
        """
        Invocation function. Executes the model.

        Parameters
        ----------
        features: tf.Tensor
            Input data.

        Returns
        ----------
        tf.Tensor
            Output data.  
        """

        output = features

        for layer in self.layers:
            output = layer(features=output)

        return output
