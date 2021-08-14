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


class RMSProp(Heuristic):
    """
    The Root Mean Squared Propogation concrete heuristic.
    The gist of RMSprop is to:
                - Maintain a moving (discounted) average of the square of gradients
                - Divide the gradient by the root of this average
                This implementation of RMSprop uses plain momentum, not Nesterov momentum.


    See: https://github.com/tensorflow/tensorflow/blob/v2.5.0/tensorflow/python/keras/optimizer_v2/rmsprop.py#L32-L296

    Reference:
    - [Hinton, 2012](
      http://www.cs.toronto.edu/~tijmen/csc321/slides/lecture_slides_lec6.pdf)

    Attributes
    ----------
    learning_rate: float or Schedule
        The step size. Default = None
    rho: float
        Decay rate. Default = None
    epsilon: float
        Small error value. Default = None
    """
    learning_rate: float or Schedule = None
    rho: float = None
    epsilon: float = None

    def __init__(self,
                 learning_rate: float or Schedule = 0.1,
                 rho: float = 0.95,
                 epsilon: float = 1e-8):
        """
        Parameters
        ----------
        learning_rate: float
            The step size. Default = 0.1
        rho: float
            Decay rate. Default = 0.95
        epsilon: float
            Small error value. Default = 1e-8
        """
        super(RMSProp, self).__init__()
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

        # # Update state
        # state.assign(
        #     self.rho*state +
        #     (1.0 - self.rho) * tf.math.pow(gradient, 2)
        # )

        # # Update position
        # G = lr/tf.math.sqrt(state + self.epsilon)
        # position.assign_add(-G*gradient)

        # Update sum gradients squared
        entity.state.E_gradients_squared.assign(
            self.rho*entity.state.E_gradients_squared +
            (1-self.rho)*tf.math.pow(entity.state.gradient, 2)
        )

        # Update position
        G = lr/tf.math.sqrt(entity.state.E_gradients_squared + self.epsilon)

        # Update acceleration
        entity.state.acceleration.assign(-G*entity.state.gradient)

        # Update velocity
        entity.state.velocity.assign(entity.state.acceleration)

        # Update delta position
        entity.state.delta_position.assign(entity.state.velocity)

        # Update position
        entity.state.position.assign_add(entity.state.delta_position)
