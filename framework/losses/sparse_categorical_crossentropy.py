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
from framework.losses.loss import Loss


class SparseCategoricalCrossentropy(Loss):
    """
    The Sparse Categorical concrete implementation of the loss function class.
    The required labels as follows: [1 2 3 2 2 1 3]. 
    """

    def __init__(self):
        super(SparseCategoricalCrossentropy, self).__init__()

    def __call__(self, labels: tf.Tensor, logits: tf.Tensor) -> tf.Tensor:
        """
        Calculates the loss between logits and labels.

        Parameters
        ----------
        labels: tf.Tensor
            The target values to be predicted
        logits: tf.Tensor
            The predicted output of a Neural Network in logit format.

        Returns
        -------
        tf.Tensor
            The loss tensor.
        """
        return tf.reduce_mean(
            tf.losses.sparse_categorical_crossentropy(
                y_true=labels,
                y_pred=logits,
                from_logits=True
            )
        )