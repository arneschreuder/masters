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
from framework.entities.entity import Entity
from framework.heuristics.heuristic import Heuristic
from framework.schedules.schedule import Schedule


class Adagrad(Heuristic):
    """
    The Adaptive Gradients concrete heuristic.
    Adagrad is a varient of SGD, where each feature dimension
    has its own learning rate and this learning rate is updated
    over time.

    See: https://github.com/tensorflow/tensorflow/blob/master/tensorflow/python/training/adagrad.py

    References:
    Adaptive Subgradient Methods for Online Learning and Stochastic Optimization
      :[Duchi et al., 2011](http://jmlr.org/papers/v12/duchi11a.html)
      ([pdf](http://www.jmlr.org/papers/volume12/duchi11a/duchi11a.pdf))

    Attributes
    ----------
    learning_rate: float or Schedule
        The step size. Default = None
    epsilon: float
        Small error value. Default = None
    """
    learning_rate: float or Schedule = None
    epsilon: float = None

    def __init__(self,
                 learning_rate: float or Schedule = 0.1,
                 epsilon: float = 1e-8):
        """
        Parameters
        ----------
        learning_rate: float
            The step size. Default = 0.1
        epsilon: float
            Small error value. Default = 1e-8
        """
        super(Adagrad, self).__init__()
        self.learning_rate = learning_rate
        self.epsilon = epsilon

    def __call__(self,
                 entity: Entity,
                 step: int) -> None:
        """
        The heuristic step operation.

        Parameters
        ----------
        position: tf.Tensor
            The entity's position which is the candidate solution to the model
        state: tf.Tensor
            The state of the gradient accumulator
        gradient: tf.Tensor
            The gradient to apply,
        step: int
            The iteration step number
        """
        # Get learning rate
        lr = self.learning_rate

        if type(self.learning_rate) is not float:
            lr = self.learning_rate(step=step)

        # Update sum gradients squared
        entity.state.sum_gradients_squared.assign_add(
            tf.math.pow(entity.state.gradient, 2)
        )

        # Update position
        G = lr/tf.math.sqrt(entity.state.sum_gradients_squared + self.epsilon)

        # Update acceleration
        entity.state.acceleration.assign(-G*entity.state.gradient)

        # Update velocity
        entity.state.velocity.assign(entity.state.acceleration)

        # Update delta position
        entity.state.delta_position = entity.state.velocity

        # Update position
        entity.state.position.assign_add(entity.state.delta_position)
