
import framework as fw

experiment = fw.experiments.Iris(
    optimiser=fw.optimisers.BHH(
        population=10,
        burn_in=10,
        replay=30,
        reselection=1,
        reanalysis=1,
        credit=[
            fw.credits.GBest(discounted_rewards=True)
        ],
        heuristics=[
            fw.heuristics.SGD(
                learning_rate=0.1,
                momentum=0.9,
                nesterov=True
            ),
            fw.heuristics.PSO(
                inertia_weight=0.729844,
                cognitive_control=1.496180,
                social_control=1.496180,
                learning_rate=1.0,
                velocity_clip_min=-1.0,
                velocity_clip_max=1.0
            ),
        ]
    ),
    log_dir="logs/bhh-gbest-dr",
    seed=1
)

if __name__ == "__main__":
    experiment.initialise()
    experiment()
