import tensorflow as tf

from ..initialisers import GlorotUniform, Initialiser, Zeros


class Entity:
    shape: tf.TensorShape = None
    position_initialiser: Initialiser = None
    velocity_initialiser: Initialiser = None
    position: tf.Variable = None
    velocity: tf.Variable = None

    def __init__(self,
                 shape: tf.TensorShape,
                 position_initialiser: Initialiser = GlorotUniform(),
                 velocity_initialiser: Initialiser = Zeros()):
        self.shape = shape
        self.position_initialiser = position_initialiser
        self.velocity_initialiser = velocity_initialiser

    def initialise(self):
        self.position = tf.Variable(
            initial_value=self.position_initialiser(shape=self.shape)
        )
        self.velocity = tf.Variable(
            initial_value=self.velocity_initialiser(shape=self.shape)
        )
