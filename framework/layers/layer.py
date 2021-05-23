import tensorflow as tf


class Layer:
    def __init__(self):
        pass

    def initialise(self):
        pass

    def get_parameters(self):
        return [self.weights, self.biases]

    def set_parameters(self, parameters):
        self.weights.assign(parameters[0])
        self.biases.assign(parameters[1])

    def __call__(self, features: tf.Tensor) -> tf.Tensor:
        pass
