# The MIT License (MIT)
# =====================

# Copyright  Arné Schreuder

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

import tensorflow as tf
from framework.activations.leaky_relu import LeakyReLU
from framework.layers.dense import Dense
from framework.neural_networks.feed_forward import Feedforward


class Adult(Feedforward):
    """
    Adult model. 

    Input Units: 108
    Hidden Units: 64
    Output Units: 1

    Consists out of 2 layers.
    Last layer has no activation as it is not needed during training.
    """

    def __init__(self):
        super(Adult, self).__init__(
            layers=[
                Dense(
                    shape=[108, 64],
                    activation=LeakyReLU(alpha=0.3)
                ),
                Dense(shape=[64, 1])
            ]
        )
