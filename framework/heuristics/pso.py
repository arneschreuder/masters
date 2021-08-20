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
from framework.entities import Entity
from framework.heuristics.heuristic import Heuristic
from framework.population import Population


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
    velocity_clip_min: float
        The velocity minimum bound. Default = None
    velocity_clip_max: float
        The velocity maximum bound. Default = None
    """
    inertia_weight: float = None
    cognitive_control: float = None
    social_control: float = None
    velocity_clip_min: float = None
    velocity_clip_max: float = None

    def __init__(self,
                 inertia_weight: float = 0.729844,
                 cognitive_control: float = 1.496180,
                 social_control: float = 1.496180,
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
        velocity_clip_min: float
            The velocity minimum bound. Default = -1.0
        velocity_clip_max: float
            The velocity maximum bound. Default = 1.0
        """
        super(PSO, self).__init__()
        self.inertia_weight = inertia_weight
        self.cognitive_control = cognitive_control
        self.social_control = social_control
        self.velocity_clip_min = velocity_clip_min
        self.velocity_clip_max = velocity_clip_max

    def __call__(self,
                 entity: Entity,
                 population: Population,
                 step: int) -> None:
        """
        Invocation function.

        Parameters
        ----------
        entity: EntityState
            Entity state
        population: PopulationState
            Population state
        """
        # Get random params
        random1 = tf.random.uniform(shape=entity.position.shape)
        random2 = tf.random.uniform(shape=entity.position.shape)

        # Update velocity
        entity.velocity.assign(
            self.inertia_weight*entity.velocity +
            self.cognitive_control*random1*(entity.pbest - entity.position) +
            self.social_control*random2 *
            (population.gbest - entity.position)
        )

        # Velocity clipping
        entity.velocity.assign(tf.clip_by_value(
            t=entity.velocity,
            clip_value_min=self.velocity_clip_min,
            clip_value_max=self.velocity_clip_max,
        ))

        # Update position
        entity.position.assign_add(entity.velocity)
