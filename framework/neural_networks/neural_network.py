from typing import List

import tensorflow as tf

from ..layers import Layer


class NeuralNetwork:
    layers: List[Layer] = None

    def __init__(self, layers: List[Layer]):
        self.layers = layers

    def initialise(self):
        for layer in self.layers:
            layer.initialise()

    @tf.function
    def __call__(self, features: tf.Tensor):
        pass

    @tf.function
    def get_trainable_variables(self):
        trainable_variables = []

        for layer in self.layers:
            variables = layer.get_trainable_variables()
            trainable_variables.append(variables)

        return trainable_variables

    @tf.function
    def set_trainable_variables(self, variables):
        for layer, v in zip(self.layers, variables):
            layer.set_trainable_variables(variables=v)
