import tensorflow as tf

import framework as fw
from framework.initialisers import glorot_uniform

# Constants
SEED = 1
LEAKY_RELU_ALPHA = 0.2
MAX_EPOCHS = 10

# Activations
features = tf.constant([[-1.0, -1.0, -1.0, -1.0]])

# Initialiser
glorot_uniform = fw.initialisers.GlorotUniform(seed=SEED)
ones = fw.initialisers.Ones()

x = [
    [
        tf.constant(ones([4, 5])),
        tf.constant(ones([1, 5]))
    ],
    [
        tf.constant(ones([5, 3])),
        tf.constant(ones([1, 3]))
    ],
]

# Model
model = fw.neural_networks.Feedforward(
    layers=[
        fw.layers.Dense(
            shape=[4, 5],
            activation=fw.activations.LeakyReLU(
                alpha=LEAKY_RELU_ALPHA
            )
        ),
        fw.layers.Dense(shape=[5, 3])
    ]
)


def initialise():
    model.initialise()
    model.set_trainable_variables(x)
    temp = model.get_trainable_variables()
    tf.print(temp)


# Experiment
@tf.function
def train():
    for e in tf.range(MAX_EPOCHS):
        logits = model(features)
        tf.print(logits)


initialise()
train()

# ones = fw.initialisers.Ones()
# model.load([[ones([4, 5]), ones([1, 5])], [ones([5, 3]), ones([1, 3])]])
