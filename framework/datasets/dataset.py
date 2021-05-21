from typing import List

import tensorflow as tf


class Dataset:
    features: List[str] = None
    label: str = None
    classes: List[str] = None
    columns: List[str] = None
    shuffle_sizel: int = None
    batch_size: int = None

    seed: int = None
    training: tf.data.Dataset = None
    validation: tf.data.Dataset = None
    test: tf.data.Dataset = None

    def __init__(self, seed=None):
        self.features = None
        self.label = None
        self.classes = None
        self.columns = None
        self.shuffle_sizel = None
        self.batch_size = None
        self.seed = seed
        self.training = None
        self.validation = None
        self.test = None
