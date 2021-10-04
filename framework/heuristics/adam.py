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
from framework.hyper_parameters.adam import Adam as AdamParameters


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
    params: AdamParameters
        Hyper Parameters. Default = None
    """
    params: AdamParameters = None

    def __init__(self,
                 params: AdamParameters = AdamParameters()):
        """
        Parameters
        ----------
        params: AdamParameters
            Hyper parameters. Default = AdamParameters()
        """
        super(Adam, self).__init__()
        self.params = params

    @staticmethod
    def get_learning_rate(params: AdamParameters, step: int) -> float:
        """
        Gets the learning rate.

        Parameters
        ----------
        params: AdamParameters
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
    def calculate_E_gradient_mean(params: AdamParameters, entity: Entity):
        """
        Calculates the expected (mean) gradient mean.

        Parameters
        ----------
        params: AdamParameters
            Hyper parameters.
        entity: Entity
            The entity containing the state.
        """
        # Update E_gradient_mean
        entity.E_gradient_mean.assign(
            params.beta1*entity.E_gradient_mean +
            (1-params.beta1)*entity.gradient
        )

    @staticmethod
    def calculate_E_gradient_variance(params: AdamParameters, entity: Entity):
        """
        Calculates the expected (mean) gradient variance.

        Parameters
        ----------
        params: AdamParameters
            Hyper parameters.
        entity: Entity
            The entity containing the state.
        """
        # Update E_gradient_variance
        entity.E_gradient_variance.assign(
            params.beta2*entity.E_gradient_variance +
            (1-params.beta2)*tf.math.pow(entity.gradient, 2)
        )

    @staticmethod
    def calculate_bias_corrected_E_gradient_mean(params: AdamParameters, entity: Entity) -> tf.Tensor:
        """
        Applies bias correction to the expected (mean) gradient mean.

        Parameters
        ----------
        params: AdamParameters
            Hyper parameters.
        entity: Entity
            The entity containing the state.
        """
        # Bias correct gradient_mean
        bias_corrected_E_gradient_mean = entity.E_gradient_mean / \
            (1-params.beta1)

        return bias_corrected_E_gradient_mean

    @staticmethod
    def calculate_bias_corrected_E_gradient_variance(params: AdamParameters, entity: Entity) -> tf.Tensor:
        """
        Applies bias correction to the expected (mean) gradient variance.

        Parameters
        ----------
        params: AdamParameters
            Hyper parameters.
        entity: Entity
            The entity containing the state.
        """
        # Bias correct gradient_variance
        bias_corrected_E_gradient_variance = entity.E_gradient_variance / \
            (1-params.beta2)

        return bias_corrected_E_gradient_variance

    @staticmethod
    def calculate_position_delta(lr: float,
                                 bias_corrected_E_gradient_variance: tf.Tensor,
                                 bias_corrected_E_gradient_mean: tf.Tensor,
                                 params: AdamParameters,
                                 entity: Entity):
        """
        Calculates the position delta.

        Parameters
        ----------
        lr: float
            The learning rate.
        bias_corrected_E_gradient_variance: tf.Tensor
            Bias corrected expected (mean) gradient variance.
        bias_corrected_E_gradient_mean: tf.Tensor
            Bias corrected expected (mean) gradient mean.
        params: AdamParameters
            Hyper parameters.
        entity: Entity
            The entity containing the state.
        """
        # Update position_delta
        entity.position_delta.assign(
            -lr*(
                1 /
                tf.math.sqrt(
                    bias_corrected_E_gradient_variance +
                    params.epsilon
                )
            ) *
            bias_corrected_E_gradient_mean
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
        lr = Adam.get_learning_rate(params=self.params, step=step)

        # Update E_gradient_mean
        Adam.calculate_E_gradient_mean(
            params=self.params,
            entity=entity
        )

        # Update E_gradient_variance
        Adam.calculate_E_gradient_variance(
            params=self.params,
            entity=entity
        )

        # Bias correct gradient_mean
        bias_corrected_E_gradient_mean = Adam.calculate_bias_corrected_E_gradient_mean(
            params=self.params,
            entity=entity
        )

        # Bias correct gradient_variance
        bias_corrected_E_gradient_variance = Adam.calculate_bias_corrected_E_gradient_variance(
            params=self.params,
            entity=entity
        )

        # Update position_delta
        Adam.calculate_position_delta(
            lr=lr,
            bias_corrected_E_gradient_variance=bias_corrected_E_gradient_variance,
            bias_corrected_E_gradient_mean=bias_corrected_E_gradient_mean,
            params=self.params,
            entity=entity
        )

        # Update velocity
        Adam.calculate_velocity(entity=entity)

        # Update position
        Adam.calculate_position(entity=entity)
