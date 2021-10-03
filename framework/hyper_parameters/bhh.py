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


from typing import Dict, List

from framework.credits.credit import Credit
from framework.credits.ibest import IBest
from framework.heuristics.heuristic import Heuristic
from framework.hyper_parameters.parameters import Parameters


class BHH(Parameters):
    """
    Hyper Parameters for BHH

    Attributes
    ----------
    population_size: int
        The number of entities in the swarm/population. Default = None
    burn_in: int
        The burn-in window size. Default = None
    replay: int
        The replay window size. Default = None
    reselection: int
        The reselection interval. Default = None
    reanalysis: int
        The reanalysis interval. Default = None
    normalise: bool
        Flag to normalise pseudo counts. Default = None
    credit: List[Credit]
        The credit assignment strategy to use. Default = None
    defaults: Dict[Parameters]
        The default parameters for all lower level heuristics. Default = None
    heuristics: List[Heuristic]
        The lower-level heuristics in the heuristic pool. Default = None
    """
    population_size: int = None
    burn_in: int = None
    replay: int = None
    reselection: int = None
    reanalysis: int = None
    normalise: bool = None
    credit: List[Credit] = None
    defaults: Dict = None
    heuristics: List[Heuristic] = None

    def __init__(self,
                 population_size: int = 10,
                 burn_in: int = 30,
                 replay: int = 30,
                 reselection: int = 1,
                 reanalysis: int = 1,
                 normalise: bool = False,
                 credit: List[Credit] = [
                     IBest(discounted_rewards=True)
                 ],
                 defaults: Dict = None,
                 heuristics: List[Heuristic] = None):
        """
        Parameters
        ----------
        population_size: int
            The number of entities in the swarm/population. Default = 10
        burn_in: int
            The burn-in window size. Default = 30
        replay: int
            The replay window size. Default = 30
        reselection: int
            The reselection interval. Default = 1
        reanalysis: int
            The reanalysis interval. Default = 1
        normalise: bool
            Flag to normalise pseudo counts. Default = False
        credit: List[Credit]
            The credit assignment strategy to use. Default = IBest(discounted_rewards=True)
        defaults: Dict
            The default parameters for all lower level heuristics. Default = None
        heuristics: List[Heuristic]
            The lower-level heuristics in the heuristic pool. Default = None
        """
        super(BHH, self).__init__()
        self.population_size = population_size
        self.burn_in = burn_in
        self.replay = replay
        self.reselection = reselection
        self.reanalysis = reanalysis
        self.normalise = normalise
        self.credit = credit
        self.defaults = defaults
        self.heuristics = heuristics
