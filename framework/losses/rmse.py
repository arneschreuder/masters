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


class RMSE(Loss):
    """
    The Root Mean Squared Error concrete implementation of the loss function class.
    """

    def __init__(self):
        super(RMSE, self).__init__(
            instance=tf.keras.losses.MeanSquaredError()
        )

    def call(self, y_true: tf.Tensor, y_pred: tf.Tensor):
        """
        Calculated the RMSE.

        Parameters
        ----------
         y_true: tf.Tensor
            The target value. Default = None.
         y_pred: tf.Tensor
            The predicted value. Default = None.

        Returns
        -------
        tf.Tensor
            The RMSE
        """
        return tf.sqrt(self.instance(y_true, y_pred))
