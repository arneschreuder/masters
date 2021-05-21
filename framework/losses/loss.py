import tensorflow as tf


class Loss:
    def __init__(self):
        pass

    @tf.function
    def __call__(self, logits: tf.Tensor, labels: tf.Tensor) -> tf.Tensor:
        return labels - logits
