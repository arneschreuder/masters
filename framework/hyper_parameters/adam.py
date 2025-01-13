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


from framework.hyper_parameters.parameters import Parameters
from framework.schedules.schedule import Schedule


class Adam(Parameters):
    """
    Hyper Parameters for Adam

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

    def __init__(
        self,
        learning_rate: float or Schedule = 0.001,
        beta1: float = 0.9,
        beta2: float = 0.999,
        epsilon: float = 1e-7,
    ):
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
