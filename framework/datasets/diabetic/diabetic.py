# The MIT License (MIT)
# =====================

# Copyright  Arné Schreuder

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


class Diabetic(Dataset):
    """
    The implementation of the Diabetic dataset
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
        super(Diabetic, self).__init__(seed=seed)
        # Set attribute values
        self.train_url = 'framework/datasets/diabetic/diabetic.csv'
        self.test_url = None
        self.features = [
            "encounter_id",
            "patient_nbr",
            "race",
            "gender",
            "age",
            "weight",
            "admission_type_id",
            "discharge_disposition_id",
            "admission_source_id",
            "time_in_hospital",
            "payer_code",
            "medical_specialty",
            "num_lab_procedures",
            "num_procedures",
            "num_medications",
            "number_outpatient",
            "number_emergency",
            "number_inpatient",
            "diag_1",
            "diag_2",
            "diag_3",
            "number_diagnoses",
            "max_glu_serum",
            "A1Cresult",
            "metformin",
            "repaglinide",
            "nateglinide",
            "chlorpropamide",
            "glimepiride",
            "acetohexamide",
            "glipizide",
            "glyburide",
            "tolbutamide",
            "pioglitazone",
            "rosiglitazone",
            "acarbose",
            "miglitol",
            "troglitazone",
            "tolazamide",
            "examide",
            "citoglipton",
            "insulin",
            "glyburide_metformin",
            "glipizide_metformin",
            "glimepiride_pioglitazone",
            "metformin_rosiglitazone",
            "metformin_pioglitazone",
            "change",
            "diabetes_med"
        ]
        self.label = "readmitted"
        self.columns = self.features + [self.label]
        self.dtype = {
            "encounter_id": "float32",
            "patient_nbr": "float32",
            "race": "category",
            "gender": "category",
            "age": "category",
            "weight": "category",
            "admission_type_id": "float32",
            "discharge_disposition_id": "float32",
            "admission_source_id": "float32",
            "time_in_hospital": "float32",
            "payer_code": "category",
            "medical_specialty": "category",
            "num_lab_procedures": "float32",
            "num_procedures": "float32",
            "num_medications": "float32",
            "number_outpatient": "float32",
            "number_emergency": "float32",
            "number_inpatient": "float32",
            "diag_1": "category",
            "diag_2": "category",
            "diag_3": "category",
            "number_diagnoses": "float32",
            "max_glu_serum": "category",
            "A1Cresult": "category",
            "metformin": "category",
            "repaglinide": "category",
            "nateglinide": "category",
            "chlorpropamide": "category",
            "glimepiride": "category",
            "acetohexamide": "category",
            "glipizide": "category",
            "glyburide": "category",
            "tolbutamide": "category",
            "pioglitazone": "category",
            "rosiglitazone": "category",
            "acarbose": "category",
            "miglitol": "category",
            "troglitazone": "category",
            "tolazamide": "category",
            "examide": "category",
            "citoglipton": "category",
            "insulin": "category",
            "glyburide_metformin": "category",
            "glipizide_metformin": "category",
            "glimepiride_pioglitazone": "category",
            "metformin_rosiglitazone": "category",
            "metformin_pioglitazone": "category",
            "change": "category",
            "diabetes_med": "category",
            "readmitted": "category"
        }
        self.batch_size = batch_size
        self.shuffle_size = 1024
        self.test_set_size = 0.2

        # Set random seed
        tf.random.set_seed(self.seed)
        random.seed(self.seed)

        # Load data from file
        data = pd.read_csv(os.path.join(os.path.abspath(os.getcwd()), self.train_url),
                           names=self.columns, dtype=self.dtype, index_col=False, skipinitialspace=True, skiprows=1)

        # TODO:
        # WHAT ABOUT MISSING VALUES
        # Drop fields, see: "weight", "payer_code", "medical_specialty"
        DROP_COLUMNS = ["encounter_id", "patient_nbr", "weight", "payer_code", "medical_specialty"]
        for column in DROP_COLUMNS:
            data = data.drop(column, axis=1)
            self.features.remove(column)
            self.columns.remove(column)
            self.dtype.pop(column)

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

        # Set categories
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
