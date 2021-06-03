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
from framework.heuristics.heuristic import Heuristic


class Adagrad(Heuristic):
    """
    The Adaptive Gradients concrete heuristic.
    Adagrad is a varient of SGD, where each feature dimension
    has its own learning rate and this learning rate is updated
    over time.

    Attributes
    ----------
    learning_rate: float
        The step size. Default = None
    epsilon: float
        Small error value. Default = None
    """
    learning_rate: float = None
    epsilon: float = None

    def __init__(self,
                 learning_rate: float = 0.1,
                 epsilon: float = 1e-7):
        """
        Parameters
        ----------
        learning_rate: float
            The step size. Default = 0.1
        epsilon: float
            Small error value. Default = 1e-7
        """
        super(Adagrad, self).__init__()
        self.learning_rate = learning_rate
        self.epsilon = epsilon

    def __call__(self,
                 position: tf.Tensor,
                 state: tf.Tensor,
                 gradient: tf.Tensor) -> None:
        """
        The heuristic step operation.

        Parameters
        ----------
        position: tf.Tensor
            The entity's position which is the candidate solution to the model
        state: tf.Tensor
            The state of the gradient accumulator
        gradient: tf.Tensor
            The gradient to apply
        """
        state.assign_add(tf.math.pow(gradient, 2))
        G = self.learning_rate/tf.math.sqrt(state + self.epsilon)
        position.assign_add(-G*gradient)
