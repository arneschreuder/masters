import pandas as pd
import tensorflow as tf
from framework.credits.credit import Credit
from framework.performance_log.performance_log import PerformanceLog


class Symmetric(Credit):
    def __init__(self, discounted_rewards=True):
        super(Symmetric, self).__init__(discounted_rewards=discounted_rewards)

    def __call__(self, log: PerformanceLog):
        credit = pd.DataFrame(columns=self.columns)
        credit = credit.astype(self.dtypes)

        for _, row in log.log.iterrows():
            step = row["step"]
            entity = row["entity"]
            heuristic = row["heuristic"]
            loss = row["loss"]

            # To make the symmetric credit, is loss == loss, assign 1, then
            # it will always give credit in all cases, leading to a symmetric
            # credit assignment.
            reward = self.get_reward(
                output=loss,
                target=loss,
                step=step
            )

            dict = {
                "step": step,
                "entity": entity,
                "heuristic": heuristic,
                "credit": reward
            }
            credit = credit.append(dict, ignore_index=True).astype(self.dtypes)

        tf.print(credit, summarize=-1)

        return credit