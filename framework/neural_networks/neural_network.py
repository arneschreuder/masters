from typing import List

import tensorflow as tf

from ..layers import Layer


class NeuralNetwork:
    layers: List[Layer] = None

    def __init__(self, layers: List[Layer]):
        self.layers = layers

    @tf.function
    def __call__(self, features: tf.Tensor):
        pass
