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
from framework.hyper_parameters.momentum import Momentum as MomentumParameters
from framework.schedules.schedule import Schedule


class Momentum(Heuristic):
    """
    The Momentum Stochastic Gradient Descent concrete heuristic.
    Momentum is a varient of SGD, whereby the
    gradient steps are smoothed out by adding a momentum term.

    Attributes
    ----------
    params: MomentumParameters
        Hyper Parameters. Default = None
    """
    params: MomentumParameters = None

    def __init__(self,
                 params: MomentumParameters = MomentumParameters()):
        """
        Parameters
        ----------
        params: MomentumParameters
            Hyper parameters. Default = MomentumParameters()
        """
        super(Momentum, self).__init__()
        self.params = params

    @staticmethod
    def get_learning_rate(params: MomentumParameters, step: int) -> float:
        # Get learning rate
        lr = params.learning_rate

        if type(params.learning_rate) is not float:
            lr = params.learning_rate(step=step)

        return lr

    @staticmethod
    def calculate_E_gradient_mean(params: MomentumParameters, entity: Entity):
        # Update E_gradient_mean
        entity.E_gradient_mean.assign(
            params.momentum*entity.E_gradient_mean +
            (1-params.momentum)*entity.gradient
        )

    @staticmethod
    def calculate_position_delta(lr: float, entity: Entity):
        # Update position_delta
        entity.position_delta.assign(-lr*entity.E_gradient_mean)

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
        lr = Momentum.get_learning_rate(params=self.params, step=step)

        # Calculate E_gradient_mean
        Momentum.calculate_E_gradient_mean(
            params=self.params,
            entity=entity
        )

        # Update position_delta
        Momentum.calculate_position_delta(
            lr=lr,
            entity=entity
        )

        # Update velocity
        Momentum.calculate_velocity(entity=entity)

        # Update position
        Momentum.calculate_position(entity=entity)
