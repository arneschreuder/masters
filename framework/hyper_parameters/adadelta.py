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
