from typing import List

import numpy as np
import pandas as pd
import tensorflow as tf


class PerformanceLog:
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
        self.log = self.log[self.log["step"] > step]
        self.log.reset_index()
