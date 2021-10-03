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
from framework.hyper_parameters.adadelta import Adadelta as AdadeltaParameters


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
    params: AdadeltaParameters
        Hyper Parameters. Default = None
    """
    params: AdadeltaParameters = None

    def __init__(self,
                 params: AdadeltaParameters = AdadeltaParameters()):
        """
        Parameters
        ----------
        params: AdadeltaParameters
            Hyper parameters. Default = AdadeltaParameters()
        """
        super(Adadelta, self).__init__()
        self.params = params

    @staticmethod
    def get_learning_rate(params: AdadeltaParameters, step: int) -> float:
        """
        Gets the learning rate.

        Parameters
        ----------
        params: AdadeltaParameters
            Hyper parameters. Default = AdadeltaParameters()
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
    def calculate_E_gradient_variance(params: AdadeltaParameters, entity: Entity):
        """
        Calculates the expected (mean) gradient variance.

        Parameters
        ----------
        params: AdadeltaParameters
            Hyper parameters. Default = AdadeltaParameters()
        entity: Entity
            The entity containing the state.

        Returns
        -------
        float:
            The learning rate.
        """

        # Update E_gradient_variance
        entity.E_gradient_variance.assign(
            params.rho*entity.E_gradient_variance +
            (1-params.rho)*tf.math.pow(entity.gradient, 2)
        )

    @staticmethod
    def calculate_E_position_delta_variance(params: AdadeltaParameters, entity: Entity):
        # Update E_position_delta_variance
        entity.E_position_delta_variance.assign(
            params.rho*entity.E_position_delta_variance +
            (1-params.rho)*tf.math.pow(entity.position_delta, 2)
        )

    @staticmethod
    def calculate_position_delta(lr: float, params: AdadeltaParameters, entity: Entity):
        # Update position_delta
        entity.position_delta.assign(
            -lr*(
                tf.math.sqrt(
                    entity.E_position_delta_variance +
                    params.epsilon
                ) /
                tf.math.sqrt(
                    entity.E_gradient_variance +
                    params.epsilon
                )
            ) *
            entity.gradient
        )

    @staticmethod
    def calculate_velocity(entity: Entity):
        # Update velocity
        entity.velocity.assign(entity.position_delta)

    @staticmethod
    def calculate_position(entity: Entity):
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
        lr = Adadelta.get_learning_rate(params=self.params, step=step)

        # Update E_gradient_variance
        Adadelta.calculate_E_gradient_variance(
            params=self.params,
            entity=entity
        )

        # Update E_position_delta_variance
        Adadelta.calculate_E_position_delta_variance(
            params=self.params,
            entity=entity
        )

        # Update position_delta
        Adadelta.calculate_position_delta(
            lr=lr,
            params=self.params,
            entity=entity
        )

        # Update velocity
        Adadelta.calculate_velocity(entity=entity)

        # Update position
        Adadelta.calculate_position(entity=entity)
