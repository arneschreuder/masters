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


class Adam(Heuristic):
    """
    The Adaptive Moements concrete heuristic.
    The gist of RMSprop is to:
                - Maintain a moving (discounted) average of the square of gradients
                - Divide the gradient by the root of this average
                This implementation of RMSprop uses plain momentum, not Nesterov momentum.


    See: https://github.com/keras-team/keras/blob/master/keras/optimizer_v2/adam.py#L24-L243

    Reference:
    - [Kingma et al., 2014](http://arxiv.org/abs/1412.6980)
    - [Reddi et al., 2018](
        https://openreview.net/pdf?id=ryQu7f-RZ) for `amsgrad`.

    Attributes
    ----------
    learning_rate: float or Schedule
        The step size. Default = None
    beta1: float
        Decay rate for the first moment. Default = None
    beta2: float
        Decay rate for the second moment. Default = None
    epsilon: float
        Small error value. Default = None
    """
    learning_rate: float or Schedule = None
    beta1: float = None
    beta2: float = None
    epsilon: float = None

    def __init__(self,
                 learning_rate: float or Schedule = 0.001,
                 beta1: float = 0.9,
                 beta2: float = 0.9,
                 epsilon: float = 1e-7):
        """
        Parameters
        ----------
        learning_rate: float
            The step size. Default = 0.001
        beta1: float
        Decay rate for the first moment. Default = 0.9
    beta2: float
        Decay rate for the second moment. Default = 0.999
        epsilon: float
            Small error value. Default = 1e-7
        """
        super(Adam, self).__init__()
        self.learning_rate = learning_rate
        self.beta1 = beta1
        self.beta2 = beta2
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

            # Update E_gradient_mean
        entity.E_gradient_mean.assign(
            self.beta1*entity.E_gradient_mean +
            (1-self.beta1)*entity.gradient
        )

        # Update E_gradient_variance
        entity.E_gradient_variance.assign(
            self.beta2*entity.E_gradient_variance +
            (1-self.beta2)*tf.math.pow(entity.gradient, 2)
        )

        # Bias correct gradient_mean
        bias_corrected_E_gradient_mean = entity.E_gradient_mean / \
            (1-self.beta1)

        # Bias correct gradient_variance
        bias_corrected_E_gradient_variance = entity.E_gradient_variance / \
            (1-self.beta2)

        # Update position_delta
        entity.position_delta.assign(
            -lr*(
                1 /
                tf.math.sqrt(
                    bias_corrected_E_gradient_variance +
                    self.epsilon
                )
            ) *
            bias_corrected_E_gradient_mean
        )

        # Update velocity
        entity.velocity.assign(entity.position_delta)

        # Update position
        entity.position.assign_add(entity.velocity)
