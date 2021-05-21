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
    def get_trainable_variables_flat(self):
        weights_flat = tf.reshape(self.weights, [-1])
        biases_flat = tf.reshape(self.biases, [-1])
        return tf.concat([weights_flat, biases_flat], axis=0)

    @tf.function
    def set_trainable_variables(self, variables):
        self.weights.assign(variables[0])
        self.biases.assign(variables[1])

    @tf.function
    def set_trainable_variables_flat(self, variables):
        input = self.shape[0]
        hidden = self.shape[1]
        weigths = tf.reshape(
            tf.slice(variables, [0], [input*hidden]),
            [input, hidden]
        )
        biases = tf.reshape(
            tf.slice(variables, [input*hidden], [hidden]),
            [1, hidden]
        )
        self.weights.assign(weigths)
        self.biases.assign(biases)
