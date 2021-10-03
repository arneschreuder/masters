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

from typing import List

import tensorflow as tf


class Dataset:
    """
    The base class used for datasets

    Attributes
    -----------
    batch_size: int
        Specifies the mini-batch size. Default = None
    classes: List[str]
        A list of strings that contain the different classes. Default = None
    columns: List[str]
        A list of strings that contain the different column headings. Default = None
    features: List[str]
        A list of strings that contain the different features' headings. Default = None
    label: str
        The column heading of the label column. Default = None
    seed: int
        Random seed value. Default = None
    shuffle_size: int
        Specifies the number of items to include in shuffle process. Default = None
    test: tf.data.Dataset
        Contains the test dataset. Default = None
    training: tf.data.Dataset
        Contains the training dataset. Default = None
    """
    batch_size: int = None
    classes: List[str] = None
    columns: List[str] = None
    features: List[str] = None
    label: str = None
    seed: int = None
    shuffle_size: int = None
    test: tf.data.Dataset = None
    training: tf.data.Dataset = None
    test_set_size: int = None

    def __init__(self, seed: int = None):
        """
        Params
        ------
        seed: int
            Random seed value. Default = None
        """
        self.batch_size = None
        self.classes = None
        self.columns = None
        self.features = None
        self.label = None
        self.seed = seed
        self.shuffle_size = None
        self.test = None
        self.training = None
        self.test_set_size = None
