import pandas as pd
from framework.credits.credit import Credit
from framework.performance_log.performance_log import PerformanceLog


class PBest(Credit):
    def __init__(self, discounted_rewards=True):
        super(PBest, self).__init__(discounted_rewards=discounted_rewards)

    def __call__(self, log: PerformanceLog):
        credit = pd.DataFrame(columns=self.columns)
        credit = credit.astype(self.dtypes)
        max_step = log.log["step"].max()

        for _, row in log.log.iterrows():
            step = row["step"]
            entity = row["entity"]
            heuristic = row["heuristic"]
            loss = row["loss"]
            pbest_loss = row["pbest_loss"]
            reward = self.get_reward(
                output=loss,
                target=pbest_loss,
                step=step,
                max_step=max_step
            )

            dict = {
                "step": step,
                "entity": entity,
                "heuristic": heuristic,
                "credit": reward
            }
            credit = credit.append(dict, ignore_index=True).astype(self.dtypes)

        return credit
