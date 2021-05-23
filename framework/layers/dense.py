import tensorflow as tf
from framework.activations.activation import Activation
from framework.initialisers.glorot_uniform import GlorotUniform
from framework.initialisers.initialiser import Initialiser
from framework.layers.layer import Layer


class Dense(Layer):
    shape: tf.TensorShape = None
    activation: Activation = None
    weights_initialiser: Initialiser = None
    biases_initialiser: Initialiser = None
    weights: tf.Variable = None
    biases: tf.Variable = None

    def __init__(self,
                 shape: tf.TensorShape,
                 activation: Activation = None,
                 weights_initialiser: Initialiser = GlorotUniform(),
                 biases_initialiser: Initialiser = GlorotUniform()):
        super(Dense, self).__init__()

        # Shape & Activation
        self.shape = shape
        self.activation = activation

        # Initialisers
        self.weights_initialiser = weights_initialiser
        self.biases_initialiser = biases_initialiser

        # State
        self.weights = None
        self.biases = None

    def initialise(self):
        # State
        self.weights = tf.Variable(
            initial_value=self.weights_initialiser(shape=self.shape)
        )
        self.biases = tf.Variable(
            initial_value=self.weights_initialiser(shape=[1, self.shape[1]])
        )

    # @tf.function
    def __call__(self, features: tf.Tensor) -> tf.Tensor:
        net = features @ self.weights + self.biases

        if self.activation is None:
            return net

        return self.activation(features=net)
