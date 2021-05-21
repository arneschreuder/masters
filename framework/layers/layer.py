import tensorflow as tf


class Layer:
    def __init__(self):
        pass

    def initialise(self):
        pass

    @tf.function
    def __call__(self, features: tf.Tensor) -> tf.Tensor:
        pass

    @tf.function
    def get_trainable_variables(self):
        return [self.weights, self.biases]

    @tf.function
    def set_trainable_variables(self, variables):
        self.weights.assign(variables[0])
        self.biases.assign(variables[1])
