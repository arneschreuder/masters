import tensorflow as tf

import framework as fw

# Constants
SEED = 1
LEAKY_RELU_ALPHA = 0.2

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
