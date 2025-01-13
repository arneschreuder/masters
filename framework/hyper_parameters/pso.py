# The MIT License (MIT)
# =====================

# Copyright  Arné Schreuder

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
                 velocity_clip_min: float = None,
                 velocity_clip_max: float = None):
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
            The velocity minimum bound. Default = None
        velocity_clip_max: float
            The velocity maximum bound. Default = None
        """
        super(PSO, self).__init__()
        self.population_size = population_size
        self.learning_rate = learning_rate
        self.inertia_weight = inertia_weight
        self.cognitive_control = cognitive_control
        self.social_control = social_control
        self.velocity_clip_min = velocity_clip_min
        self.velocity_clip_max = velocity_clip_max
