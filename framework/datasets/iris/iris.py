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

import os

import pandas as pd
import tensorflow as tf
import tensorflow_datasets as tfds
from framework.datasets.dataset import Dataset
from sklearn.model_selection import train_test_split


class Iris(Dataset):
    """
    The implementation of the Iris dataset
    """

    def __init__(self, batch_size: int = 150, seed: int = None):
        """
        Params
        ------
        seed: int
            Random seed value. Default = None
        """
        super(Iris, self).__init__(seed=seed)

        # Set attribute values
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
        self.batch_size = batch_size

        # Load data from file
        directory = os.path.dirname(os.path.abspath(__file__))
        file = "iris.csv"
        path = os.path.join(directory, file)
        data = pd.read_csv(path)

        # Preparing for environment, runtime preprocessing
        for feature in self.features:
            data[feature] = data[feature].astype("float32")

        data[self.label] = data[self.label].astype("category")

        # Split features and labels
        target = data.pop('species')

        train_x, test_x, train_y, test_y = train_test_split(
            data, target, test_size=0.1, train_size=0.9, shuffle=True)

        # Set training dataset
        self.training = tf.data.Dataset.from_tensor_slices(
            (train_x.values, train_y.values))
        self.training = self.training.shuffle(
            self.shuffle_size,
            seed=self.seed
        )
        self.training = self.training.batch(self.batch_size)

        # Set testing dataset
        self.test = tf.data.Dataset.from_tensor_slices(
            (test_x.values, test_y.values))
        self.test = self.test.shuffle(
            self.shuffle_size,
            seed=self.seed
        )
        self.test = self.test.batch(self.batch_size)
