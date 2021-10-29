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
from framework.distributions.bernoulli import Bernoulli
from framework.entities import Entity
from framework.heuristics.heuristic import Heuristic
from framework.hyper_parameters.de import DE as DEParameters
from framework.losses import loss
from framework.population import Population


class DE(Heuristic):
    """
    The Differential Evolution concrete heuristic.

    Attributes
    ----------
    params: DEParameters
        Hyper Parameters. Default = None
    """
    params: DEParameters = None

    def __init__(self, params: DEParameters = DEParameters()):
        """
        Parameters
        ----------
        params: DEParameters
            Hyper parameters. Default = DEParameters()
        """
        super(DE, self).__init__()
        self.params = params

    @staticmethod
    def get_recombination_probability(params: DEParameters, step: int) -> float:
        """
        Gets the recombination probability.

        Parameters
        ----------
        params: SGDParameters
            Hyper parameters.
        step: int
            The step number.

        Returns
        -------
        float:
            The recombination probability.
        """

        # Get recombination probability
        rp = params.recombination_probability

        if type(params.recombination_probability) is not float:
            rp = params.recombination_probability(step=step)

        return rp

    @staticmethod
    def get_beta(params: DEParameters, step: int) -> float:
        """
        Gets the beta scaling factor.

        Parameters
        ----------
        params: SGDParameters
            Hyper parameters.
        step: int
            The step number.

        Returns
        -------
        float:
            The beta scaling factor
        """

        # Get beta
        beta = params.beta

        if type(params.beta) is not float:
            beta = params.beta(step=step)

        return beta

    @ staticmethod
    def select_entities(entities: List[Entity],
                        selection_strategy: str = 'rand',
                        count: int = -1,
                        exclude: List[int] = [],
                        reversed: bool = False) -> List[Entity]:
        """
        Selects a number of entities from the population based on selection criteria.

        Parameters
        ----------
        entities: List[Entity]
            The list of entities to choose from.
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
        selection = entities.copy()

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
    def get_trial_vector(a: Entity, b: Entity, c: Entity, beta: float) -> tf.Tensor:
        """
        Gets the trial vector from a selection of entities.

        Parameters
        ----------
        a: tf.Tensor
            The target entity.
        b: tf.Tensor
            The difference entity 1.
        c: tf.Tensor
            The difference entity 2.
        params: DEParameters
            The hyper-parameters. Default = 'rand'

        Returns
        -------
        tf.Tensor
            The trial vector.
        """
        return a.position + beta*(b.position - c.position)

    @staticmethod
    def get_xo_mask(entity: Entity, xo_strategy: str, recombination_probability: float) -> tf.Tensor:
        """
        Gets the cross-over mutation mask.

        Parameters
        ----------
        entity: Entity
            The entity that defines the candidate solution.
        params: DEParameters
            The hyper-parameters. Default = 'rand'

        Returns
        -------
        tf.Tensor
            The cross-over mask.
        """
        xo_mask = []
        N = entity.position.shape[0]

        if xo_strategy == 'bin':
            # BINOMIAL SELECTION
            xo_mask = np.zeros(N)

            i = random.randrange(N)
            xo_mask[i] = 1

            for j in range(N):
                dice = random.random()
                if dice < recombination_probability and j != i:
                    xo_mask[j] = 1
        elif xo_strategy == 'exp':
            # EXPONENTIAL SELECTION
            xo_mask = np.zeros(N)

            i = random.randrange(N - 1)
            counter = 0

            while True:
                xo_mask[i+1 - 1] = 1
                counter += 1
                i = (i+1) % N
                dice = random.random()

                if dice >= recombination_probability or counter == N:
                    break

        return tf.constant(xo_mask, dtype=tf.float32)

    @staticmethod
    def get_offspring(x: tf.Tensor, y: tf.Tensor, xo_mask: tf.Tensor) -> tf.Tensor:
        """
        Gets the target vector for cross-over.

        Parameters
        ----------
        x: tf.Tensor
            The original candidate solution.
        y: tf.Tensor
            The target candidate solution.
        xo_mask: tf.Tensor
            The cross-over mask.

        Returns
        -------
        tf.Tensor
            The target vector.
        """
        y_masked = y*xo_mask
        x_masked = x*(1-xo_mask)
        return y_masked + x_masked

    @staticmethod
    def evaluate(features: tf.Tensor, labels: tf.Tensor, loss_fn: loss, entity: Entity, position: tf.Tensor) -> Tuple[tf.Tensor, tf.Tensor]:
        """
        Evaluates the canidate solution relative to the entity's model.

        Parameters
        ----------
        features: tf.Tensor
            The input features.
        labels: tf.Tensor
            The labels.
        loss_fn: loss
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
    def calculate_position(
            entity: Entity,
            x: tf.Tensor,
            x_loss: tf.Tensor,
            offspring: tf.Tensor,
            offspring_loss: tf.Tensor):
        """
        Calculates the entity's position based of the performance of the target vector.

        Parameters
        ----------
        entity: Entity
            The entity that represents the candidate solution.
        x: tf.Tensor
            The original candidate solution.
        x_loss: tf.Tensor
            The original candidate solution's loss.
        offspring: tf.Tensor
            The target candidate solution.
        offspring_loss: tf.Tensor
            The target candidate solution's loss.
        """
        if (offspring_loss < entity.loss):
            entity.position.assign(offspring)
            entity.loss = offspring_loss
        else:
            entity.position.assign(x)
            entity.loss = x_loss

    def __call__(self,
                 features: tf.Tensor,
                 labels: tf.Tensor,
                 loss_fn: tf.Tensor,
                 entity: Entity,
                 j: int,
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
        rp = DE.get_recombination_probability(params=self.params, step=step)
        beta = DE.get_beta(params=self.params, step=step)

        # Selection
        a = None
        b = None
        c = None

        while True:
            if self.params.selection_strategy == 'rand':
                selection = DE.select_entities(
                    entities=population.entities,
                    selection_strategy=self.params.selection_strategy,
                    count=3,
                    exclude=[j]
                )
                a = selection[0]
                b = selection[1]
                c = selection[2]
            elif self.params.selection_strategy == 'best':
                selection = DE.select_entities(
                    entities=population.entities,
                    selection_strategy=self.params.selection_strategy,
                    count=1,
                    exclude=[j]
                )
                a = selection[0]

                selection = DE.select_entities(
                    entities=population.entities,
                    selection_strategy='rand',
                    count=2,
                    exclude=[j]
                )
                b = selection[0]
                c = selection[1]

            if a != b and b != c and c != a:
                break

        # Trial Vector
        y = DE.get_trial_vector(
            a, b, c, beta)
        x = entity.position

        # Get Cross-Over mask
        xo_mask = DE.get_xo_mask(
            entity,
            xo_strategy=self.params.xo_strategy,
            recombination_probability=rp
        )

        # Get Target Vector
        offspring = DE.get_offspring(x, y, xo_mask)

        # Evaluate Original
        _, x_loss = DE.evaluate(features, labels, loss_fn, entity, x)

        # Evaluate Target Vector
        _, offspring_loss = DE.evaluate(
            features, labels, loss_fn, entity, offspring)

        # Apply best position
        DE.calculate_position(entity, x, x_loss, offspring, offspring_loss)
