# The MIT License (MIT)
# =====================

# Copyright 2021 Arné Schreuder

# Permission is hereby granted, free of charge, to any person
# obtaining a copy of this software and associated documentation
# files (the “Software”), to deal in the Software without
# restriction, including without limitation the rights to use,
# copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the
# Software is furnished to do so, subject to the following
# conditions:

# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
# OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
# HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
# WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
# OTHER DEALINGS IN THE SOFTWARE.

from typing import List

import tensorflow as tf


def flatten(parameters: List[List[tf.Tensor]]) -> tf.Tensor:
    """
    Flattens a model's parameters from it's layered representation
    into a single, flat tensor.

    Parameters
    ----------
    parameters: List[List[tf.Tensor]]
        The model parameters to flatten


    Returns
    -------
    tf.Tensor
        The flattened parameters
    """
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


def reshape(
        parameters_flat: tf.Tensor,
        shapes: List[tf.TensorShape]) -> List[List[tf.Tensor]]:
    """
    Reshapes a flat representation back into a layered presentation.

    Parameters
    ----------
    parameters_flat: tf.Tensor
        The flattened parameters to reshape
    shapes: List[tf.TensorShape]
        The shapes to use for the reshape operation

    Returns
    -------
    List[List[tf.Tensor]]
        The layered representation of the parameters, shaped as per the
        shapes dimensionality.
    """
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

        # Move on to remaining slice
        temp = tf.slice(
            temp,
            begin=[input*hidden + hidden],
            size=[-1]
        )

    # Return the reshaped parameters
    return parameters_reshaped
