import tensorflow as tf

from .initialiser import Initialiser


class Ones(Initialiser):
    def __init__(self) -> None:
        super(Ones, self).__init__(
            instance=tf.initializers.Ones(),
        )
