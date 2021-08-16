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
from framework.heuristics.adadelta import Adadelta as AdadeltaHeuristic
from framework.optimisers.optimiser import Optimiser
from framework.schedules.schedule import Schedule
from framework.utilities.utilities import flatten


class Adadelta(Optimiser):
    """
    The Adadelta concrete optimiser.

    See: https://github.com/tensorflow/tensorflow/blob/master/tensorflow/python/training/adadelta.py

    References:
    ADADELTA - An Adaptive Learning Rate Method:
      [Zeiler, 2012](http://arxiv.org/abs/1212.5701)
      ([pdf](http://arxiv.org/pdf/1212.5701v1.pdf))

    Attributes
    ----------
    entity: Entity
        The entity that represents the candidate solution to the model.
        Default = None
    """
    # learning_rate: float = None
    entity: Entity = None

    def __init__(self,
                 learning_rate: float or Schedule = 1.0,
                 rho: float = 0.95,
                 epsilon: float = 1e-7):
        """
        Parameters
        ----------
        learning_rate: float or Schedule
            The step size. Default = 1.0
        rho: float
            Decay rate. Default = 0.95
        epsilon: float
            Small error value. Default = 1e-7
        """
        super(Adadelta, self).__init__(
            heuristic=AdadeltaHeuristic(
                learning_rate=learning_rate,
                rho=rho,
                epsilon=epsilon
            )
        )
        self.epsilon = epsilon
        self.entity = None

    def initialise(self) -> None:
        """
        Initialiser function.
        Creates the entity, maps the model and initialises the entity.
        """
        super(Adadelta, self).initialise()
        self.entity = Entity()
        # This is required to determine the dimensionality of the model.
        self.entity.map_model(model=self.model)
        self.entity.initialise()

    def get_gradient(self,
                     features: tf.Tensor,
                     labels: tf.Tensor) -> List[List[tf.Tensor]]:
        """
        Calculates the gradient of the model weights based on loss function.

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
            weights = self.model.get_weights()
            tape.watch(weights)
            logits = self.model(features=features)
            loss = self.loss_fn(
                labels=labels,
                logits=logits
            )
            gradient = tape.gradient(
                target=loss, sources=weights
            )
            return gradient

    def __call__(self,
                 features: tf.Tensor,
                 labels: tf.Tensor,
                 step: int) -> Tuple[tf.Tensor, tf.Tensor]:
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
        self.model.set_weights_flat(weights_flat=self.entity.state.position)

        # Get gradients
        gradient = self.get_gradient(features=features, labels=labels)
        gradient_flat = flatten(x=gradient)

        # Set gradient
        self.entity.state.gradient = gradient_flat

        # Step and update position and velocity using heuristic
        self.heuristic(
            entity=self.entity,
            step=step
        )

        # Evaluate current position
        self.model.set_weights_flat(weights_flat=self.entity.state.position)
        logits, loss = self.evaluate(features=features, labels=labels)
        self.entity.state.loss = loss

        return logits, loss
