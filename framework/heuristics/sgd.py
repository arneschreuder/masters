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
from framework.hyper_parameters.sgd import SGD as SGDParameters
from framework.schedules.schedule import Schedule


class SGD(Heuristic):
    """
    The Stochastic Gradient Descent concrete heuristic.

    Attributes
    ----------
    params: SGDParameters
        Hyper Parameters. Default = None
    """
    params: SGDParameters = None

    def __init__(self, params: SGDParameters = SGDParameters()):
        """
        Parameters
        ----------
        params: SGDParameters
            Hyper parameters. Default = SGDParameters()
        """
        super(SGD, self).__init__()
        self.params = params

    @staticmethod
    def prerequisites(params: SGDParameters, step: int) -> float or Schedule:
        # Get learning rate
        lr = params.learning_rate

        if type(params.learning_rate) is not float:
            lr = params.learning_rate(step=step)

        return lr

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
        # Get prerequisites
        lr = SGD.prerequisites(params=self.params, step=step)

        # Update position_delta
        entity.position_delta.assign(-lr*entity.gradient)

        # Update velocity
        entity.velocity.assign(entity.position_delta)

        # Update position
        entity.position.assign_add(entity.velocity)
