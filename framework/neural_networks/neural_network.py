from typing import List

import tensorflow as tf
from framework.layers.layer import Layer
from framework.utilities.utilities import flatten, reshape


class NeuralNetwork:
    layers: List[Layer] = None

    def __init__(self, layers: List[Layer]):
        self.layers = layers

    def initialise(self):
        for layer in self.layers:
            layer.initialise()

    # @tf.function
    def get_shapes(self):
        shapes = []

        for layer in self.layers:
            shape = layer.shape
            shapes.append(shape)

        return shapes

    def get_parameters(self):
        parameters = []

        for layer in self.layers:
            p = layer.get_parameters()
            parameters.append(p)

        return parameters

    # @tf.function
    def set_parameters(self, parameters):
        for layer, p in zip(self.layers, parameters):
            layer.set_parameters(parameters=p)

    # @tf.function
    def get_parameters_flat(self):
        parameters = self.get_parameters()
        return flatten(parameters=parameters)

    # @tf.function
    def set_parameters_flat(self, parameters_flat):
        shapes = self.get_shapes()
        parameters = reshape(parameters_flat=parameters_flat, shapes=shapes)
        self.set_parameters(parameters=parameters)

    # @tf.function
    def __call__(self, features: tf.Tensor):
        pass
