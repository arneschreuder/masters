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


class Metric:
    """
    The base class for metrics. 
    """

    def __init__(self,
                 instance: tf.keras.metrics.Metric,
                 name: str):
        """
        Parameters
        ----------
        instance: tf.keras.metrics.Metric
            The metric instance
        name: str
            The name to give the metric.
            This is stored in the event logs as metric title.
        """
        self.instance = instance
        self.name = name

    def __call__(self, labels: tf.Tensor, logits: tf.Tensor) -> None:
        """
        Updates the state of the metric instance.

        Parameters
        ----------
        labels: tf.Tensor
            The target values to be predicted
        logits: tf.Tensor
            The predicted output of a Neural Network in logit format.
        """
        self.instance.update_state(
            y_true=labels,
            y_pred=logits
        )

    def result(self) -> float:
        """
        Gets the metric result

        Params
        ------
        float
            The metric result
        """
        return self.instance.result().numpy()

    def reset(self) -> None:
        """
        Resets the metric instance state
        """
        self.instance.reset_states()
