import tensorflow as tf
from framework.schedules.schedule import Schedule


class Exponential(Schedule):
    def __init__(self, initial: float, steps: int, rate: float, staircase: bool = True):
        super(Exponential, self).__init__(
            instance=tf.keras.optimizers.schedules.ExponentialDecay(
                initial_learning_rate=initial,
                decay_steps=steps,
                decay_rate=rate,
                staircase=staircase
            )
        )
