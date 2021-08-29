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

    def __init__(self,
                 learning_rate: float or Schedule = 0.001,
                 beta1: float = 0.9,
                 beta2: float = 0.9,
                 epsilon: float = 1e-7):
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
