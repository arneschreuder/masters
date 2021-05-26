from typing import List

import pandas as pd
import tensorflow as tf


class PerformanceLog:
    columns: List[str] = None
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

        self.log = pd.DataFrame(columns=self.columns)
        print(self.log)
        print("-------------")

    def log(self,
            step: int,
            entity: int,
            heuristic: int,
            loss: float,
            pbest_loss: float,
            ibest_loss: float,
            gbest_loss: float):
        data = [step, entity, heuristic, loss,
                pbest_loss, ibest_loss, gbest_loss]
        df = pd.DataFrame(data=data, columns=self.columns)
        self.log.append(df)
        print(self.log)
        print("-------------")
