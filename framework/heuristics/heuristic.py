import tensorflow as tf
from framework.losses.loss import Loss
from framework.neural_networks.neural_network import NeuralNetwork


class Heuristic:
    loss_fn = None
    model = None

    def __init__(self):
        self.loss_fn = None
        self.model = None

    def set_loss_fn(self, loss_fn: Loss):
        self.loss_fn = loss_fn

    def set_model(self, model: NeuralNetwork):
        self.model = model

    def initialise(self):
        self.model.initialise()

    @tf.function
    def __call__(self, features: tf.Tensor, labels: tf.Tensor):
        pass
