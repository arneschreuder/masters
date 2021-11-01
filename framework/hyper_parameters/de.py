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


class DE(Parameters):
    """
    Hyper Parameters for Differential Evolution

    Attributes
    ----------
    population_size: int
        The number of entities in the swarm. Default = None
    selection_strategy: str
        The selection strategy to use. Default = None
    xo_strategy: str
        The cross-over strategy to use. Default = None
    recombination_probability: float or Schedule
        The probability of a recombination in a gene. Default = None
    beta: float or Schedule
        The beta parameter. Default = None
    """
    population_size: int = None
    selection_strategy: str = None
    xo_strategy: str = None
    recombination_probability: float or Schedule = None
    beta: float or Schedule = None

    def __init__(self,
                 population_size: int = 10,
                 selection_strategy: str = 'rand',
                 xo_strategy: str = 'bin',
                 recombination_probability: float = 0.5,
                 beta: float = 1.0):
        """
        Parameters
        ----------
        population_size: int
            The number of entities in the swarm. Default = 10
        selection_strategy: str
            The selection strategy to use. Default = 'rand'
        xo_strategy: str
            The cross-over strategy to use. Default = 'bin'
        recombination_probability: float
            The probability of a mutation in a gene. Default = 0.5
        beta: float
            The beta parameter. Default = 1.0
        """
        super(DE, self).__init__()
        self.population_size = population_size
        self.selection_strategy = selection_strategy
        self.xo_strategy = xo_strategy
        self.recombination_probability = recombination_probability
        self.beta = beta
