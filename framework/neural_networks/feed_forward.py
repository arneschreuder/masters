from typing import List

import tensorflow as tf

from ..layers import Layer
from .neural_network import NeuralNetwork


class Feedforward(NeuralNetwork):
    def __init__(self, layers: List[Layer]):
        super(Feedforward, self).__init__(layers=layers)

    @tf.function
    def __call__(self, features: tf.Tensor) -> tf.Tensor:
        output = features

        for layer in self.layers:
            output = layer(features=output)

        return output
