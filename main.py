import tensorflow as tf

import framework as fw

# Constants
SEED = 1

# Initialisers
glorot_uniform = tf.initializers.glorot_uniform(seed=SEED)

# Dataset
training_set = fw.datasets.iris(seed=SEED)

# Model
model = fw.models.iris

# Positions/Parameters
x = [
    [
        tf.Variable(glorot_uniform([4, 5])),
        tf.Variable(glorot_uniform([1, 5]))
    ],
    [
        tf.Variable(glorot_uniform([5, 3])),
        tf.Variable(glorot_uniform([1, 3]))
    ]
]

tf.print("BEFORE")
tf.print("-----------------------------")
tf.print(x)
tf.print("-----------------------------")

tf.print("FLATTENED")
tf.print("-----------------------------")
var = fw.utilities.flatten(x)
tf.print(var)
tf.print("-----------------------------")

tf.print("AFTER")
tf.print("-----------------------------")
x = fw.utilities.stack(var, [
    [4, 5],
    [5, 3]
])
tf.print(x)
tf.print("-----------------------------")

loss_fn = fw.losses.sparse_categorical_crossentropy


@tf.function
def train():
    for features, labels in training_set:
        with tf.GradientTape() as tape:
            logits = model(features, x)
            loss = loss_fn(labels, logits)
            grads = tape.gradient(loss, x)
            tf.print(grads)


train()
