from typing import List

import tensorflow as tf


@tf.function
def flatten(parameters: List[List[tf.Tensor]]) -> tf.Tensor:
    # Make temporary array for parameters
    parameters_flat = []

    for p in parameters:
        # Flatten weights and biases by reshaping and removing 1 dimension
        weights = tf.reshape(p[0], [-1])
        biases = tf.reshape(p[1], [-1])

        # Join flattened weights and biases
        temp = tf.concat([weights, biases], axis=0)

        # Add flattened segment to parameters
        parameters_flat.append(temp)

    # Join all flattened segments into one tensor
    parameters_flat = tf.concat(parameters_flat, axis=0)
    return parameters_flat


@tf.function
def reshape(parameters_flat: tf.Tensor, shapes: List[tf.TensorShape]) -> List[List[tf.Tensor]]:
    # Create placeholders
    temp = parameters_flat
    parameters_reshaped = []

    for shape in shapes:
        # Extract later shape and assign to input and hidden units
        input = shape[0]
        hidden = shape[1]

        # Extract flat segments
        weights_segment = tf.slice(temp, [0], [input*hidden])
        biases_segment = tf.slice(temp, [input*hidden], [hidden])

        # Reshape segments into relevant layer shapes
        weights = tf.reshape(weights_segment, shape)
        biases = tf.reshape(biases_segment, [1, shape[1]])

        # Add reshaped parameters
        parameters_reshaped.append([
            weights,
            biases
        ])

        # Slice of the segment that has already been reshaped
        temp = tf.slice(
            temp,
            begin=[input*hidden + hidden],
            size=[len(temp) - (input*hidden + hidden)]
        )

    # Return the reshaped parameters
    return parameters_reshaped
