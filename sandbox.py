import tensorflow as tf

import framework as fw
from framework.layers import layer

dataset = fw.datasets.Iris()

model = tf.keras.models.Sequential([
    tf.keras.layers.Input(4),
    tf.keras.layers.Dense(5, activation='relu'),
    tf.keras.layers.Dense(3),
])

loss_fn = tf.keras.losses.SparseCategoricalCrossentropy(from_logits=True)

model.compile(optimizer='adam',
              loss=loss_fn,
              metrics=['accuracy'])
model.build()

tf.print(model.summary())

w = model.get_weights()
tf.print(w, summarize=-1)
tf.print(type(w), summarize=-1)
tf.print(w[0], summarize=-1)
tf.print(type(w[0]), summarize=-1)
