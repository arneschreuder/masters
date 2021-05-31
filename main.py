
import framework as fw

experiment = fw.experiments.Iris(
    optimiser=fw.optimisers.PSO(),
    log_dir="logs/pso",
    seed=None
)

if __name__ == "__main__":
    experiment.initialise()
    experiment()
