import tensorflow as tf


class Schedule:
    instance: tf.keras.optimizers.schedules.LearningRateSchedule = None

    def __init__(self, instance: tf.keras.optimizers.schedules.LearningRateSchedule):
        self.instance = instance

    def __call__(self, step) -> float:
        return self.instance(step=step)
