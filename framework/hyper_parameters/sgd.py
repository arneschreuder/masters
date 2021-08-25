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
