import tensorflow as tf

import framework as fw
from framework.initialisers import glorot_uniform

# Constants
SEED = 1
LEAKY_RELU_ALPHA = 0.2
MAX_EPOCHS = 10

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


model.initialise()
entity = fw.entities.Entity()
entity.set_model(model)
entity.initialise()
tf.print(entity.position, summarize=-1)
tf.print(entity.velocity, summarize=-1)


# Experiment

dataset = fw.datasets.Iris(seed=SEED)
loss_fn = fw.losses.SparseCategorical()


@tf.function
def train():
    for e in tf.range(MAX_EPOCHS):
        for features, labels in dataset.training:
            logits = entity(features)
            loss = loss_fn(logits=logits, labels=labels)
            tf.print(loss, summarize=-1)


train()
