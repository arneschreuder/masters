import tensorflow as tf

from ..initialisers import GlorotUniform, Initialiser, Zeros
from ..neural_networks import NeuralNetwork


class Entity:
    shape: tf.TensorShape = None
    position_initialiser: Initialiser = None
    velocity_initialiser: Initialiser = None
    position: tf.Variable = None
    velocity: tf.Variable = None
    model: NeuralNetwork = None

    def __init__(self,
                 position_initialiser: Initialiser = GlorotUniform(),
                 velocity_initialiser: Initialiser = Zeros()):
        self.shape = None
        self.position_initialiser = position_initialiser
        self.velocity_initialiser = velocity_initialiser
        self.position = None
        self.velocity = None
        self.model = None

    def set_model(self, model: NeuralNetwork):
        self.model = model
        params = model.get_trainable_variables_flat()
        dimensions = len(params)
        self.shape = [dimensions]

    def initialise(self):
        self.position = tf.Variable(
            initial_value=self.position_initialiser(shape=self.shape)
        )
        self.velocity = tf.Variable(
            initial_value=self.velocity_initialiser(shape=self.shape)
        )

    @tf.function
    def __call__(self, features):
        self.model.set_trainable_variables_flat(variables=self.position)
        return self.model(features=features)
