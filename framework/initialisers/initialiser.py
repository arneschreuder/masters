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


class Initialiser:
    """
    The base class for tensor initialisers.
    This class is essentially just a wrapper around
    tf.initializers.Initialiser, but is provided to make 
    the framework "complete"

    Attributes
    ----------
    instance: tf.initializers.Initializer
        The initialiser instance. Default = None
    """
    instance: tf.initializers.Initializer = None

    def __init__(self, instance: tf.initializers.Initializer = None):
        """
        Parameters
        ----------
        instance: tf.initializers.Initializer
            The initialiser instance. Default = None
        """
        self.instance = instance

    def __call__(self, shape: tf.TensorShape) -> tf.Tensor:
        """
        Parameters
        ----------
        shape: tf.TensorShape
            The dimensionality of the tensor to be initialised

        Returns
        ----------
        tf.Tensor
            The initialised tensor
        """
        return self.instance(shape)
