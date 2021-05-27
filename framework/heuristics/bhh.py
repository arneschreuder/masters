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
from framework.credit.credit import Credit
from framework.heuristics.heuristic import Heuristic
from framework.performance_log.performance_log import PerformanceLog


class BHH(Heuristic):
    credit: List[Credit] = None

    def __init__(self, credit: List[Credit],):
        super(BHH, self).__init__()
        self.credit = credit

    def __call__(self,
                 alpha: tf.Variable,
                 beta: tf.Variable,
                 gamma1: tf.Variable,
                 gamma0: tf.Variable,
                 log: PerformanceLog) -> None:
        for c in self.credit:
            tf.print(log.log)
            credit = c(log=log)
            tf.print(credit)
