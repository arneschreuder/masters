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

import tensorflow as tf
from framework.heuristics.heuristic import Heuristic
from framework.schedules.schedule import Schedule


class PSO(Heuristic):
    """
    The Stochastic Gradient Descent concrete heuristic.

    Attributes
    ----------
    inertia_weight: float
        The inertia weight (w). Default = None
    cognitive_control: float
        The cognative control (c1). Default = None
    social_control: float
        The social control (c2). Default = None
    learning_rate: float or Schedule
        The step size. Default = None
    velocity_clip_min: float
        The velocity minimum bound. Default = None
    velocity_clip_max: float
        The velocity maximum bound. Default = None
    """
    inertia_weight: float = None
    cognitive_control: float = None
    social_control: float = None
    learning_rate: float or Schedule = None
    velocity_clip_min: float = None
    velocity_clip_max: float = None

    def __init__(self,
                 inertia_weight: float = 0.729844,
                 cognitive_control: float = 1.496180,
                 social_control: float = 1.496180,
                 learning_rate: float or Schedule = 1.0,
                 velocity_clip_min: float = -1.0,
                 velocity_clip_max: float = 1.0):
        """
        Parameters
        ----------
        inertia_weight: float
            The inertia weight (w). Default = 0.729844
        cognitive_control: float
            The cognative control (c1). Default = 1.496180
        social_control: float
            The social control (c2). Default = 1.496180
        learning_rate: float or Schedule
            The step size. Default = 1.0
        velocity_clip_min: float
            The velocity minimum bound. Default = -1.0
        velocity_clip_max: float
            The velocity maximum bound. Default = 1.0
        """
        super(PSO, self).__init__()
        self.inertia_weight = inertia_weight
        self.cognitive_control = cognitive_control
        self.social_control = social_control
        self.learning_rate = learning_rate
        self.velocity_clip_min = velocity_clip_min
        self.velocity_clip_max = velocity_clip_max

    def __call__(self,
                 position: tf.Variable,
                 velocity: tf.Variable,
                 pbest: tf.Variable,
                 gbest: tf.Variable,
                 step: int) -> None:
        """
        Invocation function.

        Parameters
        ----------
        position: tf.Variable
            Entity position
        velocity: tf.Variable
            Entity velocity
        pbest: tf.Variable
            Personal best position
        gbest: tf.Variable
            Global best position
        """
        # Get learning rate
        lr = self.learning_rate

        if type(self.learning_rate) is not float:
            lr = self.learning_rate(step=step)

        # Get random params
        random1 = tf.random.uniform(shape=position.shape)
        random2 = tf.random.uniform(shape=position.shape)

        # Update velocity
        velocity.assign(
            self.inertia_weight*velocity +
            self.cognitive_control*random1*(pbest - position) +
            self.social_control*random2*(gbest - position)
        )

        # Velocity clipping
        velocity.assign(tf.clip_by_value(
            t=velocity,
            clip_value_min=self.velocity_clip_min,
            clip_value_max=self.velocity_clip_max,
        ))

        # Update position
        position.assign_add(lr*velocity)
