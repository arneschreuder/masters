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

import tensorflow as tf
from framework.initialisers.glorot_uniform import GlorotUniform
from framework.initialisers.initialiser import Initialiser
from framework.initialisers.zeros import Zeros
from framework.neural_networks.neural_network import NeuralNetwork

"""
Suppose you have some position function that is:

Position:
	f(x) = x^2 + x + c

then the velocity is the first-order derivative of that function such that:

Velocity:
	f'(x) = 2x + 1

and the acceleration is the second-order derivate of that function such that.

Acceleration:
	f''(x) = 2

From Physics:
Momentum is the unit-vector of the gradient for a given position relative
to some loss/error function. 

Momentum:
	momentum = mass*velocity
	p = m*v

In the case of momentum:

* Velocity is the gradient of the position
* Mass is the contribution of the gradient in each dimension.
* If mass = 1 for all dimensions, then this is equal to the unit-vector
* for the velocity/gradient.
* Momentum can also be considered as the moving average of the position.

Thus,
* x_(t+1) = x_(t+1) + delta_x
* delta_x = momentum

For gradient-based (analytical) optimisers, the goal of the optimiser
is to find the lowest point of energy i.e. the point at which no
movement is achieved. This point is known as an optimum. There are 
two types of optima: local and global.

The general position update rule of gradient-based optimisers is thus
to move the position in the negative direction of the gradient. If one 
considers the movement of the position towards a lower-energy, the update
rule for different optimisers are:


# Standard (Stochastic, Batch and Mini-Batch) Gradient Descent (SGD):
---------------------------------------------------------------------

x_(t+1) = x_t + delta_x_t

where

delta_x_t = -learning_rate*gradient



# SGD with Momentum (just called Momentum)
------------------------------------------

x_(t+1) = x_t + delta_x_t

where

delta_x_t = -learning_rate*(eta*v_t + (1-eta)*gradient)

here we need to maintain state, and thus
delta_x_t = v_(t) = -learning_rate*(eta*v_(t-1) + (1-eta)*gradient)

Notice, 

delta_x_t = -mass*velocity
where mass = learning rate
velocity = eta*v_t + (1-eta)*gradient

This makes sense, as the velocity is the delta_x that you want,
and is calculated here as some contribution of the past,
vs some contribution of new.

Andrew Ng, mentions https://www.youtube.com/watch?v=k8fTYJPd3_I at 5:26
that:

eta*v_t = is like velocity, while 
(1-eta)*gradient = is like acceleration
eta = is like friction

Technically, think of eta*v_t as m*v (momentum formula)
Note, initial "velocity" is 0


*velocity

# Adaptive Gradients (Adagrad)
----------------------------

x_(t+1) = x_t + delta_x_t

where

delta_x_t = -mass*gradient

where

mass = learning_rate/(sqrt(alpha_t + epsilon))

where

alpha_(t+1) = sum_(i=1)^t (gradient_t)^2 or
alpha_(t+1) = alpha_t + gradient^2

here we need to maintain state for alpha_t (sum of gradients squared)
Note alpha_t can become very large, rendering the adaptive learning rate very small, hindering updates.
Note, here alpha is the sum of the gradients.

For this, Adadelta and RMSProp is proposed


# Root-Mean-Squared Propagation (RMSProp)
-----------------------------------------

x_(t+1) = x_t + delta_x_t

where

delta_x_t = -mass*gradient

where

mass = learning_rate/(sqrt(alpha_t + epsilon))

where

alpha_(t+1) = gamma*alpha_t + (1 - gamma)*gradient^2

Same comments apply as for Adagrad.
Note, here alpha is the (exponential) weighted average of the gradients.
Technically speaking, it (sqrt(alpha_t + epsilon)) is the Root-Mean-Squared gradients


# Adaptive-delta Gradients (Adadelta)
-----------------------------------------

x_(t+1) = x_t + delta_x_t

where

delta_x_t = -mass*gradient

where

mass = learning_rate/(sqrt(alpha_t + epsilon))

where

alpha_(t+1) = gamma*alpha_t + (1 - gamma)*gradient^2

Same comments apply as for Adagrad.
Note, here alpha is the (exponential) weighted average of the gradients.
Technically speaking, it (sqrt(alpha_t + epsilon)) is the Root-Mean-Squared gradients.
We refer to this term as the expected value (average) of the squared gradients (E_gradients_squared) for timestemp t.
We need to mainstain the state of the E_gradients_squared
Note: E_gradients_squared == RMS_gradient

Finally, to correct for the same units, the update rule is as follows:

x_(t+1) = x_t + delta_x_t

where

delta_x_t = -mass*gradient

mass = RMS[delta_position]_(t-1)/RMS[gradient]_t

where 

RMS[delta_position]_t = sqrt(E[delta_position^2]_t+epsilon)

and 

E[delta_position^2]_(t+1) = gamma*E[delta_position^2]_t + (1 - gamma)*delta_position^2

and

RMS[gradient]_t = sqrt(E[gradient^2]_t+epsilon)

and 

E[gradient^2]_(t+1) = gamma*E[gradient^2]_t + (1 - gamma)*gradient^2


# Adaptive Momentum (Adam)
-----------------------------------------

m_t= beta1*m_(t-1) + (1 - beta1)*gradient # This is the estimate of the first moment (mean) of the gradient
v_t= beta1*v_(t-1) + (1 - beta1)*gradient^2 # This is the estimate of the second moment (uncentered variance) of the gradient

m_t and v_t initialised to 0, but this has a bias towards zero.

We then apply bias correction

m_hat_t = m_t/(1-beta1)
v_hat_t = v_t/(1-beta2)

We then apply

x_(t+1) = x_t + delta_x_t

where

delta_x_t = -mass*gradient_estimation

where

mass = learning_rate/sqrt(v_hat_t + epsilon) and
gradient_estimation = m_hat_t

m_t and v_t need to be kept in state.
These should map to other heuristic's equivalent.



Questions?
----------

Is delta_x_t then velocity? I think so yes.
If this is the case, do we even need a momentum state? I think not.
First moment = Expected value = Average?

"""


class Entity:
    # State
    shape: tf.TensorShape = None
    position: tf.Variable = None
    velocity: tf.Variable = None
    acceleration: tf.Variable = None
    gradient: tf.Variable = None
    delta_position: tf.Variable = None
    sum_gradients_squared: tf.Variable = None
    loss: tf.Variable = None

    # Initialisers
    position_initialiser: Initialiser = None
    velocity_initialiser: Initialiser = None
    acceleration_initialiser: Initialiser = None
    delta_position_initialiser: Initialiser = None
    sum_gradients_squared_initialiser: Initialiser = None

    # pbest_position: tf.Variable = None  # Sorted

    # velocity: tf.Variable = None

    # # Not really a state, but we can keep this to have a snapshot
    # gradient: tf.Variable = None
    # gradient_squared: tf.Variable = None # Used by Adadelta
    # gradient_m1: tf.Variable = None # Used by Adam
    # gradient_m2: tf.Variable = None # Used by Adam
    # # Wondering if we can just ignore this, since we have velocity
    # momentum: tf.Variable = None
    # # Wondering if this isnt just the velocity, but we might have to maintain this state
    # delta_position: tf.Variable = None # Might need to Adadelta
    # E_delta_position_squared: tf.Variable = None # Needed for Adadelta
    # delta_position_m2: tf.Variable = None
    # E_gradient_m1: tf.Variable = None
    # E_gradient_m2: tf.Variable = None
    # E_gradient_squared: tf.Variable = None # Needed for Adadelta
    # sum_gradient_squared: tf.Variable = None  # See Adagrad, alpha_t

    # # The metrics
    # pbest_loss: tf.Variable = None  # Sorted

    def __init__(self, position_initialiser: Initialiser = GlorotUniform()):
        self.shape = None
        self.position = None
        self.velocity = None
        self.acceleration = None
        self.gradient = None
        self.delta_position = None
        self.sum_gradients_squared = None
        self.loss = None
        self.position_initialiser = position_initialiser
        self.velocity_initialiser = Zeros()
        self.acceleration_initialiser = Zeros()
        self.delta_position_initialiser = Zeros()
        self.sum_gradients_squared_initialiser = Zeros()

    def initialise(self):
        self.position = tf.Variable(
            initial_value=self.position_initialiser(shape=self.shape)
        )
        self.velocity = tf.Variable(
            initial_value=self.velocity_initialiser(shape=self.shape)
        )
        self.acceleration = tf.Variable(
            initial_value=self.acceleration_initialiser(shape=self.shape)
        )
        self.delta_position = tf.Variable(
            initial_value=self.delta_position_initialiser(shape=self.shape)
        )
        self.sum_gradients_squared = tf.Variable(
            initial_value=self.sum_gradients_squared_initialiser(
                shape=self.shape)
        )
