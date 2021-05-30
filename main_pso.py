
import framework as fw

experiment = fw.experiments.Iris(
    optimiser=fw.optimisers.PSO(
        population=10,
        inertia_weight=0.729844,
        social_control=1.496180,
        cognitive_control=1.496180,
        learning_rate=1.0,
        velocity_clip_min=-1.0,
        velocity_clip_max=1.0
    ),
    log_dir="logs/pso",
    seed=1
)

if __name__ == "__main__":
    experiment.initialise()
    experiment()
