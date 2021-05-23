import tensorflow as tf
from framework.activations.activation import Activation


class LeakyReLU(Activation):
    alpha = None

    def __init__(self, alpha: int = 0.2):
        super(LeakyReLU, self).__init__()
        self.alpha = alpha

    # @tf.function
    def __call__(self, features: tf.Tensor) -> tf.Tensor:
        return tf.nn.leaky_relu(features=features, alpha=self.alpha)
