import framework as fw
from framework import hyper_parameters
from framework.heuristics.adadelta import Adadelta
from framework.heuristics.adagrad import Adagrad
from framework.heuristics.momentum import Momentum
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
#     seed=1
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
#     seed=1
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
#     seed=1
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
#     seed=1
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
#     seed=1
# )

# Adadelta - Adadelta Gradients
# experiment = fw.experiments.Iris(
#     optimiser=fw.optimisers.Adadelta(
#         params=fw.hyper_parameters.Adadelta(
#             learning_rate=fw.schedules.Exponential(
#                 initial=1.0,
#                 steps=600,
#                 rate=0.95,
#                 staircase=False
#             ),
#             rho=0.95,
#             epsilon=1e-07
#         )
#     ),
#     epochs=200,
#     batch_size=50,
#     log_dir="logs/adadelta-lrs-rho-0.95-eps-1e-07",
#     seed=1
# )

# Adam - Adaptive Moments
# experiment = fw.experiments.Iris(
#     optimiser=fw.optimisers.Adam(
#         params=fw.hyper_parameters.Adam(
#             learning_rate=fw.schedules.Exponential(
#                 initial=0.1,
#                 steps=600,
#                 rate=0.01,
#                 staircase=False
#             ),
#             beta1=0.9,
#             beta2=0.999,
#             epsilon=1e-07
#         )
#     ),
#     epochs=200,
#     batch_size=50,
#     log_dir="logs/adam-lrs-beta1-0.9-beta2-0.999-eps-1e-07",
#     seed=1
# )

# PSO - Particle Swarm Optimisation
# experiment = fw.experiments.Iris(
#     optimiser=fw.optimisers.PSO(
#         params=fw.hyper_parameters.PSO(
#             population_size=10,
#             learning_rate=fw.schedules.Exponential(
#                 initial=1.0,
#                 steps=600,
#                 rate=0.9,
#                 staircase=False
#             ),
#             inertia_weight=0.729844,
#             social_control=1.496180,
#             cognitive_control=1.496180,
#             velocity_clip_min=-1.0,
#             velocity_clip_max=1.0
#         )
#     ),
#     epochs=200,
#     batch_size=50,
#     log_dir="logs/pso-pop-10-lrs-w-0.7-c1-1.49-c2-1.49-vclip-1.0",
#     seed=1
# )

# BHH
experiment = fw.experiments.Iris(
    optimiser=fw.optimisers.BHH(
        params=fw.hyper_parameters.BHH(
            population_size=10,
            burn_in=0,
            replay=100,
            reselection=5,
            reanalysis=5,
            normalise=False,
            credit=[
                fw.credits.PBest(discounted_rewards=True)
            ],
            defaults={
                "sgd": fw.hyper_parameters.SGD(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=600,
                        rate=0.1,
                        staircase=False
                    )
                ),
                "momentum": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=600,
                        rate=0.1,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "nag": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=600,
                        rate=0.1,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "adagrad": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=600,
                        rate=0.1,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "rmsprop": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=600,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "adadelta": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=600,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "adam": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=600,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "pso": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=600,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                )
            },
            heuristics=[
                fw.heuristics.SGD(
                    params=fw.hyper_parameters.SGD(
                        learning_rate=fw.schedules.Exponential(
                            initial=1.0,
                            steps=600,
                            rate=0.1,
                            staircase=False
                        )
                    )
                ),
                fw.heuristics.Momentum(
                    params=fw.hyper_parameters.Momentum(
                        learning_rate=fw.schedules.Exponential(
                            initial=1.0,
                            steps=600,
                            rate=0.1,
                            staircase=False
                        ),
                        momentum=0.9
                    )
                ),
                fw.heuristics.NAG(
                    params=fw.hyper_parameters.NAG(
                        learning_rate=fw.schedules.Exponential(
                            initial=1.0,
                            steps=600,
                            rate=0.1,
                            staircase=False
                        ),
                        momentum=0.9
                    )
                ),
                fw.heuristics.Adagrad(
                    params=fw.hyper_parameters.Adagrad(
                        learning_rate=fw.schedules.Exponential(
                            initial=1.0,
                            steps=600,
                            rate=0.1,
                            staircase=False
                        ),
                        epsilon=1e-07
                    )
                ),
                fw.heuristics.RMSProp(
                    params=fw.hyper_parameters.RMSProp(
                        learning_rate=fw.schedules.Exponential(
                            initial=0.1,
                            steps=600,
                            rate=0.01,
                            staircase=False
                        ),
                        rho=0.95,
                        epsilon=1e-07
                    )
                ),
                fw.heuristics.Adadelta(
                    params=fw.hyper_parameters.Adadelta(
                        learning_rate=fw.schedules.Exponential(
                            initial=1.0,
                            steps=600,
                            rate=0.95,
                            staircase=False
                        ),
                        rho=0.95,
                        epsilon=1e-07
                    )
                ),
                fw.heuristics.Adam(
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
                fw.heuristics.PSO(
                    params=fw.hyper_parameters.PSO(
                        learning_rate=fw.schedules.Exponential(
                            initial=1.0,
                            steps=600,
                            rate=0.9,
                            staircase=False
                        ),
                        inertia_weight=0.729844,
                        social_control=1.496180,
                        cognitive_control=1.496180,
                        velocity_clip_min=-1.0,
                        velocity_clip_max=1.0
                    )
                ),
                # fw.heuristics.PSO(
                #     params=fw.hyper_parameters.PSO(
                #         learning_rate=fw.schedules.Exponential(
                #             initial=1.0,
                #             steps=600,
                #             rate=0.9,
                #             staircase=False
                #         ),
                #         inertia_weight=0.729844,
                #         social_control=1.496180,
                #         cognitive_control=1.496180,
                #         # velocity_clip_min=-1.0,
                #         # velocity_clip_max=1.0
                #     )
                # ),
            ]
        ),
    ),
    epochs=200,
    batch_size=50,
    log_dir="logs/bhh-norm-false",
    seed=1
)

if __name__ == "__main__":
    experiment.initialise()
    experiment()
