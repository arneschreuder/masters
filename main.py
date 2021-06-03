
import framework as fw

# # SGD
# experiment = fw.experiments.Iris(
#     optimiser=fw.optimisers.SGD(
#         learning_rate=0.1,
#         momentum=0.0,
#         nesterov=False
#     ),
#     log_dir="logs/sgd-lr-0.1-mom-0.0-nest-false",
#     seed=None
# )

# Momentum
# experiment = fw.experiments.Iris(
#     optimiser=fw.optimisers.SGD(
#         learning_rate=0.1,
#         momentum=0.9,
#         nesterov=False
#     ),
#     log_dir="logs/sgd-lr-0.1-mom-0.9-nest-false",
#     seed=None
# )

# NAG - Nesterov Adaptive Gradients
# experiment = fw.experiments.Iris(
#     optimiser=fw.optimisers.SGD(
#         learning_rate=0.1,
#         momentum=0.9,
#         nesterov=True
#     ),
#     log_dir="logs/sgd-lr-0.1-mom-0.9-nest-true",
#     seed=None
# )

# Adagrad - Adaptive Gradients
experiment = fw.experiments.Iris(
    optimiser=fw.optimisers.Adagrad(
        learning_rate=1.0,
        epsilon=1e-07
    ),
    log_dir="logs/sgd-lr-1.0-eps-1e-07",
    seed=None
)

# experiment = fw.experiments.Iris(
#     optimiser=fw.optimisers.BHH(
#         population=10,
#         burn_in=5,
#         replay=10,
#         reselection=1,
#         reanalysis=1,
#         credit=[
#             fw.credits.RBest(discounted_rewards=True)
#         ],
#         heuristics=[
#             fw.heuristics.SGD(
#                 learning_rate=0.1,
#                 momentum=0.9,
#                 nesterov=True
#             ),
#             fw.heuristics.PSO(
#                 inertia_weight=0.729844,
#                 social_control=1.496180,
#                 cognitive_control=1.496180,
#                 learning_rate=1.0,
#                 velocity_clip_min=-1.0,
#                 velocity_clip_max=1.0
#             ),
#         ],
#     ),
#     log_dir="logs/bhh-rbest-replay-short",
#     seed=None
# )

if __name__ == "__main__":
    experiment.initialise()
    experiment()
