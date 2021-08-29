from framework.hyper_parameters.parameters import Parameters
from framework.schedules.schedule import Schedule


class RMSProp(Parameters):
    """
    Hyper Parameters for RMSProp

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
                 learning_rate: float or Schedule = 0.001,
                 rho: float = 0.9,
                 epsilon: float = 1e-7):
        """
        Parameters
        ----------
        learning_rate: float
            The step size. Default = 0.001
        rho: float
            Decay rate. Default = 0.9
        epsilon: float
            Small error value. Default = 1e-7
        """
        super(RMSProp, self).__init__()
        self.learning_rate = learning_rate
        self.rho = rho
        self.epsilon = epsilon
