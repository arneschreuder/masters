import pandas as pd
from framework.credit.credit import Credit
from framework.performance_log.performance_log import PerformanceLog


class IBest(Credit):
    def __call__(self, log: PerformanceLog):
        credit = pd.DataFrame(columns=self.columns)
        credit = credit.astype(self.dtypes)

        for _, row in log.log.iterrows():
            step = row["step"]
            entity = row["entity"]
            heuristic = row["heuristic"]
            c = 1 if row["loss"] <= row["ibest_loss"] else 0

            dict = {
                "step": step,
                "entity": entity,
                "heuristic": heuristic,
                "credit": c,
            }
            credit = credit.append(dict, ignore_index=True).astype(self.dtypes)

        return credit
