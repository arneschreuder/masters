from re import L

import tensorflow as tf
from framework.losses.loss import Loss


class SparseCategorical(Loss):
    def __init__(self):
        super(SparseCategorical, self).__init__()

    def __call__(self, logits: tf.Tensor, labels: tf.Tensor) -> tf.Tensor:
        return tf.reduce_mean(
            tf.losses.sparse_categorical_crossentropy(
                y_true=labels,
                y_pred=logits,
                from_logits=True
            )
        )
