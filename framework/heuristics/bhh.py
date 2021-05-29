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

import numpy as np
import tensorflow as tf
from framework.credits.credit import Credit
from framework.heuristics.heuristic import Heuristic
from framework.performance_log.performance_log import PerformanceLog


# TODO: STILL NEED TO COMMENT THIS FILE
class BHH(Heuristic):
    credit: List[Credit] = None

    def __init__(self, credit: List[Credit]):
        super(BHH, self).__init__()
        self.credit = credit

    def __call__(self,
                 alpha: tf.Variable,
                 beta: tf.Variable,
                 gamma1: tf.Variable,
                 gamma0: tf.Variable,
                 log: PerformanceLog) -> None:

        # Get dimensionality
        J = beta.shape[0]
        K = alpha.shape[0]

        # Initialize counts to zeros
        # Total occurrences of heuristic k
        N_k = np.ones([K], dtype=np.float32)

        # Total occurrences of entity j and heuristic k
        N_jk = np.ones([J, K], dtype=np.float32)

        # Total occurences of successfully meeting performance criteria by heuristic k
        N_1k = np.ones([K], dtype=np.float32)

        # Total occurences of failing to meet performance criteria by heuristic k
        N_0k = np.ones([K], dtype=np.float32)

        for c in self.credit:
            credit = c(log=log)

            for _, row in credit.iterrows():
                j = row['entity'].astype(int)
                k = row['heuristic'].astype(int)
                l = row['credit'].astype(float)

                N_k[k] += 1
                N_jk[j][k] += 1
                N_1k[k] += l
                N_0k[k] += 1-l

        _alpha = tf.constant(N_k)
        _beta = tf.constant(N_jk)
        _gamma1 = tf.constant(N_1k)
        _gamma0 = tf.constant(N_0k)

        alpha.assign(_alpha)
        beta.assign(_beta)
        gamma1.assign(_gamma1)
        gamma0.assign(_gamma0)
