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


from typing import Dict, List

import tensorflow as tf
from framework.datasets.dataset import Dataset
from framework.logger.logger import Logger
from framework.losses.loss import Loss
from framework.metrics.metric import Metric
from framework.neural_networks.neural_network import NeuralNetwork
from framework.optimisers.optimiser import Optimiser


class Experiment:
    """
    The main experiment class that contains experimental
    run and execution logic.

    Attributes
    ----------
    dataset: Dataset
        The dataset to use. Default = None
    model: NeuralNetwork
        The model to use. Default = None
    loss_fn: Loss
        The loss function to use. Default = None
    optimiser: Optimiser
        The optimiser to user. Default = None
    metrics: List[Metric]
        The metrics to be tracked. Default = None
    logger: Logger
        The logger instance. Default = None
    epochs: int
        Max epochs. Default = None
    seed: int
        Random seed. Default = None
    progress: tf.keras.utils.Progbar
        Progressbar instance. Default = None
    """
    dataset: Dataset = None
    model: NeuralNetwork = None
    loss_fn: Loss = None
    optimiser: Optimiser = None
    metrics: List[Metric] = None
    logger: Logger = None
    epochs: int = None
    seed: int = None
    progress: tf.keras.utils.Progbar = None

    def __init__(self,
                 dataset: Dataset,
                 model: NeuralNetwork,
                 loss_fn: Loss,
                 optimiser: Optimiser,
                 metrics: List[Metric],
                 log_dir: str,
                 epochs: int,
                 seed=None):
        """
        Parameters
        ----------
        dataset: Dataset
            The dataset to use. Default = None
        model: NeuralNetwork
            The model to use. Default = None
        loss_fn: Loss
            The loss function to use. Default = None
        optimiser: Optimiser
            The optimiser to user. Default = None
        metrics: List[Metric]
            The metrics to be tracked. Default = None
        log_dir: str
            The log output directory. Default = None
        epochs: int
            Max epochs. Default = None
        seed: int
            Random seed. Default = None
        """
        self.dataset = dataset
        self.model = model
        self.loss_fn = loss_fn
        self.optimiser = optimiser
        self.metrics = metrics
        self.logger = Logger(log_dir)
        self.epochs = epochs
        self.seed = seed
        self.progress = None

    def initialise(self):
        """
        Initialiser function.
        """
        # Set random seed
        tf.random.set_seed(seed=self.seed)

        # Setup, configure and initialise optimiser
        self.optimiser.set_loss_fn(loss_fn=self.loss_fn)
        self.optimiser.set_model(model=self.model)
        self.optimiser.initialise()

        # Track all metric names
        stateful_metrics = []
        for metric in self.metrics:
            stateful_metrics.append(metric.name)

        # Create progressbar instance
        self.progress = tf.keras.utils.Progbar(
            target=self.epochs,
            stateful_metrics=stateful_metrics
        )

    def update_metrics(self, labels: tf.Tensor, logits: tf.Tensor) -> None:
        """
        Updates all metrics states.

        Parameters
        ----------
        labels: tf.Tensor
            The target values to be predicted
        logits: tf.Tensor
            The predicted output of a Neural Network in logit format.
        """
        for metric in self.metrics:
            metric(labels, logits)

    def log_metrics(self, epoch: int) -> Dict:
        """
        Writes all metrics to log/event files.

        Parameters
        ----------
        epoch: int
            Training epoch number

        Returns
        -------
        Dict
            The metrics dictionary that contains the 
            metric name and resulting value.

        """
        metrict_dict = []

        for metric in self.metrics:
            # Extract metric name and value
            name = metric.name
            result = metric.result()

            metrict_dict.append((name, result))
            metric.reset()

            # Write to log/events
            with self.logger.instance.as_default():
                tf.summary.scalar(
                    name,
                    result,
                    step=epoch+1
                )

        return metrict_dict

    def __call__(self) -> None:
        """
        Experiment invocation step. Executes the experiment 
        under specified configuration.
        """

        step = 0
        for e in range(self.epochs):
            # Train
            for features, labels in self.dataset.training:
                logits, _ = self.optimiser(
                    features=features,
                    labels=labels,
                    step=step
                )
                self.update_metrics(labels=labels, logits=logits)
                step += 1

            metrics_dict = self.log_metrics(epoch=e)

            # TODO: Validate and Test?

            # Update progress
            self.progress.add(1, metrics_dict)
