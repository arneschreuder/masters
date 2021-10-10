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


class Adult(Dataset):
    """
    The implementation of the Adult dataset
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
        super(Adult, self).__init__(seed=seed)
        # Set attribute values
        self.train_url = 'framework/datasets/adult/adult.data'
        self.test_url = 'framework/datasets/adult/adult.test'
        self.features = [
            "age",
            "workclass",
            "fnlwgt",
            "education",
            "education_num",
            "marital_status",
            "occupation",
            "relationship",
            "race",
            "sex",
            "capital_gain",
            "capital_loss",
            "hours_per_week",
            "native_country"
        ]
        self.label = "income"
        self.columns = self.features + [self.label]
        self.dtype = {
            "age": "float32",
            "workclass": "category",
            "fnlwgt": "float32",
            "education": "category",
            "education_num": "float32",
            "marital_status": "category",
            "occupation": "category",
            "relationship": "category",
            "race": "category",
            "sex": "category",
            "capital_gain": "float32",
            "capital_loss": "float32",
            "hours_per_week": "float32",
            "native_country": "category",
            "income": "category"
        }
        self.batch_size = batch_size
        self.shuffle_size = 1024
        self.test_set_size = None

        # Set random seed
        tf.random.set_seed(self.seed)
        random.seed(self.seed)

        # Load data from file
        train_data = pd.read_csv(os.path.join(os.path.abspath(os.getcwd()), self.train_url),
                                 names=self.columns, dtype=self.dtype, index_col=False, skipinitialspace=True)
        test_data = pd.read_csv(os.path.join(os.path.abspath(os.getcwd()), self.test_url),
                                names=self.columns, dtype=self.dtype, index_col=False, skiprows=1, skipinitialspace=True)

        # Missing values
        train_data = train_data.dropna()
        test_data = test_data.dropna()

        # Normalise Features
        for feature in self.features:
            if train_data[feature].dtype == "float32":
                # min_max_scaler = preprocessing.MinMaxScaler()
                # train_data[[feature]] = min_max_scaler.fit_transform(train_data[[feature]])
                standard_scaler = preprocessing.StandardScaler()
                train_data[[feature]] = standard_scaler.fit_transform(
                    train_data[[feature]])

        # Set categories
        for feature in self.features:
            if train_data[feature].dtype.name == "category":
                categories = train_data[feature].unique()
                train_data[feature] = train_data[feature].astype(
                    pd.CategoricalDtype(categories=categories))
                test_data[feature] = test_data[feature].astype(
                    pd.CategoricalDtype(categories=categories))

        # Correct the train_data types
        train_data = train_data.astype(dtype=self.dtype)
        train_data.dtypes

        for feature in self.features:
            if test_data[feature].dtype == "float32":
                # min_max_scaler = preprocessing.MinMaxScaler()
                # test_data[[feature]] = min_max_scaler.fit_transform(test_data[[feature]])
                standard_scaler = preprocessing.StandardScaler()
                test_data[[feature]] = standard_scaler.fit_transform(
                    test_data[[feature]])

        # Correct the test_data types
        test_data = test_data.astype(dtype=self.dtype)

        # Label Encode
        labelencoder = preprocessing.LabelEncoder()
        train_data[self.label] = labelencoder.fit_transform(
            train_data[self.label])
        labelencoder = preprocessing.LabelEncoder()
        test_data[self.label] = labelencoder.fit_transform(
            test_data[self.label])

        # Pop target
        train_target = train_data.pop(self.label)
        test_target = test_data.pop(self.label)

        # One-hot encode
        train_data = pd.get_dummies(train_data, dtype="float32")
        test_data = pd.get_dummies(test_data, dtype="float32")

        # Set training dataset
        self.train = tf.data.Dataset.from_tensor_slices(
            (train_data.values, train_target.values))
        self.train = self.train.shuffle(
            self.shuffle_size,
            seed=self.seed
        )
        self.train = self.train.batch(self.batch_size)

        # Set testing dataset
        self.test = tf.data.Dataset.from_tensor_slices(
            (test_data.values, test_target.values))
        self.test = self.test.shuffle(
            self.shuffle_size,
            seed=self.seed
        )
        self.test = self.test.batch(self.batch_size)
