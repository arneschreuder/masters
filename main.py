
import framework as fw

# SGD
# experiment = fw.experiments.Iris(
#     optimiser=fw.optimisers.SGD(
#         learning_rate=0.1
#     ),
#     log_dir="logs/sgd-lr-0.1",
#     seed=None
# )

# Momentum
# experiment = fw.experiments.Iris(
#     optimiser=fw.optimisers.Momentum(
#         learning_rate=0.1,
#         momentum=0.9
#     ),
#     log_dir="logs/momentum-lr-0.1-mom-0.9",
#     seed=None
# )

# NAG - Nesterov Adaptive Gradients
# experiment = fw.experiments.Iris(
#     optimiser=fw.optimisers.NAG(
#         learning_rate=0.1,
#         momentum=0.9,
#         nesterov=True
#     ),
#     log_dir="logs/nag-lr-0.1-mom-0.9-nest-true",
#     seed=None
# )

# Adagrad - Adaptive Gradients
experiment = fw.experiments.Iris(
    optimiser=fw.optimisers.Adagrad(
        learning_rate=0.1,
        epsilon=1e-07
    ),
    log_dir="logs/adagrad-lr-0.1-eps-1e-07",
    seed=None
)

# PSO - Particle Swarm Optimisation
# experiment = fw.experiments.Iris(
#     optimiser=fw.optimisers.PSO(
#         population=5,
#         inertia_weight=0.729844,
#         social_control=1.496180,
#         cognitive_control=1.496180,
#         velocity_clip_min=-1.0,
#         velocity_clip_max=1.0
#     ),
#     log_dir="logs/pso-pop-10-w-0.7-c1-1.49-c2-1.49-vclip-1.0",
#     seed=None
# )

# BHH
# experiment = fw.experiments.Iris(
#     optimiser=fw.optimisers.BHH(
#         population=10,
#         burn_in=0,
#         replay=1,
#         reselection=1,
#         reanalysis=1,
#         credit=[
#             fw.credits.IBest(discounted_rewards=True)
#         ],
#         heuristics=[
#             # fw.heuristics.SGD(
#             #     learning_rate=0.1
#             # ),
#             # fw.heuristics.Momentum(
#             #     learning_rate=0.1,
#             #     momentum=0.9
#             # ),
#             fw.heuristics.NAG(
#                 learning_rate=0.1,
#                 momentum=0.9,
#                 nesterov=True
#             ),
#             fw.heuristics.Adagrad(
#                 learning_rate=1.0,
#                 epsilon=1e-07
#             ),
#             fw.heuristics.PSO(
#                 inertia_weight=0.729844,
#                 social_control=1.496180,
#                 cognitive_control=1.496180,
#                 velocity_clip_min=-1.0,
#                 velocity_clip_max=1.0
#             ),
#         ],
#     ),
#     log_dir="logs/bhh3",
#     seed=None
# )

if __name__ == "__main__":
    experiment.initialise()
    experiment()
