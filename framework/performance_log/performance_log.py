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

from typing import List

import numpy as np
import pandas as pd
import tensorflow as tf


class PerformanceLog:
    """
    The performance log which keeps track of the BHH's global performance history
    across all heuristics and all entities, measured by some credit assignment strategy.
    """
    columns: List[str] = None
    dtypes: List[np.dtype] = None
    log: pd.DataFrame = None

    def __init__(self):
        self.columns = [
            "step",
            "entity",
            "heuristic",
            "loss",
            "pbest_loss",
            "ibest_loss",
            "gbest_loss"
        ]
        self.dtypes = {
            "step": int,
            "entity": int,
            "heuristic": int,
            "loss": float,
            "pbest_loss": float,
            "ibest_loss": float,
            "gbest_loss": float
        }

        self.log = pd.DataFrame(columns=self.columns)
        self.log = self.log.astype(self.dtypes)

    def append(self,
               step: int,
               entity: int,
               heuristic: int,
               loss: float,
               pbest_loss: float,
               ibest_loss: float,
               gbest_loss: float):
        """
        Adds a single record to the performance log.
        step: int
            The step number.
        entity: int
            The entity id.
        heuristic: int
            The heuristic id.
        loss: float
            The loss measured.
        pbest_loss: float
            The personal best loss measured.
        ibest_loss: float,
            The iterative best loss measured.
        gbest_loss: float):
            The global best loss measured.
        """
        dict = {
            "step": step,
            "entity": entity,
            "heuristic": heuristic,
            "loss": loss,
            "pbest_loss": pbest_loss,
            "ibest_loss": None,
            "gbest_loss": None
        }
        self.log = self.log.append(dict, ignore_index=True).astype(self.dtypes)

        # Update bests
        self.log.loc[self.log["step"] == step, "ibest_loss"] = ibest_loss
        self.log.loc[self.log["step"] == step, "gbest_loss"] = gbest_loss

    def prune(self, step: int):
        """
        Removes entries from the log that are old.

        Parameters
        ----------
        step: int
            The step number to provide a lower bound on the steps to remember.
        """
        self.log = self.log[self.log["step"] > step]
        self.log.reset_index()
