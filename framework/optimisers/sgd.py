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

from typing import List, Tuple

import tensorflow as tf
from framework.entities.entity import Entity
from framework.optimisers.optimiser import Optimiser
from framework.utilities.utilities import flatten, reshape


class SGD(Optimiser):
    """
    The Stochastic Gradient Descent concrete optimiser.

    Attributes
    ----------
    learning_rate: float
        The step size. Default = None
    momentum: float
        Momentum hyper-heuristic. Default = None
    nesterov: bool
        Flag to use nesterov update rule. Default = None
    entity: Entity
        The entity that represents the candidate solution to the model.
        Default = None

    """
    learning_rate: float = None
    momentum: float = None
    nesterov: bool = None
    entity: Entity = None

    def __init__(self,
                 learning_rate: float = 0.01,
                 momentum: float = 0.9,
                 nesterov: bool = True):
        """
        Parameters
        ----------
        learning_rate: float
            The step size. Default = None
        momentum: float
            Momentum hyper-heuristic. Default = None
        nesterov: bool
            Flag to use nesterov update rule. Default = None
        """
        super(SGD, self).__init__()
        self.learning_rate: float = learning_rate,
        self.momentum: float = momentum,
        self.nesterov: bool = nesterov
        self.entity: Entity = None

    def initialise(self) -> None:
        """
        Initialiser function.
        Creates the entity, maps the model and initialises the entity.
        """
        super(SGD, self).initialise()
        self.entity = Entity()
        # This is required to determine the dimensionality of the model.
        self.entity.map_model(model=self.model)
        self.entity.initialise()

    def get_gradient(self,
                     features: tf.Tensor,
                     labels: tf.Tensor) -> List[List[tf.Tensor]]:
        """
        Calculates the gradient of the model parameters based on loss function.

        Parameters
        ----------
        features: tf.Tensor
            The input data
        labels: tf.Tensor
            The target data/labels

        Returns
        -------
        List[List[tf.Tensor]]
            The gradient as a list of list of tensors
        """
        with tf.GradientTape() as tape:
            parameters = self.model.get_parameters()
            tape.watch(parameters)
            logits = self.model(features=features)
            loss = self.loss_fn(
                labels=labels,
                logits=logits
            )
            gradient = tape.gradient(
                target=loss, sources=parameters
            )
            return gradient

    def step(self,
             position: tf.Tensor,
             velocity: tf.Tensor,
             gradient: tf.Tensor) -> None:
        """
        The heuristic step operation.

        Parameters
        ----------
        position: tf.Tensor
            The entity's position which is the candidate solution to the model
        velocity: tf.Tensor
            The entity's velocity
        gradient: tf.Tensor
            The gradient to apply
        """
        if self.momentum == 0.0:
            position.assign_add(-self.learning_rate*gradient)
        else:
            velocity.assign(
                self.learning_rate*velocity - self.learning_rate*gradient
            )

            if self.nesterov:
                position.assign_add(
                    self.momentum*velocity - self.learning_rate*gradient
                )
            else:
                position.assign_add(velocity)

    def __call__(self,
                 features: tf.Tensor,
                 labels: tf.Tensor) -> Tuple[tf.Tensor, tf.Tensor]:
        """
        A single execution of the optimiser's step.

        Parameters
        ----------
        features: tf.Tensor
            The input data
        labels: tf.Tensor
            The target data/labels

        Returns
        -------
        Tuple[tf.Tensor, tf.Tensor]
            Consists out of (logits, loss)
        """
        # Load model with solution
        self.model.set_parameters_flat(parameters_flat=self.entity.position)

        # Get gradients
        gradient = self.get_gradient(features=features, labels=labels)
        gradient_flat = flatten(parameters=gradient)

        # Step and update position and velocity
        self.step(
            position=self.entity.position,
            velocity=self.entity.velocity,
            gradient=gradient_flat
        )

        # Evaluate current position
        self.model.set_parameters_flat(parameters_flat=self.entity.position)
        logits, loss = self.evaluate(features=features, labels=labels)
        return logits, loss
