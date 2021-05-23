import tensorflow as tf
from framework.entities.entity import Entity
from framework.heuristics.heuristic import Heuristic
from framework.utilities.utilities import flatten, reshape


class SGD(Heuristic):
    learning_rate: float = None,
    momentum: float = None,
    nesterov: bool = None
    entity: Entity = None

    def __init__(self,
                 learning_rate: float = 0.01,
                 momentum: float = 0.9,
                 nesterov: bool = True):
        super(SGD, self).__init__()
        self.learning_rate: float = 0.01,
        self.momentum: float = 0.9,
        self.nesterov: bool = True
        self.entity: Entity = None

    def initialise(self):
        self.entity = Entity()
        self.entity.initialise()

    @tf.function
    def get_gradient(self, features, labels):
        with tf.GradientTape() as tape:
            parameters = self.model.get_parameters()
            logits = self.model(features=features)
            loss = tf.reduce_mean(
                self.loss_fn(
                    labels=labels,
                    logits=logits
                )
            )
            gradient = tape.gradient(
                target=loss, sources=parameters
            )
            return gradient

    @tf.function
    def step(self, position, velocity, gradient):
        if self.momentum == 0.0:
            position.assign_add(-self.learning_rate*gradient)
        else:
            velocity.assign(
                self.learning_rate*velocity - self.learning_rate*gradient
            )

            if self.nesterov:
                position.assign_add(
                    self.momentum*velocity - self.learning_rate*gradient
                )
            else:
                position.assign_add(velocity)

    @tf.function
    def evaluate(self, features, labels):
        # Evaluate model
        logits = self.model(features=features)
        loss = tf.reduce_mean(
            self.loss_fn(
                target=labels,
                output=logits
            )
        )
        return logits, loss

    @tf.function
    def __call__(self, features, labels):
        # Load model with solution
        self.model.set_parameters_flat(parameters=self.entity.position)

        # Calculate gradients
        gradient = self.get_gradient(features=features, labels=labels)
        gradient_flat = flatten(parameters=gradient)

        # Step and update position and velocity
        self.step(
            position=self.entity.position,
            velocity=self.entity.velocity,
            gradient=gradient_flat
        )

        # Evaluate current position
        self.model.set_parameters_flat(parameters=self.entity.position)
        logits, loss = self.evaluate(features=features, labels=labels)
        return logits, loss
