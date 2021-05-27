from typing import List

import numpy as np
import pandas as pd
import tensorflow as tf
from framework.performance_log.performance_log import PerformanceLog


class Credit:
    columns: List[str] = None
    dtypes: List[np.dtype] = None

    def __init__(self):
        self.columns = [
            "step",
            "entity",
            "heuristic",
            "credit"
        ]
        self.dtypes = {
            "step": int,
            "entity": int,
            "heuristic": int,
            "credit": int,
        }
