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
from framework.hyper_parameters.adagrad import Adagrad as AdagradParameters


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
    params: AdagradParameters
        Hyper Parameters. Default = None
    """
    params: AdagradParameters = None

    def __init__(self,
                 params: AdagradParameters = AdagradParameters()):
        """
        Parameters
        ----------
        params: AdagradParameters
            Hyper parameters. Default = AdagradParameters()
        """
        super(Adagrad, self).__init__()
        self.params = params

    @staticmethod
    def get_learning_rate(params: AdagradParameters, step: int) -> float:
        """
        Gets the learning rate.

        Parameters
        ----------
        params: AdagradParameters
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
    def calculate_sum_gradient_squared(entity: Entity):
        """
        Calculates the sum of the gradients squared.

        Parameters
        ----------
        entity: Entity
            The entity containing the state.
        """
        # Update sum gradients squared
        entity.sum_gradient_squared.assign_add(
            tf.math.pow(entity.gradient, 2)
        )

    @staticmethod
    def calculate_position_delta(lr: float, params: AdagradParameters, entity: Entity):
        """
        Calculates the position delta.

        Parameters
        ----------
        lr: float
            The learning rate.
        params: AdagradParameters
            Hyper parameters.
        entity: Entity
            The entity containing the state.
        """
        # Update position_delta
        entity.position_delta.assign(
            -lr*(
                1 /
                tf.math.sqrt(
                    entity.sum_gradient_squared +
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
        lr = Adagrad.get_learning_rate(params=self.params, step=step)

        # Update sum_gradient_squared
        Adagrad.calculate_sum_gradient_squared(
            entity=entity
        )

        # Update position_delta
        Adagrad.calculate_position_delta(
            lr=lr,
            params=self.params,
            entity=entity
        )

        # Update velocity
        Adagrad.calculate_velocity(entity=entity)

        # Update position
        Adagrad.calculate_position(entity=entity)
