from framework.hyper_parameters.parameters import Parameters
from framework.schedules.schedule import Schedule


class NAG(Parameters):
    """
    Hyper Parameters for NAG

    Attributes
    ----------
    learning_rate: float or Schedule
        The step size. Default = None
    momentum: float
        NAG hyper-heuristic. Default = None
    """
    learning_rate: float or Schedule = None
    momentum: float = None

    def __init__(self,
                 learning_rate: float or Schedule = 0.01,
                 momentum: float = 0.9):
        """
        Parameters
        ----------
        learning_rate: float or Schedule
            The step size. Default = 0.01
        momentum: float
            NAG hyper-heuristic. Default = 0.9
        """
        super(NAG, self).__init__()
        self.learning_rate = learning_rate
        self.momentum = momentum
