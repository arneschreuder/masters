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
import random

import pandas as pd
import tensorflow as tf
import tensorflow_datasets as tfds
from framework.datasets.dataset import Dataset
from sklearn import preprocessing
from sklearn.model_selection import train_test_split


class Mushroom(Dataset):
    """
    The implementation of the Mushroom dataset
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
        super(Mushroom, self).__init__(seed=seed)
        # Set attribute values
        self.train_url = 'framework/datasets/mushroom/mushroom.data'
        self.test_url = None
        self.features = [
            "cap_shape",
            "cap_surface",
            "cap_color",
            "bruises",
            "odor",
            "gill_attachment",
            "gill_spacing",
            "gill_size",
            "gill_color",
            "stalk_shape",
            "stalk_root",
            "stalk_surface_above_ring",
            "stalk_surface_below_ring",
            "stalk_color_above_ring",
            "stalk_color_below_ring",
            "veil_type",
            "veil_color",
            "ring_number",
            "ring_type",
            "spore_print_color",
            "population",
            "habitat"
        ]
        self.label = "edible"
        self.columns = [self.label] + self.features
        self.dtype = {
            "edible": "category",
            "cap_shape": "category",
            "cap_surface": "category",
            "cap_color": "category",
            "bruises": "category",
            "odor": "category",
            "gill_attachment": "category",
            "gill_spacing": "category",
            "gill_size": "category",
            "gill_color": "category",
            "stalk_shape": "category",
            "stalk_root": "category",
            "stalk_surface_above_ring": "category",
            "stalk_surface_below_ring": "category",
            "stalk_color_above_ring": "category",
            "stalk_color_below_ring": "category",
            "veil_type": "category",
            "veil_color": "category",
            "ring_number": "category",
            "ring_type": "category",
            "spore_print_color": "category",
            "population": "category",
            "habitat": "category"
        }
        self.batch_size = batch_size
        self.shuffle_size = 1024
        self.test_set_size = 0.2

        # Set random seed
        tf.random.set_seed(self.seed)
        random.seed(self.seed)

        # Load data from file
        data = pd.read_csv(os.path.join(os.path.abspath(os.getcwd()), self.train_url),
                           names=self.columns, dtype=self.dtype, index_col=False, skipinitialspace=True)

        # Missing values
        data = data.dropna()

        # # Normalise Features
        # for feature in self.features:
        #     if data[feature].dtype == "float32":
        #         # min_max_scaler = preprocessing.MinMaxScaler()
        #         # data[[feature]] = min_max_scaler.fit_transform(data[[feature]])
        #         standard_scaler = preprocessing.StandardScaler()
        #         data[[feature]] = standard_scaler.fit_transform(
        #             data[[feature]])

        # Correct the data types
        data = data.astype(dtype=self.dtype)

        # Set categories
        for column in self.columns:
            if data[column].dtype.name == "category":
                labelencoder = preprocessing.LabelEncoder()
                data[column] = labelencoder.fit_transform(data[column])
                categories=data[column].unique()
                data[column] = data[column].astype(pd.CategoricalDtype(categories=categories))

        # Pop target
        target = data.pop(self.label)

        # One-hot encode
        data = pd.get_dummies(data, dtype="float32")

        # Split train-test
        train_x, test_x, train_y, test_y = train_test_split(
            data, target, test_size=self.test_set_size)

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
