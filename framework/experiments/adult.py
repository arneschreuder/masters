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

from framework.datasets.adult import Adult as AdultDataset
from framework.experiments.experiment import Experiment
from framework.losses.binary_crossentropy import BinaryCrossentropy
from framework.metrics.binary_accuracy import \
    BinaryAccuracy as BinaryAccuracyMetric
from framework.metrics.binary_crossentropy import \
    BinaryCrossentropy as BinaryCrossentropyMetric
from framework.models.adult import Adult as AdultModel
from framework.optimisers.optimiser import Optimiser


class Adult(Experiment):
    def __init__(self,
                 optimiser: Optimiser,
                 epochs: int,
                 batch_size: int,
                 log_dir: str,
                 seed: int = None):
        """
        Parameters
        ----------
        optimiser: Optimiser
            The optimiser to use
        epochs: int
            The number of epochs to train. Default = None
        batch_size: int
            The batch_size. Default = None
        log_dir: str
            The log output directory. Default = None
        seed: int
            Random seed. Default = None
        """
        super(Adult, self).__init__(
            dataset=AdultDataset(seed=seed, batch_size=batch_size),
            model=AdultModel(),
            loss_fn=BinaryCrossentropy(),
            optimiser=optimiser,
            train_metrics=[
                BinaryCrossentropyMetric(name="train_loss"),
                BinaryAccuracyMetric(name="train_accuracy")
            ],
            test_metrics=[
                BinaryCrossentropyMetric(name="test_loss"),
                BinaryAccuracyMetric(name="test_accuracy")
            ],
            log_dir=log_dir,
            epochs=epochs,
            seed=seed
        )