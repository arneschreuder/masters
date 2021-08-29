
import framework as fw
from framework import hyper_parameters
from framework.heuristics.adadelta import Adadelta
from framework.heuristics.adagrad import Adagrad
from framework.heuristics.rmsprop import RMSProp

# SGD
# experiment = fw.experiments.Iris(
#     optimiser=fw.optimisers.SGD(
#         params=fw.hyper_parameters.SGD(
#             learning_rate=fw.schedules.Exponential(
#                 initial=1.0,
#                 steps=600,
#                 rate=0.1,
#                 staircase=False
#             )
#         )
#     ),
#     epochs=200,
#     batch_size=50,
#     log_dir="logs/sgd-lrs",
#     seed=None
# )

# Momentum
# experiment = fw.experiments.Iris(
#     optimiser=fw.optimisers.Momentum(
#         params=fw.hyper_parameters.Momentum(
#             learning_rate=fw.schedules.Exponential(
#                 initial=1.0,
#                 steps=600,
#                 rate=0.1,
#                 staircase=False
#             ),
#             momentum=0.9
#         )
#     ),
#     epochs=200,
#     batch_size=50,
#     log_dir="logs/momentum-lrs-mom-0.9",
#     seed=None
# )

# NAG - Nesterov Adaptive Gradients
# experiment = fw.experiments.Iris(
#     optimiser=fw.optimisers.NAG(
#         params=fw.hyper_parameters.NAG(
#             learning_rate=fw.schedules.Exponential(
#                 initial=1.0,
#                 steps=600,
#                 rate=0.1,
#                 staircase=False
#             ),
#             momentum=0.9
#         )
#     ),
#     epochs=200,
#     batch_size=50,
#     log_dir="logs/nag-lrs-mom-0.9",
#     seed=None
# )

# Adagrad - Adaptive Gradients
# experiment = fw.experiments.Iris(
#     optimiser=fw.optimisers.Adagrad(
#         params=fw.hyper_parameters.Adagrad(
#             learning_rate=fw.schedules.Exponential(
#                 initial=1.0,
#                 steps=600,
#                 rate=0.1,
#                 staircase=False
#             ),
#             epsilon=1e-07
#         )
#     ),
#     epochs=200,
#     batch_size=50,
#     log_dir="logs/adagrad-lrs-eps-1e-07",
#     seed=None
# )

# RMSProp - Root Mean Squared Propagation
# experiment = fw.experiments.Iris(
#     optimiser=fw.optimisers.RMSProp(
#         params=fw.hyper_parameters.RMSProp(
#             learning_rate=fw.schedules.Exponential(
#                 initial=0.1,
#                 steps=600,
#                 rate=0.01,
#                 staircase=False
#             ),
#             rho=0.95,
#             epsilon=1e-07
#         )
#     ),
#     epochs=200,
#     batch_size=50,
#     log_dir="logs/rmsprop-lrs-rho-0.95-eps-1e-07",
#     seed=None
# )

# Adadelta - Adadelta Gradients
# experiment = fw.experiments.Iris(
#     optimiser=fw.optimisers.Adadelta(
#         params=fw.hyper_parameters.Adadelta(
#             learning_rate=fw.schedules.Exponential(
#                 initial=1.0,
#                 steps=1800,
#                 rate=0.98,
#                 staircase=False
#             ),
#             rho=0.95,
#             epsilon=1e-07
#         )
#     ),
#     epochs=600,
#     batch_size=50,
#     log_dir="logs/adadelta-lrs-rho-0.95-eps-1e-07",
#     seed=None
# )

# Adam - Adaptive Moments
experiment = fw.experiments.Iris(
    optimiser=fw.optimisers.Adam(
        params=fw.hyper_parameters.Adam(
            learning_rate=fw.schedules.Exponential(
                initial=0.1,
                steps=600,
                rate=0.01,
                staircase=False
            ),
            beta1=0.9,
            beta2=0.999,
            epsilon=1e-07
        )
    ),
    epochs=200,
    batch_size=50,
    log_dir="logs/adam-lrs-beta1-0.9-beta2-0.999-eps-1e-07",
    seed=None
)

# PSO - Particle Swarm Optimisation
# experiment = fw.experiments.Iris(
#     optimiser=fw.optimisers.PSO(
#         population_size=5,
#         learning_rate=fw.schedules.Exponential(
#             initial=1.0,
#             steps=600,
#             rate=0.9,
#             staircase=False
#         ),
#         inertia_weight=0.729844,
#         social_control=1.496180,
#         cognitive_control=1.496180,
#         velocity_clip_min=-1.0,
#         velocity_clip_max=1.0
#     ),
#     log_dir="logs/pso-pop-5-lrs-w-0.7-c1-1.49-c2-1.49-vclip-1.0",
#     seed=None
# )

# BHH
# experiment = fw.experiments.Iris(
#     optimiser=fw.optimisers.BHH(
#         population_size=10,
#         burn_in=0,
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
#                     steps=600,
#                     rate=0.1,
#                     staircase=False
#                 )
#             ),
#             # fw.heuristics.Momentum(
#             #     learning_rate=fw.schedules.Exponential(
#             #         initial=1.0,
#             #         steps=600,
#             #         rate=0.1,
#             #         staircase=False
#             #     ),
#             #     momentum=0.9
#             # ),
#             # fw.heuristics.NAG(
#             #     learning_rate=fw.schedules.Exponential(
#             #         initial=1.0,
#             #         steps=600,
#             #         rate=0.1,
#             #         staircase=False
#             #     ),
#             #     momentum=0.9
#             # ),
#             # fw.heuristics.Adagrad(
#             #     learning_rate=fw.schedules.Exponential(
#             #         initial=1.0,
#             #         steps=600,
#             #         rate=0.1,
#             #         staircase=False
#             #     ),
#             #     epsilon=1e-07
#             # ),
#             # fw.heuristics.RMSProp(
#             #     learning_rate=fw.schedules.Exponential(
#             #         initial=0.1,
#             #         steps=600,
#             #         rate=0.01,
#             #         staircase=False
#             #     ),
#             #     rho=0.95,
#             #     epsilon=1e-07
#             # ),
#             # fw.heuristics.Adadelta(
#             #     learning_rate=fw.schedules.Exponential(
#             #         initial=1.0,
#             #         steps=600,
#             #         rate=0.95,
#             #         staircase=False
#             #     ),
#             #     rho=0.95,
#             #     epsilon=1e-07
#             # ),
#             # fw.heuristics.Adam(
#             #     learning_rate=fw.schedules.Exponential(
#             #         initial=0.1,
#             #         steps=600,
#             #         rate=0.01,
#             #         staircase=False
#             #     ),
#             #     beta1=0.9,
#             #     beta2=0.999,
#             #     epsilon=1e-07
#             # ),
#             fw.heuristics.PSO(
#                 learning_rate=fw.schedules.Exponential(
#                     initial=1.0,
#                     steps=600,
#                     rate=0.9,
#                     staircase=False
#                 ),
#                 inertia_weight=0.729844,
#                 social_control=1.496180,
#                 cognitive_control=1.496180,
#                 velocity_clip_min=-1.0,
#                 velocity_clip_max=1.0
#             )
#         ],
#     ),
#     log_dir="logs/bhh+pso",
#     seed=None
# )

if __name__ == "__main__":
    experiment.initialise()
    experiment()
