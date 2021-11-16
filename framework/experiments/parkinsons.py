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

from framework.datasets.parkinsons import Parkinsons as ParkinsonsDataset
from framework.experiments.experiment import Experiment
from framework.losses.rmse import RMSE
from framework.metrics.rmse import RMSE as RMSEMetric
from framework.models.parkinsons import Parkinsons as ParkinsonsModel
from framework.optimisers.optimiser import Optimiser


class Parkinsons(Experiment):
    def __init__(self,
                 optimiser: Optimiser,
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
        super(Parkinsons, self).__init__(
            dataset=ParkinsonsDataset(seed=seed, batch_size=30),
            model=ParkinsonsModel(),
            loss_fn=RMSE(),
            optimiser=optimiser,
            train_metrics=[
                RMSEMetric(name="train_loss")
            ],
            test_metrics=[
                RMSEMetric(name="test_loss")
            ],
            log_dir=log_dir,
            epochs=50,
            seed=seed
        )
