from re import L

import tensorflow as tf

from .loss import Loss


class SparseCategorical(Loss):
    def __init__(self):
        super(SparseCategorical, self).__init__()

    @tf.function
    def __call__(self, logits: tf.Tensor, labels: tf.Tensor) -> tf.Tensor:
        return tf.losses.sparse_categorical_crossentropy(
            y_true=labels,
            y_pred=logits,
            from_logits=True
        )
