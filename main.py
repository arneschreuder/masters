
import datetime

import framework as fw

experiment = fw.experiments.Iris(
    optimiser=fw.optimisers.SGD(),
    log_dir="logs",
    seed=None
)

if __name__ == "__main__":
    experiment.initialise()
    experiment()
