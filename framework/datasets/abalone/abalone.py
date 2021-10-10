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
from sklearn import preprocessing
from sklearn.model_selection import train_test_split


class Abalone(Dataset):
    """
    The implementation of the Abalone dataset
    """

    def __init__(self, batch_size: int = 30, seed: int = None):
        """
        Params
        ------
        batch_size: int
            Batch size. Default = 30
        seed: int
            Random seed value. Default = None
        """
        super(Abalone, self).__init__(seed=seed)
        self.train_url = 'https://archive.ics.uci.edu/ml/machine-learning-databases/abalone/abalone.data'
        self.test_url = None

        # Set attribute values
        self.features = [
            "sex",
            "length",
            "diameter",
            "height",
            "whole_weight",
            "shucked_weight",
            "viscera_weight",
            "shell_weight"
        ]
        self.label = "rings"
        self.columns = self.features + [self.label]
        self.batch_size = batch_size
        self.shuffle_size = 1024
        self.test_set_size = 0.3

        # Load data from file
        data = pd.read_csv(self.train_url, names=self.columns)

        # Normalise Features
        for feature in self.features:
            if data[feature].dtype == "float64":
                # min_max_scaler = preprocessing.MinMaxScaler()
                # data[[feature]] = min_max_scaler.fit_transform(data[[feature]])
                standard_scaler = preprocessing.StandardScaler()
                data[[feature]] = standard_scaler.fit_transform(
                    data[[feature]])

        # Label Encode
        labelencoder = preprocessing.LabelEncoder()
        data[self.label] = labelencoder.fit_transform(data[self.label])

        # Preparing for environment, runtime preprocessing
        # Float64 -> Float32
        for feature in self.features:
            if data[feature].dtype == "float64":
                data[feature] = data[feature].astype("float32")

        # Object -> Category
        data[self.label] = data[self.label].astype("category")

        # Split features and labels
        target = data.pop(self.label)

        # Get dummies (one_hot encodings)
        data = pd.get_dummies(data)

        # Split train and test set
        train_x, test_x, train_y, test_y = train_test_split(
            data, target, test_size=self.test_set_size, train_size=1.0-self.test_set_size, shuffle=True)

        # Set training dataset
        self.train = tf.data.Dataset.from_tensor_slices(
            (train_x.values, train_y.values))
        self.train = self.train.shuffle(
            self.shuffle_size,
            seed=self.seed
        )
        self.train = self.train.batch(self.batch_size)

        # Set testing dataset
        self.test = tf.data.Dataset.from_tensor_slices(
            (test_x.values, test_y.values))
        self.test = self.test.shuffle(
            self.shuffle_size,
            seed=self.seed
        )
        self.test = self.test.batch(self.batch_size)
