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


class Momentum(Heuristic):
    """
    The Momentum Stochastic Gradient Descent concrete heuristic.
    Momentum is a varient of SGD, whereby the
    gradient steps are smoothed out by adding a momentum term.

    Attributes
    ----------
    learning_rate: float
        The step size. Default = None
    momentum: float
        Momentum hyper-heuristic. Default = None
    """
    learning_rate: float = None
    momentum: float = None

    def __init__(self,
                 learning_rate: float = 0.1,
                 momentum: float = 0.9):
        """
        Parameters
        ----------
        learning_rate: float
            The step size. Default = 0.1
        momentum: float
            Momentum hyper-heuristic. Default = 0.9
        """
        super(Momentum, self).__init__()
        self.learning_rate = learning_rate
        self.momentum = momentum

    def __call__(self,
                 position: tf.Variable,
                 velocity: tf.Variable,
                 gradient: tf.Tensor) -> None:
        """
        The heuristic step operation.

        Parameters
        ----------
        position: tf.Variable
            The entity's position which is the candidate solution to the model
        velocity: tf.Variable
            The entity's velocity
        gradient: tf.Tensor
            The gradient to apply
        """
        if self.momentum == 0.0:
            position.assign_add(-self.learning_rate*gradient)
        else:
            velocity.assign(
                self.momentum*velocity - self.learning_rate*gradient
            )
            position.assign_add(velocity)
