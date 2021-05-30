
import framework as fw

experiment = fw.experiments.Iris(
    optimiser=fw.optimisers.SGD(
        learning_rate=0.1,
        momentum=0.9,
        nesterov=True
    ),
    log_dir="logs/sgd",
    seed=1
)

if __name__ == "__main__":
    experiment.initialise()
    experiment()
