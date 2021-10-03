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

from framework.hyper_parameters.parameters import Parameters
from framework.schedules.schedule import Schedule


class Adadelta(Parameters):
    """
    Hyper Parameters for Adadelta

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
                 learning_rate: float or Schedule = 1.0,
                 rho: float = 0.95,
                 epsilon: float = 1e-7):
        """
        Parameters
        ----------
        learning_rate: float
            The step size. Default = 1.0
        rho: float
            Decay rate. Default = 0.95
        epsilon: float
            Small error value. Default = 1e-7
        """
        super(Adadelta, self).__init__()
        self.learning_rate = learning_rate
        self.rho = rho
        self.epsilon = epsilon
