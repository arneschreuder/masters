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

import pandas as pd
from framework.credits.credit import Credit
from framework.performance_log.performance_log import PerformanceLog


class Symmetric(Credit):
    """
    Concrete class for Symmetric (Random) credit assingment strategy
    """

    def __init__(self, discounted_rewards=True):
        """
        Parameters
        ----------
        discounted_rewards: boolean
            Flag to enable discounted/diminishing rewards. Default = True
        """
        super(Symmetric, self).__init__(discounted_rewards=discounted_rewards)

    def __call__(self, log: PerformanceLog):
        """
        Parameters
        ----------
        log: PerformanceLog
            The performance log that stores the performance of the hh population.
        """
        credit = pd.DataFrame(columns=self.columns)
        credit = credit.astype(self.dtypes)
        max_step = log.log["step"].max()

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
                target=loss,   # Since it is random, all actions result in credit
                step=step,
                max_step=max_step
            )

            # Build the resulting credit score
            dict = {
                "step": step,
                "entity": entity,
                "heuristic": heuristic,
                "credit": reward
            }
            credit = credit.append(dict, ignore_index=True).astype(self.dtypes)

        return credit
