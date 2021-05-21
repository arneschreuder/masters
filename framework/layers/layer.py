import tensorflow as tf


class Layer:
    def __init__(self):
        pass

    @tf.function
    def __call__(self, features: tf.Tensor) -> tf.Tensor:
        pass
