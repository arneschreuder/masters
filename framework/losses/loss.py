import tensorflow as tf


class Loss:
    def __init__(self):
        pass

    def __call__(self, logits: tf.Tensor, labels: tf.Tensor) -> tf.Tensor:
        return tf.reduce_mean(labels - logits)
