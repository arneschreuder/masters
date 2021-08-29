from framework.hyper_parameters.parameters import Parameters
from framework.schedules.schedule import Schedule


class PSO(Parameters):
    """
    Hyper Parameters for PSO

    Attributes
    ----------
    population_size: int
        The number of entities in the swarm. Default = None
    learning_rate: float or Schedule
        The step size. Default = None
    inertia_weight: float
        The inertia weight (w). Default = None
    cognitive_control: float
        The cognative control (c1). Default = None
    social_control: float
        The social control (c2). Default = None
    velocity_clip_min: float
        The velocity minimum bound. Default = None
    velocity_clip_max: float
        The velocity maximum bound. Default = None
    """
    population_size: int = None
    learning_rate: float or Schedule = None
    inertia_weight: float = None
    cognitive_control: float = None
    social_control: float = None
    velocity_clip_min: float = None
    velocity_clip_max: float = None

    def __init__(self,
                 population_size: int = 10,
                 learning_rate: float or Schedule = 0.01,
                 inertia_weight: float = 0.729844,
                 cognitive_control: float = 1.496180,
                 social_control: float = 1.496180,
                 velocity_clip_min: float = -1.0,
                 velocity_clip_max: float = 1.0):
        """
        Parameters
        ----------
        learning_rate: float or Schedule
            The step size. Default = 1.0
        inertia_weight: float
            The inertia weight (w). Default = 0.729844
        cognitive_control: float
            The cognative control (c1). Default = 1.496180
        social_control: float
            The social control (c2). Default = 1.496180
        velocity_clip_min: float
            The velocity minimum bound. Default = -1.0
        velocity_clip_max: float
            The velocity maximum bound. Default = 1.0
        """
        super(PSO, self).__init__()
        self.population_size = population_size
        self.learning_rate = learning_rate
        self.inertia_weight = inertia_weight
        self.cognitive_control = cognitive_control
        self.social_control = social_control
        self.velocity_clip_min = velocity_clip_min
        self.velocity_clip_max = velocity_clip_max
