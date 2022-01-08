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


class Credit:
    """
    Abstract class for credit assingment strategies

    Attributes
    -----------
    discounted_rewards = None
        Flag to enable discounted/diminishing rewards. Default = None
    columns: List[str] = None
        List of columns to consider for credit. Default = None
    dtypes: List[np.dtype] = None
        The data type for each colun. Default = none
    """
    discounted_rewards = None
    columns: List[str] = None
    dtypes: List[np.dtype] = None

    def __init__(self, discounted_rewards: bool = True):
        """
        Parameters
        ----------
        discounted_rewards: boolean
            Flag to enable discounted/diminishing rewards. Default = True
        """
        self.discounted_rewards = discounted_rewards
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
            "credit": float,
        }

    def get_reward(self, output, target, step: int, max_step: int) -> float:
        """
        Calculates the resulting award based of credit assingment strategy.

        Parameters
        ----------
         output: any
            The output by the model.
         target:
            The target value.
         step: int
            The step number.
         max_step: int
            The max number of steps to consider.

        Returns:
        --------
        float:
            The resulting award.
        """
        reward = 1 if output <= target else 0
        offset = max_step-step

        if self.discounted_rewards:
            # Logarithmically decrease on how far back reward is in memory.
            reward *= (0.5**offset)

        return reward
