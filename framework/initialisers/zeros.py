import tensorflow as tf

from .initialiser import Initialiser


class Zeros(Initialiser):
    def __init__(self) -> None:
        super(Zeros, self).__init__(
            instance=tf.initializers.zeros(),
        )
