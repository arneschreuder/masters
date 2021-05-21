import tensorflow as tf


class Activation:
    def __init__(self):
        pass

    @tf.function
    def __call__(self, features: tf.Tensor) -> tf.Tensor:
        return features
