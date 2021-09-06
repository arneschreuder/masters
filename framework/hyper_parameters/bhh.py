from typing import List

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
    credit: List[Credit]
        The credit assignment strategy to use. Default = None
    heuristics: List[Heuristic]
        The lower-level heuristics in the heuristic pool. Default = None
    """
    population_size: int = None
    burn_in: int = None
    replay: int = None
    reselection: int = None
    reanalysis: int = None
    credit: List[Credit] = None

    # Heuristics in heuristic pool
    heuristics: List[Heuristic] = None

    def __init__(self,
                 population_size: int = 10,
                 burn_in: int = 30,
                 replay: int = 30,
                 reselection: int = 1,
                 reanalysis: int = 1,
                 credit: List[Credit] = [
                     IBest(discounted_rewards=True)
                 ],
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
        credit: List[Credit]
            The credit assignment strategy to use. Default = IBest(discounted_rewards=True)
        heuristics: List[Heuristic]
            The lower-level heuristics in the heuristic pool. Default = [
                     SGD(),
                     Momentum(),
                     NAG(),
                     Adagrad(),
                     RMSProp(),
                     Adadelta(),
                     Adam(),
                     PSO(),
                 ]
        """
        super(BHH, self).__init__()
        # Setting hyper-parameters
        self.population_size = population_size
        self.burn_in = burn_in
        self.replay = replay
        self.reselection = reselection
        self.reanalysis = reanalysis
        self.credit = credit

        # Setting heuristic pool
        self.heuristics = heuristics
