# The MIT License (MIT)
# =====================

# Copyright  Arné Schreuder

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
from framework.hyper_parameters.rmsprop import RMSProp as RMSPropParameters


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
    params: RMSPropParameters
        Hyper Parameters. Default = None
    """
    params: RMSPropParameters = None

    def __init__(self,
                 params: RMSPropParameters = RMSPropParameters()):
        """
        Parameters
        ----------
        params: RMSPropParameters
            Hyper parameters. Default = RMSPropParameters()
        """
        super(RMSProp, self).__init__()
        self.params = params

    @staticmethod
    def get_learning_rate(params: RMSPropParameters, step: int) -> float:
        """
        Gets the learning rate.

        Parameters
        ----------
        params: RMSPropParameters
            Hyper parameters.
        step: int
            The step number.

        Returns
        -------
        float:
            The learning rate.
        """
        # Get learning rate
        lr = params.learning_rate

        if type(params.learning_rate) is not float:
            lr = params.learning_rate(step=step)

        return lr

    @staticmethod
    def calculate_E_gradient_variance(params: RMSPropParameters, entity: Entity):
        """
        Calculates the expected (mean) gradient mean.

        Parameters
        ----------
        params: RMSPropParameters
            Hyper parameters.
        entity: Entity
            The entity containing the state.
        """
        # Update E_gradient_variance
        entity.E_gradient_variance.assign(
            params.rho*entity.E_gradient_variance +
            (1-params.rho)*tf.math.pow(entity.gradient, 2)
        )

    @staticmethod
    def calculate_position_delta(lr: float, params: RMSPropParameters, entity: Entity):
        """
        Calculates the position delta.

        Parameters
        ----------
        lr: float
            The learning rate.
        params: RMSPropParameters
            Hyper parameters.
        entity: Entity
            The entity containing the state.
        """
        # Update position_delta
        entity.position_delta.assign(
            -lr*(
                1 /
                tf.math.sqrt(
                    entity.E_gradient_variance +
                    params.epsilon
                )
            ) *
            entity.gradient
        )

    @staticmethod
    def calculate_velocity(entity: Entity):
        """
        Calculates the velocity.

        Parameters
        ----------
        entity: Entity
            The entity containing the state.
        """
        # Update velocity
        entity.velocity.assign(entity.position_delta)

    @staticmethod
    def calculate_position(entity: Entity):
        """
        Calculates the position.

        Parameters
        ----------
        entity: Entity
            The entity containing the state.
        """
        # Update position
        entity.position.assign_add(entity.velocity)

    def __call__(self,
                 entity: Entity,
                 step: int) -> None:
        """
        The heuristic step operation.

        Parameters
        ----------
        entity: Entity
            The entity which contains the candidate solution to the model
        step: int
            The iteration step number
        """
        # Get learning rate
        lr = RMSProp.get_learning_rate(params=self.params, step=step)

        # Update E_gradient_variance
        RMSProp.calculate_E_gradient_variance(
            params=self.params,
            entity=entity
        )

        # Update position_delta
        RMSProp.calculate_position_delta(
            lr=lr,
            params=self.params,
            entity=entity
        )

        # Update velocity
        RMSProp.calculate_velocity(entity=entity)

        # Update position
        RMSProp.calculate_position(entity=entity)
