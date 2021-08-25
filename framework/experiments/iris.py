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

from framework.datasets.iris import Iris as IrisDataset
from framework.experiments.experiment import Experiment
from framework.losses.sparse_categorical_crossentropy import \
    SparseCategoricalCrossentropy
from framework.metrics.sparse_categorical_accuracy import \
    SparseCategoricalAccuracy as SparseCategoricalAccuracyMetric
from framework.metrics.sparse_categorical_crossentropy import \
    SparseCategoricalCrossentropy as SparseCategoricalCrossentropyMetric
from framework.models.iris import Iris as IrisModel
from framework.optimisers.optimiser import Optimiser


class Iris(Experiment):
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
        log_dir: str
            The log output directory. Default = None
        seed: int
            Random seed. Default = None
        """
        super(Iris, self).__init__(
            dataset=IrisDataset(seed=seed, batch_size=batch_size),
            model=IrisModel(),
            loss_fn=SparseCategoricalCrossentropy(),
            optimiser=optimiser,
            metrics=[
                SparseCategoricalCrossentropyMetric(),
                SparseCategoricalAccuracyMetric()
            ],
            log_dir=log_dir,
            epochs=epochs,
            seed=seed
        )
