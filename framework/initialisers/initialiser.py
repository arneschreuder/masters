import tensorflow as tf


class Initialiser:
    instance: tf.initializers.Initializer = None

    def __init__(self, instance: tf.initializers.Initializer = None):
        self.instance = instance

    @tf.function
    def __call__(self, shape: tf.TensorShape) -> tf.Tensor:
        return self.instance(shape)
