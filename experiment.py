import tensorflow as tf

import framework as fw

# Constants
SEED = 1
LEAKY_RELU_ALPHA = 0.2
MAX_EPOCHS = 1000

# Activations
features = tf.constant([[-1.0, -1.0, -1.0, -1.0]])
activation = fw.activations.Activation()
tf.print(activation(features), summarize=-1)

leaky_relu = fw.activations.LeakyReLU(alpha=LEAKY_RELU_ALPHA)
tf.print(leaky_relu(features), summarize=-1)

# Initialisers
glorot_uniform = fw.initialisers.GlorotUniform(seed=SEED)
x = glorot_uniform([10, 10])
tf.print(x, summarize=-1)

# Dense Layers
dense = fw.layers.Dense(
    shape=[4, 5],
    activation=fw.activations.LeakyReLU(alpha=LEAKY_RELU_ALPHA)
)

tf.print(dense.weights)
tf.print(dense.biases)
tf.print(dense(features))

model: fw.neural_networks.NeuralNetwork = fw.neural_networks.Feedforward(
    layers=[
        fw.layers.Dense(
            shape=[4, 5],
            activation=fw.activations.LeakyReLU(alpha=LEAKY_RELU_ALPHA)
        ),
        fw.layers.Dense(shape=[4, 5])
    ]
)


for e in tf.range(MAX_EPOCHS):
    tf.print(model(features))
