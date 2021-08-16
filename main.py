
import framework as fw

# SGD
# experiment = fw.experiments.Iris(
#     optimiser=fw.optimisers.SGD(
#         learning_rate=fw.schedules.Exponential(
#             initial=1.0,
#             steps=600,
#             rate=0.1,
#             staircase=False
#         )
#     ),
#     log_dir="logs/sgd-lrs",
#     seed=None
# )

# Momentum
# experiment = fw.experiments.Iris(
#     optimiser=fw.optimisers.Momentum(
#         learning_rate=fw.schedules.Exponential(
#             initial=1.0,
#             steps=600,
#             rate=0.1,
#             staircase=False
#         ),
#         momentum=0.9
#     ),
#     log_dir="logs/momentum-lrs-mom-0.9",
#     seed=None
# )

# NAG - Nesterov Adaptive Gradients
# experiment = fw.experiments.Iris(
#     optimiser=fw.optimisers.NAG(
#         learning_rate=fw.schedules.Exponential(
#             initial=1.0,
#             steps=600,
#             rate=0.1,
#             staircase=False
#         ),
#         momentum=0.9
#     ),
#     log_dir="logs/nag-lrs-mom-0.9",
#     seed=None
# )

# Adagrad - Adaptive Gradients
# experiment = fw.experiments.Iris(
#     optimiser=fw.optimisers.Adagrad(
#         learning_rate=fw.schedules.Exponential(
#             initial=1.0,
#             steps=600,
#             rate=0.1,
#             staircase=False
#         ),
#         epsilon=1e-07
#     ),
#     log_dir="logs/adagrad-lrs-eps-1e-07",
#     seed=None
# )

# RMSProp - Root Mean Squared Propagation
# experiment = fw.experiments.Iris(
#     optimiser=fw.optimisers.RMSProp(
#         learning_rate=fw.schedules.Exponential(
#             initial=0.1,
#             steps=600,
#             rate=0.01,
#             staircase=False
#         ),
#         rho=0.95,
#         epsilon=1e-07
#     ),
#     log_dir="logs/rmsprop-lrs-rho-0.95-eps-1e-07",
#     seed=None
# )

# Adadelta - Adadelta Gradients
experiment = fw.experiments.Iris(
    optimiser=fw.optimisers.Adadelta(
        learning_rate=fw.schedules.Exponential(
            initial=1.0,
            steps=600,
            rate=0.95,
            staircase=False
        ),
        rho=0.95,
        epsilon=1e-07
    ),
    log_dir="logs/adadelta-lrs-rho-0.95-eps-1e-07",
    seed=None
)

# PSO - Particle Swarm Optimisation
# experiment = fw.experiments.Iris(
#     optimiser=fw.optimisers.PSO(
#         population=10,
#         inertia_weight=0.729844,
#         social_control=1.496180,
#         cognitive_control=1.496180,
#         learning_rate=fw.schedules.Exponential(
#             initial=1.0,
#             steps=20,
#             rate=0.99,
#             staircase=True
#         ),
#         velocity_clip_min=-1.0,
#         velocity_clip_max=1.0
#     ),
#     log_dir="logs/pso-pop-10-w-0.7-c1-1.49-c2-1.49-lrs-vclip-1.0",
#     seed=None
# )

# BHH
# experiment = fw.experiments.Iris(
#     optimiser=fw.optimisers.BHH(
#         population=10,
#         burn_in=10,
#         replay=10,
#         reselection=10,
#         reanalysis=10,
#         credit=[
#             fw.credits.RBest(discounted_rewards=True)
#         ],
#         heuristics=[
#             fw.heuristics.SGD(
#                 learning_rate=fw.schedules.Exponential(
#                     initial=1.0,
#                     steps=20,
#                     rate=0.99,
#                     staircase=True
#                 )
#             ),
#             # fw.heuristics.Momentum(
#             #     learning_rate=fw.schedules.Exponential(
#             #         initial=1.0,
#             #         steps=20,
#             #         rate=0.99,
#             #         staircase=True
#             #     ),
#             #     momentum=0.9
#             # ),
#             # fw.heuristics.NAG(
#             #     learning_rate=0.1,
#             #     momentum=0.9,
#             #     nesterov=True
#             # ),
#             # fw.heuristics.NAG(
#             #     learning_rate=0.1,
#             #     momentum=0.9,
#             #     nesterov=True
#             # ),
#             # fw.heuristics.NAG(
#             #     learning_rate=0.1,
#             #     momentum=0.9,
#             #     nesterov=True
#             # ),
#             # fw.heuristics.Adagrad(
#             #     learning_rate=fw.schedules.Exponential(
#             #         initial=0.1,
#             #         steps=20,
#             #         rate=0.95,
#             #         staircase=True
#             #     ),
#             #     epsilon=1e-08
#             # ),
#             # fw.heuristics.Adagrad(
#             #     learning_rate=fw.schedules.Exponential(
#             #         initial=0.1,
#             #         steps=20,
#             #         rate=0.95,
#             #         staircase=True
#             #     ),
#             #     epsilon=1e-08
#             # ),
#             # fw.heuristics.Adadelta(
#             #     learning_rate=fw.schedules.Exponential(
#             #         initial=0.01,
#             #         steps=100,
#             #         rate=0.95,
#             #         staircase=True
#             #     ),
#             #     rho=0.95,
#             #     epsilon=1e-08
#             # ),
#             # fw.heuristics.Adadelta(
#             #     learning_rate=fw.schedules.Exponential(
#             #         initial=0.001,
#             #         steps=100,
#             #         rate=0.95,
#             #         staircase=True
#             #     ),
#             #     rho=0.95,
#             #     epsilon=1e-08
#             # ),
#             fw.heuristics.PSO(
#                 inertia_weight=0.729844,
#                 social_control=1.496180,
#                 cognitive_control=1.496180,
#                 learning_rate=fw.schedules.Exponential(
#                     initial=1.0,
#                     steps=20,
#                     rate=0.99,
#                     staircase=True
#                 ),
#                 velocity_clip_min=-1.0,
#                 velocity_clip_max=1.0
#             ),
#         ],
#     ),
#     log_dir="logs/bhh-adas",
#     seed=None
# )

if __name__ == "__main__":
    experiment.initialise()
    experiment()
