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
from framework.activations.activation import Activation


class LeakyReLU(Activation):
    """
    Implementation of the LeakyReLU activation function.

    Attributes
    -----------
    alpha: int
        A hyper-parameter to control the slope for x < 0
    """
    alpha: int = None

    def __init__(self, alpha: int = 0.3):
        """
        Parameters
        ----------
        alpha: int
            A hyper-parameter to control the slope for x < 0.
            Default = 0.3
        """
        super(LeakyReLU, self).__init__()
        self.alpha = alpha

    def __call__(self, features: tf.Tensor) -> tf.Tensor:
        """
        Parameters
        ----------
        features: tf.Tensor
            A tensor used as parameter to the activation function

        Returns
        ----------
        tf.Tensor
            The result of the activation
        """
        return tf.nn.leaky_relu(features=features, alpha=self.alpha)
