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
from framework.hyper_parameters.pso import PSO as PSOParameters
from framework.population import Population


class PSO(Heuristic):
    """
    The Particle Swarm Optimiser concrete heuristic.

    Attributes
    ----------
    params: PSOParameters
        Hyper Parameters. Default = None
    """
    params: PSOParameters = None

    def __init__(self, params: PSOParameters = PSOParameters()):
        """
        Parameters
        ----------
        params: PSOParameters
            Hyper parameters. Default = PSOParameters()
        """
        super(PSO, self).__init__()
        self.params = params

    @staticmethod
    def get_learning_rate(params: PSOParameters, step: int) -> float:
        """
        Gets the learning rate.

        Parameters
        ----------
        params: PSOParameters
            Hyper parameters.
        step: int
            The step number.

        Returns
        -------
        float:
            The learning rate.
        """
        # Get learning rate
        lr = params.learning_rate

        if type(params.learning_rate) is not float:
            lr = params.learning_rate(step=step)

        return lr

    @staticmethod
    def get_random(entity: Entity) -> tf.Tensor:
        """
        Gets uniform random vector with the same shape as the candidate solution.

        Parameters
        ----------
        entity: Entity
            The entity containing the state.

        Returns
        -------
        tf.Tensor:
            The uniform sampled vector.
        """
        return tf.random.uniform(shape=entity.position.shape)

    @staticmethod
    def calculate_E_gradient_mean(random1: tf.Tensor,
                                  random2: tf.Tensor,
                                  params: PSOParameters,
                                  entity: Entity,
                                  population: Population):
        """
        Calculates the expected (mean) gradient mean.

        Parameters
        ----------
        random1: tf.Tensor
            Stochastic vector 1.
        random2: tf.Tensor
            Stochastic vector 2.
        params: PSOParameters
            Hyper parameters.
        entity: Entity
            The entity containing the state.
        population: Population
            The population of containing the swarm of entities.
        """
        # Update E_gradient_mean
        entity.E_gradient_mean.assign(
            params.inertia_weight*entity.velocity +
            params.cognitive_control*random1*(entity.pbest - entity.position) +
            params.social_control*random2 *
            (population.gbest - entity.position)
        )

    @staticmethod
    def calculate_clipped_E_gradient_mean(params: PSOParameters, entity: Entity):
        """
        Clips the expected (mean) gradient mean.

        Parameters
        ----------
        params: PSOParameters
            Hyper parameters.
        entity: Entity
            The entity containing the state.
        """
        # Clipping gradient mean
        entity.E_gradient_mean.assign(tf.clip_by_value(
            t=entity.E_gradient_mean,
            clip_value_min=params.velocity_clip_min,
            clip_value_max=params.velocity_clip_max,
        ))

    @staticmethod
    def calculate_position_delta(lr: float, entity: Entity):
        """
        Calculates the position delta.

        Parameters
        ----------
        lr: float
            The learning rate.
        entity: Entity
            The entity containing the state.
        """
        # Update position_delta
        entity.position_delta.assign(lr*entity.E_gradient_mean)

    @staticmethod
    def calculate_velocity(entity: Entity):
        """
        Calculates the velocity.

        Parameters
        ----------
        entity: Entity
            The entity containing the state.
        """
        # Update velocity
        entity.velocity.assign(entity.position_delta)

    @staticmethod
    def calculate_position(entity: Entity):
        """
        Calculates the position.

        Parameters
        ----------
        entity: Entity
            The entity containing the state.
        """
        # Update position
        entity.position.assign_add(entity.velocity)

    def __call__(self,
                 entity: Entity,
                 population: Population,
                 step: int) -> None:
        """
        The heuristic step operation.

        Parameters
        ----------
        entity: EntityState
            Entity state
        population: PopulationState
            Population state
        step: int
            The iteration step number
        """
        # Get learning rate
        lr = PSO.get_learning_rate(params=self.params, step=step)

        # Get random params
        random1 = PSO.get_random(entity=entity)
        random2 = PSO.get_random(entity=entity)

        # Update E_gradient_mean
        PSO.calculate_E_gradient_mean(
            random1=random1,
            random2=random2,
            params=self.params,
            population=population,
            entity=entity
        )

        # Clipping gradient mean
        # Only clip if clipping has been set
        if (self.params.velocity_clip_min is not None) and (self.params.velocity_clip_max is not None):
            PSO.calculate_clipped_E_gradient_mean(
                params=self.params,
                entity=entity
            )

        # Update position_delta
        PSO.calculate_position_delta(
            lr=lr,
            entity=entity
        )

        # Update velocity
        PSO.calculate_velocity(entity=entity)

        # Update position
        PSO.calculate_position(entity=entity)
