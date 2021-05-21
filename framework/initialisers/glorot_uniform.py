import tensorflow as tf

from .initialiser import Initialiser


class GlorotUniform(Initialiser):
    seed = None

    def __init__(self, seed: int = None) -> None:
        super(GlorotUniform, self).__init__(
            instance=tf.initializers.glorot_uniform(seed=seed)
        )
        self.seed = seed
