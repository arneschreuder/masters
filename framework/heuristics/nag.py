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


from framework.entities.entity import Entity
from framework.heuristics.heuristic import Heuristic
from framework.hyper_parameters.nag import NAG as NAGParameters


class NAG(Heuristic):
    """
    The Nesterov Adaptive Gradients concrete heuristic.

    Attributes
    ----------
    params: NAGParameters
        Hyper Parameters. Default = None
    """
    params: NAGParameters = None

    def __init__(self,
                 params: NAGParameters = NAGParameters()):
        """
        Parameters
        ----------
        params: NAGParameters
            Hyper parameters. Default = NAGParameters()
        """
        super(NAG, self).__init__()
        self.params = params

    @staticmethod
    def get_learning_rate(params: NAGParameters, step: int) -> float:
        """
        Gets the learning rate.

        Parameters
        ----------
        params: NAGParameters
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
    def calculate_E_gradient_mean(lr: float, params: NAGParameters, entity: Entity):
        """
        Calculates the expected (mean) gradient mean.

        Parameters
        ----------
        params: NAGParameters
            Hyper parameters.
        entity: Entity
            The entity containing the state.
        """
        # Update E_gradient_mean
        entity.E_gradient_mean.assign(
            params.momentum*entity.E_gradient_mean -
            lr*entity.gradient
        )

    @staticmethod
    def calculate_position_delta(lr: float, params: NAGParameters, entity: Entity):
        """
        Calculates the position delta.

        Parameters
        ----------
        lr: float
            The learning rate.
        params: NAGParameters
            Hyper parameters.
        entity: Entity
            The entity containing the state.
        """
        # Update position_delta
        entity.position_delta.assign(
            params.momentum*entity.E_gradient_mean -
            lr*entity.gradient
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
        lr = NAG.get_learning_rate(params=self.params, step=step)

        # Calculate E_gradient_mean
        NAG.calculate_E_gradient_mean(
            lr=lr,
            params=self.params,
            entity=entity
        )

        # Update position_delta
        NAG.calculate_position_delta(
            lr=lr,
            params=self.params,
            entity=entity
        )

        # Update velocity
        NAG.calculate_velocity(entity=entity)

        # Update position
        NAG.calculate_position(entity=entity)
