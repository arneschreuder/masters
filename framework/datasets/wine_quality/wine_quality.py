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


class WineQuality(Dataset):
    """
    The implementation of the WineQuality dataset
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
        super(WineQuality, self).__init__(seed=seed)
        # Set attribute values
        self.train_url_red = 'framework/datasets/wine_quality/wine_quality-red.csv'
        self.train_url_white = 'framework/datasets/wine_quality/wine_quality-white.csv'
        self.features = [
            "fixed_acidity",
            "volatile_acidity",
            "citric_acid",
            "residual_sugar",
            "chlorides",
            "free_sulfur_dioxide",
            "total_sulfur_dioxide",
            "density",
            "pH",
            "sulphates",
            "alcohol"
        ]
        self.label = "quality"
        self.columns = self.features + [self.label]
        self.dtype = {
            "fixed_acidity": "float32",
            "volatile_acidity": "float32",
            "citric_acid": "float32",
            "residual_sugar": "float32",
            "chlorides": "float32",
            "free_sulfur_dioxide": "float32",
            "total_sulfur_dioxide": "float32",
            "density": "float32",
            "pH": "float32",
            "sulphates": "float32",
            "alcohol": "float32",
            "quality": "category"
        }
        self.batch_size = batch_size
        self.shuffle_size = 1024
        self.test_set_size = 0.2

        # Set random seed
        tf.random.set_seed(self.seed)
        random.seed(self.seed)

        # Load data from file
        red_data = pd.read_csv(os.path.join(os.path.abspath(os.getcwd()), self.train_url_red),
                               names=self.columns, dtype=self.dtype, index_col=False, skipinitialspace=True, delimiter=';', skiprows=1)
        white_data = pd.read_csv(os.path.join(os.path.abspath(os.getcwd()), self.train_url_white),
                                 names=self.columns, dtype=self.dtype, index_col=False, skipinitialspace=True, delimiter=';', skiprows=1)
        # Merge two datasets
        self.features = self.features + ['type']
        self.columns = self.columns + ['type']

        red_data['type'] = 'red'
        white_data['type'] = 'white'

        data = red_data.append(white_data)
        data['type'] = data['type'].astype("category")
        data = data.reset_index(drop=True)

        # Missing values
        data = data.dropna()

        # Normalise Features
        for feature in self.features:
            if data[feature].dtype == "float32":
                # min_max_scaler = preprocessing.MinMaxScaler()
                # data[[feature]] = min_max_scaler.fit_transform(data[[feature]])
                standard_scaler = preprocessing.StandardScaler()
                data[[feature]] = standard_scaler.fit_transform(
                    data[[feature]])

        # Correct the data types
        data = data.astype(dtype=self.dtype)

        for column in self.columns:
            if data[column].dtype.name == "category":
                labelencoder = preprocessing.LabelEncoder()
                data[column] = labelencoder.fit_transform(data[column])
                categories = data[column].unique()
                data[column] = data[column].astype(
                    pd.CategoricalDtype(categories=categories))

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
