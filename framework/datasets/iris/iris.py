import os

import pandas as pd
import tensorflow as tf
import tensorflow_datasets as tfds

from ..dataset import Dataset


class Iris(Dataset):
    def __init__(self, seed=None):
        super(Iris, self).__init__(seed=seed)

        self.features = [
            "sepal_length",
            "sepal_width",
            "petal_length",
            "petal_width"
        ]
        self.label = "species"
        self.classes = ["setosa", "versicolor", "virginica"]
        self.columns = self.features + [self.label]
        self.shuffle_size = 150
        self.batch_size = 30

        directory = os.path.dirname(os.path.abspath(__file__))
        file = "iris.csv"
        path = os.path.join(directory, file)
        data = pd.read_csv(path)

        # Float64 -> Float32
        for feature in self.features:
            data[feature] = data[feature].astype("float32")

        data[self.label] = data[self.label].astype("category")

        target = data.pop('species')
        self.training = tf.data.Dataset.from_tensor_slices(
            (data.values, target.values))
        self.training = self.training.shuffle(
            self.shuffle_size,
            seed=self.seed
        )
        self.training = self.training.batch(self.batch_size)
