import tensorflow as tf
from framework.initialisers.glorot_uniform import GlorotUniform
from framework.initialisers.initialiser import Initialiser
from framework.initialisers.zeros import Zeros
from framework.neural_networks.neural_network import NeuralNetwork


class Entity:
    shape: tf.TensorShape = None
    position_initialiser: Initialiser = None
    velocity_initialiser: Initialiser = None
    position: tf.Variable = None
    velocity: tf.Variable = None

    def __init__(self,
                 position_initialiser: Initialiser = GlorotUniform(),
                 velocity_initialiser: Initialiser = Zeros()):
        self.shape = None
        self.position_initialiser = position_initialiser
        self.velocity_initialiser = velocity_initialiser
        self.position = None
        self.velocity = None
        self.model = None

    def map_model(self, model: NeuralNetwork):
        self.model = model
        parameters = model.get_parameters_flat()
        dimensions = len(parameters)
        self.shape = [dimensions]

    def initialise(self):
        self.position = tf.Variable(
            initial_value=self.position_initialiser(shape=self.shape)
        )
        self.velocity = tf.Variable(
            initial_value=self.velocity_initialiser(shape=self.shape)
        )
