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

from datetime import datetime

import tensorflow as tf


class Logger:
    """
    The summary writer wrapped into a logger class.

    Attributes
    ----------
    log_dir: str
        The path to the log directory where output must
        be written. Default = None
    instance: tf.summary.SummaryWriter
        The summary writer instance. Default = None
    """
    log_dir: str = None
    instance: tf.summary.SummaryWriter = None

    def __init__(self, log_dir: str):
        """
        Attributes
        ----------
        log_dir: str
            The path to the log directory where output must
            be written. Default = None
        """
        current_time = datetime.now().strftime('%Y%m%d-%H%M%S')
        # self.log_dir = "{}/{}".format(log_dir, current_time)
        self.log_dir = "{}".format(log_dir)
        self.instance = tf.summary.create_file_writer(self.log_dir)

    def log_scalar_results(self, name, result, step):
        """
        Logs scalar values.

        Parameters
        ----------
        name: str
            Metric name.
        result: float
            Metric value.
        step: int
            At which step number.
        """

        with self.instance.as_default():
            tf.summary.scalar(
                name,
                result,
                step=step
            )

    def log_distribution_results(self, name, result, step):
        """
        Logs distribution values.

        Parameters
        ----------
        name: str
            Metric name.
        result: float
            Metric value.
        step: int
            At which step number.
        """

        with self.instance.as_default():
            tf.summary.histogram(
                name,
                result,
                step=step
            )
