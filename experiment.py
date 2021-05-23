import tensorflow as tf

import framework as fw

# Constants
SEED = 1
LEAKY_RELU_ALPHA = 0.2
MAX_EPOCHS = 1000

tf.random.set_seed(seed=SEED)

# Initialiser
glorot_uniform = fw.initialisers.GlorotUniform(seed=SEED)
ones = fw.initialisers.Ones()

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

# Experiment
dataset = fw.datasets.Iris(seed=SEED)
loss_fn = fw.losses.SparseCategorical()
optimiser = fw.optimisers.SGD()
optimiser.set_model(model=model)
optimiser.set_loss_fn(loss_fn=loss_fn)
optimiser.initialise()


# @tf.function
def train():
    for e in tf.range(MAX_EPOCHS):
        for features, labels in dataset.training:
            logits, loss = optimiser(features=features, labels=labels)
            tf.print(loss, summarize=-1)


train()
