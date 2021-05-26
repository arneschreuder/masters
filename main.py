
import datetime

import framework as fw

experiment = fw.experiments.Iris(
    optimiser=fw.optimisers.PSO(
        population_size=10,
    ),
    log_dir="logs",
    seed=1
)

if __name__ == "__main__":
    experiment.initialise()
    experiment()
