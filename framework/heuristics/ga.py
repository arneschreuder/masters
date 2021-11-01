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

import random
from typing import List, Tuple

import numpy as np
import tensorflow as tf
from framework.entities import Entity
from framework.heuristics.heuristic import Heuristic
from framework.hyper_parameters.ga import GA as GAParameters
from framework.initialisers.glorot_uniform import GlorotUniform
from framework.losses.loss import Loss
from framework.population import Population


class GA(Heuristic):
    """
    The Genetic Algorithm concrete heuristic.

    Attributes
    ----------
    params: GAParameters
        Hyper Parameters. Default = None
    """
    params: GAParameters = None

    def __init__(self, params: GAParameters = GAParameters()):
        """
        Parameters
        ----------
        params: GAParameters
            Hyper parameters. Default = GAParameters()
        """
        super(GA, self).__init__()
        self.params = params

    @staticmethod
    def get_mutation_rate(params: GAParameters, step: int) -> float:
        """
        Gets the mutation rate.

        Parameters
        ----------
        params: SGDParameters
            Hyper parameters.
        step: int
            The step number.

        Returns
        -------
        float:
            The mutation rate.
        """

        # Get mutation rate
        mr = params.mutation_rate

        if type(params.mutation_rate) is not float:
            mr = params.mutation_rate(step=step)

        return mr

    @ staticmethod
    def select(population: Population,
               selection_strategy: str = 'rand',
               count: int = -1,
               exclude: List[int] = [],
               reversed: bool = False) -> List[Entity]:
        """
        Selects a number of entities from the population based on selection criteria.

        Parameters
        ----------
        population: Population
            The population that contains the collection of entities.
        selection_strategy: str
            The selection strategy to use. Default = 'rand'
        count: int
            The number of entities to select. -1 selects all. Default = -1.
        exclude: List[int]
            A list of entities to exclude from selection. Default = []
        reversed: bool
            Show the list be returned in reverse order. Default = False.

        Returns
        -------
        List[Entity]
            The selected list of entities.
        """
        # Make a copy of the list of entities first
        selection = population.entities.copy()

        # Prep exclusion list
        exclude = list(dict.fromkeys(exclude))  # Remove duplicates
        exclude = sorted(exclude, reverse=True)  # Orden removes back to front

        # If there are items to exclude, remove them
        for i in exclude:
            selection.pop(i)

        # Check the selection criteria
        if selection_strategy == 'best':
            selection = sorted(
                selection, key=lambda entity: entity.loss, reverse=reversed)
        elif selection_strategy == 'rand':
            selection = sorted(
                selection, key=lambda entity: random.random(), reverse=reversed)

        # Only select the subset that is required
        if count < 1:
            return selection

        return selection[:count]

    @staticmethod
    def get_xo_mask(dimensions: int, xo_strategy: str) -> tf.Tensor:
        """
        Gets the cross-over mutation mask.

        Parameters
        ----------
        entity: Entity
            The entity that defines the candidate solution.
        params: GAParameters
            The hyper-parameters. Default = 'rand'

        Returns
        -------
        tf.Tensor
            The cross-over mask.
        """
        xo_mask = []

        if xo_strategy == 'bin':
            # BINOMIAL SELECTION
            xo_mask = np.zeros(dimensions)

            i = random.randrange(dimensions)
            xo_mask[i] = 1

            for j in range(dimensions):
                dice = random.random()
                if dice < 0.5 and j != i:
                    xo_mask[j] = 1
        elif xo_strategy == 'exp':
            # EXPONENTIAL SELECTION
            xo_mask = np.zeros(dimensions)

            i = random.randrange(dimensions - 1)
            counter = 0

            while True:
                xo_mask[i+1 - 1] = 1
                counter += 1
                i = (i+1) % dimensions
                dice = random.random()

                if dice >= 0.5 or counter == dimensions:
                    break

        return tf.constant(xo_mask, dtype=tf.float32)

    @staticmethod
    def crossover(parent1: tf.Tensor, parent2: tf.Tensor, xo_mask: tf.Tensor) -> tf.Tensor:
        """
        Applies the crossover operator.

        Parameters
        ----------
        parent1: tf.Tensor
            The original candidate solution.
        parent2: tf.Tensor
            The target candidate solution.
        xo_mask: tf.Tensor
            The cross-over mask.

        Returns
        -------
        tf.Tensor
            The offspring.
        """
        parent2_masked = parent2*xo_mask
        parent1_masked = parent1*(1-xo_mask)
        return parent1_masked + parent2_masked

    @staticmethod
    def get_mutation_mask(dimensions: int, mutation_rate: float) -> tf.Tensor:
        """
        Gets the mutation mask.

        Parameters
        ----------
        entity: Entity
            The entity that defines the candidate solution.
        params: GAParameters
            The hyper-parameters. Default = 'rand'

        Returns
        -------
        tf.Tensor
            The mutation mask.
        """
        mutation_mask = []

        # BINOMIAL SELECTION
        mutation_mask = np.zeros(dimensions)

        for j in range(dimensions):
            dice = random.random()
            if dice < mutation_rate:
                mutation_mask[j] = 1

        return tf.constant(mutation_mask, dtype=tf.float32)

    @staticmethod
    def mutate(offspring: tf.Tensor, mutation_mask: tf.Tensor) -> tf.Tensor:
        """
        Gets the target vector for cross-over.

        Parameters
        ----------
        offspring: tf.Tensor
            The original candidate solution.
        mutation_mask: tf.Tensor
            The cross-over mask.

        Returns
        -------
        tf.Tensor
            The mutated offspring.
        """
        initialiser = GlorotUniform()
        mutation = initialiser(offspring.shape)
        return offspring + (mutation*mutation_mask)

    @staticmethod
    def evaluate(features: tf.Tensor, labels: tf.Tensor, loss_fn: Loss, entity: Entity, position: tf.Tensor) -> Tuple[tf.Tensor, tf.Tensor]:
        """
        Evaluates the canidate solution relative to the entity's model.

        Parameters
        ----------
        features: tf.Tensor
            The input features.
        labels: tf.Tensor
            The labels.
        loss_fn: Loss
            The loss function.
        entity: Entity
            The entity that represents the candidate solution.
        position: tf.Tensor
            The candidate solution.

        Returns
        -------
        Tuple[tf.Tensor, tf.Tensor]
            The logits, The loss
        """
        entity.model.set_weights_flat(position)
        logits = entity.model(features=features)
        loss = tf.reduce_mean(
            loss_fn(
                labels=labels,
                logits=logits
            )
        )
        return logits, loss

    @staticmethod
    def survive(
            entity: Entity,
            current: tf.Tensor,
            current_loss: tf.Tensor,
            offspring: tf.Tensor,
            offspring_loss: tf.Tensor):
        """
        Calculates the entity's position based of the performance of the offspring vector.

        Parameters
        ----------
        entity: Entity
            The entity that represents the candidate solution.
        current: tf.Tensor
            The original candidate solution.
        current_loss: tf.Tensor
            The original candidate solution's loss.
        offspring: tf.Tensor
            The offspring candidate solution.
        offspring_loss: tf.Tensor
            The offspring candidate solution's loss.
        """
        if (offspring_loss < entity.loss):
            entity.position.assign(offspring)
            entity.loss = offspring_loss
        else:
            entity.position.assign(current)
            entity.loss = current_loss

    def __call__(self,
                 features: tf.Tensor,
                 labels: tf.Tensor,
                 loss_fn: Loss,
                 entity: Entity,
                 population: Population,
                 step: int) -> None:
        """
        The heuristic step operation.

        Parameters
        ----------
        features: tf.Tensor
            The input data
        labels: tf.Tensor
            The target data/labels
        loss_fn: Loss
            The loss function.
        entity: EntityState
            Entity state
        population: PopulationState
            Population state
        step: int
            The iteration step number
        """

        # Get hyper-params
        mr = GA.get_mutation_rate(params=self.params, step=step)

        # Select parent to crossover
        parents = GA.select(
            population=population,
            selection_strategy=self.params.selection_strategy,
            count=2,
            exclude=[entity.id]
        )
        parent1 = parents[0].position
        parent2 = parents[1].position
        current = entity.position

        # Make xo_mask
        xo_mask = GA.get_xo_mask(
            dimensions=entity.shape[0],
            xo_strategy=self.params.xo_strategy,
        )

        # Apply crossover and get offspring
        offspring = GA.crossover(parent1, parent2, xo_mask)

        # Make mutation_mask
        # Just start with binomial mutation
        mutation_mask = GA.get_mutation_mask(
            dimensions=entity.shape[0],
            mutation_rate=mr
        )

        # Apply mutation to offspring
        offspring = GA.mutate(offspring, mutation_mask)

        # Evaluate Original
        _, current_loss = GA.evaluate(
            features, labels, loss_fn, entity, current)

        # Evaluate Target Vector
        _, offspring_loss = GA.evaluate(
            features, labels, loss_fn, entity, offspring)

        # Apply best position
        GA.survive(entity, current,
                   current_loss, offspring, offspring_loss)
