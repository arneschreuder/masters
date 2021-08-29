from framework.hyper_parameters.parameters import Parameters
from framework.schedules.schedule import Schedule


class Adagrad(Parameters):
    """
    Hyper Parameters for Adagrad

    Attributes
    ----------
    learning_rate: float or Schedule
        The step size. Default = None
    epsilon: float
        Small error value. Default = None
    """
    learning_rate: float or Schedule = None
    momentum: float = None

    def __init__(self,
                 learning_rate: float or Schedule = 0.01,
                 epsilon: float = 1e-7):
        """
        Parameters
        ----------
        learning_rate: float or Schedule
            The step size. Default = 0.01
        epsilon: float
            Small error value. Default = 1e-7
        """
        super(Adagrad, self).__init__()
        self.learning_rate = learning_rate
        self.epsilon = epsilon
