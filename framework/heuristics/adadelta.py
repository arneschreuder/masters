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


class Adadelta(Heuristic):
    """
    The Adaptive Gradients (Delta) concrete heuristic.
    Adadelta is a varient of Adade where the decay of the learning rate is 
                controlled by only the last few gradients and not the entire gradient history.
    over time.

    See: https://github.com/tensorflow/tensorflow/blob/master/tensorflow/python/training/adadelta.py

    References:
    ADADELTA - An Adaptive Learning Rate Method:
      [Zeiler, 2012](http://arxiv.org/abs/1212.5701)
      ([pdf](http://arxiv.org/pdf/1212.5701v1.pdf))

    Attributes
    ----------
    learning_rate: float or Schedule
        The step size. Default = 1.0
    rho: float
        Decay rate. Default = None
    epsilon: float
        Small error value. Default = None
    """
    learning_rate: float or Schedule = None
    rho: float = None
    epsilon: float = None

    def __init__(self,
                 learning_rate: float or Schedule = 1.0,
                 rho: float = 0.95,
                 epsilon: float = 1e-7):
        """
        Parameters
        ----------
        rho: float
            Decay rate. Default = 0.95
        epsilon: float
            Small error value. Default = 1e-7
        """
        super(Adadelta, self).__init__()
        self.learning_rate = learning_rate
        self.rho = rho
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

        # Update E_gradient_variance
        entity.state.E_gradient_variance.assign(
            self.rho*entity.state.E_gradient_variance +
            (1-self.rho)*tf.math.pow(entity.state.gradient, 2)
        )

        # Update E_position_delta_variance
        entity.state.E_position_delta_variance.assign(
            self.rho*entity.state.E_position_delta_variance +
            (1-self.rho)*tf.math.pow(entity.state.position_delta, 2)
        )

        # Update position_delta
        entity.state.position_delta.assign(
            -lr*(
                tf.math.sqrt(
                    entity.state.E_position_delta_variance +
                    self.epsilon
                ) /
                tf.math.sqrt(
                    entity.state.E_gradient_variance +
                    self.epsilon
                )
            ) *
            entity.state.gradient
        )

        # Update velocity
        entity.state.velocity.assign(entity.state.position_delta)

        # Update position
        entity.state.position.assign_add(entity.state.velocity)
