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


class SGD(Parameters):
    """
    Hyper Parameters for SGD

    Attributes
    ----------
    learning_rate: float or Schedule
        The step size. Default = None
    """
    learning_rate: float or Schedule = None

    def __init__(self, learning_rate: float or Schedule = 0.01):
        """
        Parameters
        ----------
        learning_rate: float or Schedule
                        The step size. Default = 0.01
        """
        super(SGD, self).__init__()
        self.learning_rate = learning_rate
