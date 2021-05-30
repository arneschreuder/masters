from typing import List

import numpy as np


class Credit:
    discounted_rewards = None
    columns: List[str] = None
    dtypes: List[np.dtype] = None

    def __init__(self, discounted_rewards=True):
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

    def get_reward(self, output, target, step, max_step):
        reward = 1 if output <= target else 0
        offset = max_step-step

        if self.discounted_rewards:
            # Logarithmically decrease on how far back reward is in memory.
            reward *= (0.5**offset)

        return reward
