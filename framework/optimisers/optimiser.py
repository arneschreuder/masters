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

from typing import Tuple

import tensorflow as tf
from framework.heuristics.heuristic import Heuristic
from framework.logger.logger import Logger
from framework.losses.loss import Loss
from framework.neural_networks.neural_network import NeuralNetwork


class Optimiser:
    """
    The base class for all implementations of an optimiser.
    Optimisers are essentially stateful instances that execute
    a specific heuristic over its own state.

    Attributes
    ----------
    heuristic: Heuristic
        The heuristic or search guide to use. Default = None
    loss_fn: Loss
        The loss function to use. Default = None
    model: NeuralNetwork
        The model to be trained. Default = None
    """
    heuristic: Heuristic = None
    loss_fn: Loss = None
    model: NeuralNetwork = None
    logger: Logger = None

    def __init__(self, heuristic: Heuristic):
        self.heuristic = heuristic
        self.loss_fn = None
        self.model = None
        self.logger = None

    def set_loss_fn(self, loss_fn: Loss) -> None:
        """
        Sets the loss function

        Parameters
        ----------
        loss_fn: Loss
            The loss function to use. Default = None
        """
        self.loss_fn = loss_fn

    def set_model(self, model: NeuralNetwork) -> None:
        """
        Sets the loss function

        Parameters
        ----------
        model: NeuralNetwork
        The model to be trained. Default = None
        """
        self.model = model

    def set_logger(self, logger: Logger) -> None:
        self.logger = logger
        self.heuristic.set_logger(logger=self.logger)

    def initialise(self) -> None:
        """
        Initialisers function. Initialises the model
        """
        self.model.initialise()

    def evaluate(self,
                 features: tf.Tensor,
                 labels: tf.Tensor) -> Tuple[tf.Tensor, tf.Tensor]:
        """
        A single evaluation of the contained model against the loss function.

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
        # Evaluate model
        logits = self.model(features=features)
        loss = tf.reduce_mean(
            self.loss_fn(
                labels=labels,
                logits=logits
            )
        )
        return logits, loss
