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

import tensorflow as tf
import tensorflow_probability as tfp


class Distribution:
    """
    The base class for all probability distributions.
    This class is essentially just a wrapper around
    tfp.distributions.Distribution, but is provided to make 
    the framework "complete"

    Attributes
    ----------
    instance: tfp.distributions.Distribution
        The probability distribution instance. Default = None

    """
    instance: tfp.distributions.Distribution = None

    def __init__(self, instance: tfp.distributions.Distribution):
        """
        Parameters
        ----------
            instance: tfp.distributions.Distribution
        The probability distribution instance. Default = None
        """
        self.instance = instance

    def __call__(self, shape: tf.TensorShape = []) -> tf.Tensor:
        """
        The sampling method. Gets a sample from the underlying
        probability distribution.

        Parameters
        ----------
        shape: tf.TensorShape
            The dimensionality of the sample. Default = []

        Returns
        -------
        The sampled tensor
        """
        return self.instance.sample(sample_shape=shape)
