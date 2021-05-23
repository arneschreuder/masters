from typing import Tuple

import tensorflow as tf
from framework.losses.loss import Loss
from framework.neural_networks.neural_network import NeuralNetwork


class Optimiser:
    loss_fn: Loss = None
    model: NeuralNetwork = None

    def __init__(self):
        self.loss_fn = None
        self.model = None

    def set_loss_fn(self, loss_fn: Loss) -> None:
        self.loss_fn = loss_fn

    def set_model(self, model: NeuralNetwork) -> None:
        self.model = model

    def initialise(self) -> None:
        self.model.initialise()

    def evaluate(self, features: tf.Tensor, labels: tf.Tensor) -> Tuple[tf.Tensor, tf.Tensor]:
        # Evaluate model
        logits = self.model(features=features)
        loss = tf.reduce_mean(
            self.loss_fn(
                labels=labels,
                logits=logits
            )
        )
        return logits, loss

    def __call__(self, features: tf.Tensor, labels: tf.Tensor):
        pass
