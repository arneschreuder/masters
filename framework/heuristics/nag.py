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
from framework.schedules.schedule import Schedule


class NAG(Heuristic):
    """
    The Nesterov Adaptive Gradients concrete heuristic.

    Attributes
    ----------
    learning_rate: float or Schedule
        The step size. Default = None
    momentum: float
        Momentum hyper-heuristic. Default = None
    nesterov: bool
        Flag to use nesterov update rule. Default = None
    """
    learning_rate: float or Schedule = None
    momentum: float = None
    nesterov: bool = None

    def __init__(self,
                 learning_rate: float or Schedule = 0.1,
                 momentum: float = 0.9,
                 nesterov: bool = True):
        """
        Parameters
        ----------
        learning_rate: float or Schedule
            The step size. Default = 0.1
        momentum: float
            Momentum hyper-heuristic. Default = 0.9
        nesterov: bool
            Flag to use nesterov update rule. Default = True
        """
        super(NAG, self).__init__()
        self.learning_rate = learning_rate
        self.momentum = momentum
        self.nesterov = nesterov

    def __call__(self,
                 position: tf.Variable,
                 velocity: tf.Variable,
                 gradient: tf.Tensor,
                 step: int) -> None:
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
        step: int
            The iteration step number
        """
        # Get learning rate
        lr = self.learning_rate

        if type(self.learning_rate) is not float:
            lr = self.learning_rate(step=step)

        # Update position and velocity
        if self.momentum == 0.0:
            position.assign_add(-lr*gradient)
        else:
            velocity.assign(
                self.momentum*velocity - lr*gradient
            )

            if self.nesterov:
                position.assign_add(
                    self.momentum*velocity - lr*gradient
                )
            else:
                position.assign_add(velocity)
