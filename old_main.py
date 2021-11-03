
# # SGD
# experiment = fw.experiments.Iris(
#     optimiser=fw.optimisers.SGD(
#         params=fw.hyper_parameters.SGD(
#             learning_rate=fw.schedules.Exponential(
#                 initial=0.1,
#                 steps=600,
#                 rate=0.01,
#                 staircase=False
#             )
#         )
#     ),
#     epochs=200,
#     batch_size=50,
#     log_dir="logs/iris/sgd-lrs",
#     seed=1
# )

# experiment = fw.experiments.ForestFires(
#     optimiser=fw.optimisers.SGD(
#         params=fw.hyper_parameters.SGD(
#             learning_rate=fw.schedules.Exponential(
#                 initial=1.0,
#                 steps=512,
#                 rate=0.1,
#                 staircase=False
#             )
#         )
#     ),
#     epochs=50,
#     batch_size=50,
#     log_dir="logs/forest_fires/sgd-lrs",
#     seed=1
# )

# experiment = fw.experiments.Abalone(
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
#     log_dir="logs/abalone/sgd-lrs",
#     seed=1
# )

# experiment = fw.experiments.Abalone(
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
#     log_dir="logs/sgd-lrs-abalone",
#     seed=1
# )

# experiment = fw.experiments.Adult(
#     optimiser=fw.optimisers.SGD(
#         params=fw.hyper_parameters.SGD(
#             learning_rate=fw.schedules.Exponential(
#                 initial=1.0,
#                 steps=60000,
#                 rate=0.1,
#                 staircase=False
#             )
#         )
#     ),
#     epochs=200,
#     batch_size=50,
#     log_dir="logs/adult/sgd-lrs",
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
#     log_dir="logs/iris/momentum-lrs-mom-0.9",
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
#     log_dir="logs/iris/adam-lrs-beta1-0.9-beta2-0.999-eps-1e-07",
#     seed=1
# )

# experiment = fw.experiments.Abalone(
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
#     log_dir="logs/abalone/adam-lrs-beta1-0.9-beta2-0.999-eps-1e-07",
#     seed=1
# )

# experiment = fw.experiments.Adult(
#     optimiser=fw.optimisers.Adam(
#         params=fw.hyper_parameters.Adam(
#             learning_rate=fw.schedules.Exponential(
#                 initial=0.1,
#                 steps=60000,
#                 rate=0.01,
#                 staircase=False
#             ),
#             beta1=0.9,
#             beta2=0.999,
#             epsilon=1e-07
#         )
#     ),
#     epochs=50,
#     batch_size=50,
#     log_dir="logs/adult/adam-lrs-beta1-0.9-beta2-0.999-eps-1e-07",
#     seed=1
# )

# experiment = fw.experiments.Mushroom(
#     optimiser=fw.optimisers.Adam(
#         params=fw.hyper_parameters.Adam(
#             learning_rate=fw.schedules.Exponential(
#                 initial=0.1,
#                 steps=2000,
#                 rate=0.01,
#                 staircase=False
#             ),
#             beta1=0.9,
#             beta2=0.999,
#             epsilon=1e-07
#         )
#     ),
#     epochs=50,
#     batch_size=50,
#     log_dir="logs/mushroom/adam-lrs-beta1-0.9-beta2-0.999-eps-1e-07",
#     seed=1
# )

# experiment = fw.experiments.WineQuality(
#     optimiser=fw.optimisers.Adam(
#         params=fw.hyper_parameters.Adam(
#             learning_rate=fw.schedules.Exponential(
#                 initial=0.1,
#                 steps=6500,
#                 rate=0.01,
#                 staircase=False
#             ),
#             beta1=0.9,
#             beta2=0.999,
#             epsilon=1e-07
#         )
#     ),
#     epochs=50,
#     batch_size=50,
#     log_dir="logs/wine_quality/adam-lrs-beta1-0.9-beta2-0.999-eps-1e-07",
#     seed=1
# )

# experiment = fw.experiments.Bank(
#     optimiser=fw.optimisers.Adam(
#         params=fw.hyper_parameters.Adam(
#             learning_rate=fw.schedules.Exponential(
#                 initial=0.1,
#                 steps=45000,
#                 rate=0.01,
#                 staircase=False
#             ),
#             beta1=0.9,
#             beta2=0.999,
#             epsilon=1e-07
#         )
#     ),
#     epochs=50,
#     batch_size=50,
#     log_dir="logs/bank/adam-lrs-beta1-0.9-beta2-0.999-eps-1e-07",
#     seed=1
# )

# experiment = fw.experiments.Diabetic(
#     optimiser=fw.optimisers.Adam(
#         params=fw.hyper_parameters.Adam(
#             learning_rate=fw.schedules.Exponential(
#                 initial=0.1,
#                 steps=110000,
#                 rate=0.01,
#                 staircase=False
#             ),
#             beta1=0.9,
#             beta2=0.999,
#             epsilon=1e-07
#         )
#     ),
#     epochs=50,
#     batch_size=50,
#     log_dir="logs/diabetic/adam-lrs-beta1-0.9-beta2-0.999-eps-1e-07",
#     seed=1
# )

# experiment = fw.experiments.Car(
#     optimiser=fw.optimisers.Adam(
#         params=fw.hyper_parameters.Adam(
#             learning_rate=fw.schedules.Exponential(
#                 initial=0.1,
#                 steps=170,
#                 rate=0.01,
#                 staircase=False
#             ),
#             beta1=0.9,
#             beta2=0.999,
#             epsilon=1e-07
#         )
#     ),
#     epochs=50,
#     batch_size=50,
#     log_dir="logs/car/adam-lrs-beta1-0.9-beta2-0.999-eps-1e-07",
#     seed=1
# )

# experiment = fw.experiments.ForestFires(
#     optimiser=fw.optimisers.Adam(
#         params=fw.hyper_parameters.Adam(
#             learning_rate=fw.schedules.Exponential(
#                 initial=0.1,
#                 steps=1512,
#                 rate=0.01,
#                 staircase=False
#             ),
#             beta1=0.9,
#             beta2=0.999,
#             epsilon=1e-07
#         )
#     ),
#     epochs=150,
#     batch_size=50,
#     log_dir="logs/forest_fires/adam-lrs-beta1-0.9-beta2-0.999-eps-1e-07",
#     seed=1
# )

# experiment = fw.experiments.Bike(
#     optimiser=fw.optimisers.Adam(
#         params=fw.hyper_parameters.Adam(
#             learning_rate=fw.schedules.Exponential(
#                 initial=0.01,
#                 steps=17400,
#                 rate=0.001,
#                 staircase=False
#             ),
#             beta1=0.9,
#             beta2=0.999,
#             epsilon=1e-07
#         )
#     ),
#     epochs=50,
#     batch_size=50,
#     log_dir="logs/bike/adam-lrs-beta1-0.9-beta2-0.999-eps-1e-07",
#     seed=1
# )

# experiment = fw.experiments.Parkinsons(
#     optimiser=fw.optimisers.Adam(
#         params=fw.hyper_parameters.Adam(
#             learning_rate=fw.schedules.Exponential(
#                 initial=0.01,
#                 steps=6000,
#                 rate=0.001,
#                 staircase=False
#             ),
#             beta1=0.9,
#             beta2=0.999,
#             epsilon=1e-07
#         )
#     ),
#     epochs=50,
#     batch_size=50,
#     log_dir="logs/parkinsons/adam-lrs-beta1-0.9-beta2-0.999-eps-1e-07",
#     seed=1
# )

# experiment = fw.experiments.FishToxicity(
#     optimiser=fw.optimisers.Adam(
#         params=fw.hyper_parameters.Adam(
#             learning_rate=fw.schedules.Exponential(
#                 initial=0.01,
#                 steps=1000,
#                 rate=0.001,
#                 staircase=False
#             ),
#             beta1=0.9,
#             beta2=0.999,
#             epsilon=1e-07
#         )
#     ),
#     epochs=50,
#     batch_size=50,
#     log_dir="logs/fish_toxicity/adam-lrs-beta1-0.9-beta2-0.999-eps-1e-07",
#     seed=1
# )

# experiment = fw.experiments.AirQuality(
#     optimiser=fw.optimisers.Adam(
#         params=fw.hyper_parameters.Adam(
#             learning_rate=fw.schedules.Exponential(
#                 initial=0.01,
#                 steps=10000,
#                 rate=0.001,
#                 staircase=False
#             ),
#             beta1=0.9,
#             beta2=0.999,
#             epsilon=1e-07
#         )
#     ),
#     epochs=50,
#     batch_size=50,
#     log_dir="logs/air_quality/adam-lrs-beta1-0.9-beta2-0.999-eps-1e-07",
#     seed=1
# )

# experiment = fw.experiments.Housing(
#     optimiser=fw.optimisers.Adam(
#         params=fw.hyper_parameters.Adam(
#             learning_rate=fw.schedules.Exponential(
#                 initial=0.01,
#                 steps=500,
#                 rate=0.001,
#                 staircase=False
#             ),
#             beta1=0.9,
#             beta2=0.999,
#             epsilon=1e-07
#         )
#     ),
#     epochs=50,
#     batch_size=50,
#     log_dir="logs/housing/adam-lrs-beta1-0.9-beta2-0.999-eps-1e-07",
#     seed=1
# )

# experiment = fw.experiments.StudentPerformance(
#     optimiser=fw.optimisers.Adam(
#         params=fw.hyper_parameters.Adam(
#             learning_rate=fw.schedules.Exponential(
#                 initial=0.01,
#                 steps=1000,
#                 rate=0.001,
#                 staircase=False
#             ),
#             beta1=0.9,
#             beta2=0.999,
#             epsilon=1e-07
#         )
#     ),
#     epochs=50,
#     batch_size=50,
#     log_dir="logs/student_performance/adam-lrs-beta1-0.9-beta2-0.999-eps-1e-07",
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

# Differential Evolution
# experiment = fw.experiments.Iris(
#     optimiser=fw.optimisers.DE(
#         params=fw.hyper_parameters.DE(
#             population_size=10,
#             selection_strategy="best",
#             xo_strategy="exp",
#             recombination_probability=fw.schedules.Exponential(
#                 initial=0.9,
#                 steps=600,
#                 rate=0.1,
#                 staircase=False
#             ),
#             beta=fw.schedules.Exponential(
#                 initial=2.0,
#                 steps=600,
#                 rate=0.001,
#                 staircase=False
#             ),
#         )
#     ),
#     epochs=200,
#     batch_size=50,
#     log_dir="logs/de-pop-10-ss:best-xos:exp-rp:s-beta:s",
#     seed=None
# )

# Genetic Algorithm
# experiment = fw.experiments.Iris(
#     optimiser=fw.optimisers.GA(
#         params=fw.hyper_parameters.GA(
#             population_size=10,
#             selection_strategy="rand",
#             xo_strategy="bin",
#             mutation_rate=fw.schedules.Exponential(
#                 initial=0.2,
#                 steps=600,
#                 rate=0.01,
#                 staircase=False
#             ),
#         )
#     ),
#     epochs=200,
#     batch_size=50,
#     log_dir="logs/ga-pop-10-ss:rand-xos:bin-mr:s",
#     seed=None
# )

# BHH
# experiment = fw.experiments.Iris(
#     optimiser=fw.optimisers.BHH(
#         params=fw.hyper_parameters.BHH(
#             population_size=5,
#             burn_in=0,
#             replay=50,
#             reselection=5,
#             reanalysis=5,
#             normalise=False,
#             credit=[
#                 fw.credits.GBest(discounted_rewards=True)
#             ],
#             defaults={
#                 "sgd": fw.hyper_parameters.SGD(
#                     learning_rate=fw.schedules.Exponential(
#                         initial=0.1,
#                         steps=600,
#                         rate=0.01,
#                         staircase=False
#                     )
#                 ),
#                 "momentum": fw.hyper_parameters.Momentum(
#                     learning_rate=fw.schedules.Exponential(
#                         initial=0.1,
#                         steps=600,
#                         rate=0.01,
#                         staircase=False
#                     ),
#                     momentum=0.9
#                 ),
#                 "nag": fw.hyper_parameters.NAG(
#                     learning_rate=fw.schedules.Exponential(
#                         initial=0.01,
#                         steps=17400,
#                         rate=0.001,
#                         staircase=False
#                     ),
#                     momentum=0.9
#                 ),
#                 "adagrad": fw.hyper_parameters.Adagrad(
#                     learning_rate=fw.schedules.Exponential(
#                         initial=0.1,
#                         steps=600,
#                         rate=0.01,
#                         staircase=False
#                     ),
#                     epsilon=1e-07
#                 ),
#                 "rmsprop": fw.hyper_parameters.RMSProp(
#                     learning_rate=fw.schedules.Exponential(
#                         initial=0.1,
#                         steps=600,
#                         rate=0.01,
#                         staircase=False
#                     ),
#                     rho=0.95,
#                     epsilon=1e-07
#                 ),
#                 "adadelta": fw.hyper_parameters.Adadelta(
#                     learning_rate=fw.schedules.Exponential(
#                         initial=0.1,
#                         steps=600,
#                         rate=0.01,
#                         staircase=False
#                     ),
#                     rho=0.95,
#                     epsilon=1e-07
#                 ),
#                 "adam": fw.hyper_parameters.Adam(
#                     learning_rate=fw.schedules.Exponential(
#                         initial=0.1,
#                         steps=600,
#                         rate=0.01,
#                         staircase=False
#                     ),
#                     beta1=0.9,
#                     beta2=0.999,
#                     epsilon=1e-07
#                 ),
#                 "pso": fw.hyper_parameters.PSO(
#                     learning_rate=fw.schedules.Exponential(
#                         initial=0.1,
#                         steps=600,
#                         rate=0.01,
#                         staircase=False
#                     ),
#                     inertia_weight=0.729844,
#                     social_control=1.496180,
#                     cognitive_control=1.496180,
#                     velocity_clip_min=-1.0,
#                     velocity_clip_max=1.0
#                 ),
#                 "de": fw.hyper_parameters.DE(
#                     selection_strategy="best",
#                     xo_strategy="exp",
#                     recombination_probability=fw.schedules.Exponential(
#                         initial=0.9,
#                         steps=600,
#                         rate=0.1,
#                         staircase=False
#                     ),
#                     beta=fw.schedules.Exponential(
#                         initial=0.9,
#                         steps=600,
#                         rate=0.01,
#                         staircase=False
#                     )
#                 ),
#                 "ga": fw.hyper_parameters.GA(
#                     selection_strategy="rand",
#                     xo_strategy="bin",
#                     mutation_rate=fw.schedules.Exponential(
#                         initial=0.2,
#                         steps=600,
#                         rate=0.01,
#                         staircase=False
#                     ),
#                 )
#             },
#             heuristics=[
#                 fw.heuristics.SGD(
#                     params=fw.hyper_parameters.SGD(
#                         learning_rate=fw.schedules.Exponential(
#                             initial=0.1,
#                             steps=600,
#                             rate=0.01,
#                             staircase=False
#                         )
#                     )
#                 ),
#                 fw.heuristics.Momentum(
#                     params=fw.hyper_parameters.Momentum(
#                         learning_rate=fw.schedules.Exponential(
#                             initial=0.1,
#                             steps=600,
#                             rate=0.01,
#                             staircase=False
#                         ),
#                         momentum=0.9
#                     )
#                 ),
#                 fw.heuristics.NAG(
#                     params=fw.hyper_parameters.NAG(
#                         learning_rate=fw.schedules.Exponential(
#                             initial=0.1,
#                             steps=600,
#                             rate=0.01,
#                             staircase=False
#                         ),
#                         momentum=0.9
#                     )
#                 ),
#                 fw.heuristics.Adagrad(
#                     params=fw.hyper_parameters.Adagrad(
#                         learning_rate=fw.schedules.Exponential(
#                             initial=0.1,
#                             steps=600,
#                             rate=0.01,
#                             staircase=False
#                         ),
#                         epsilon=1e-07
#                     )
#                 ),
#                 fw.heuristics.RMSProp(
#                     params=fw.hyper_parameters.RMSProp(
#                         learning_rate=fw.schedules.Exponential(
#                             initial=0.1,
#                             steps=600,
#                             rate=0.01,
#                             staircase=False
#                         ),
#                         rho=0.95,
#                         epsilon=1e-07
#                     )
#                 ),
#                 fw.heuristics.Adadelta(
#                     params=fw.hyper_parameters.Adadelta(
#                         learning_rate=fw.schedules.Exponential(
#                             initial=0.1,
#                             steps=600,
#                             rate=0.01,
#                             staircase=False
#                         ),
#                         rho=0.95,
#                         epsilon=1e-07
#                     )
#                 ),
#                 fw.heuristics.Adam(
#                     params=fw.hyper_parameters.Adam(
#                         learning_rate=fw.schedules.Exponential(
#                             initial=0.1,
#                             steps=600,
#                             rate=0.01,
#                             staircase=False
#                         ),
#                         beta1=0.9,
#                         beta2=0.999,
#                         epsilon=1e-07
#                     )
#                 ),
#                 fw.heuristics.PSO(
#                     params=fw.hyper_parameters.PSO(
#                         learning_rate=fw.schedules.Exponential(
#                             initial=0.1,
#                             steps=600,
#                             rate=0.01,
#                             staircase=False
#                         ),
#                         inertia_weight=0.729844,
#                         social_control=1.496180,
#                         cognitive_control=1.496180,
#                         velocity_clip_min=-0.01,
#                         velocity_clip_max=0.01
#                     )
#                 ),
#                 fw.heuristics.DE(
#                     params=fw.hyper_parameters.DE(
#                         selection_strategy="best",
#                         xo_strategy="exp",
#                         recombination_probability=fw.schedules.Exponential(
#                             initial=0.9,
#                             steps=600,
#                             rate=0.1,
#                             staircase=False
#                         ),
#                         beta=fw.schedules.Exponential(
#                             initial=0.9,
#                             steps=600,
#                             rate=0.01,
#                             staircase=False
#                         ),
#                     )
#                 ),
#                 fw.heuristics.GA(
#                     params=fw.hyper_parameters.GA(
#                         selection_strategy="best",
#                         xo_strategy="bin",
#                         mutation_rate=fw.schedules.Exponential(
#                             initial=0.2,
#                             steps=600,
#                             rate=0.01,
#                             staircase=False
#                         ),
#                     )
#                 )
#             ]
#         ),
#     ),
#     epochs=200,
#     batch_size=50,
#     log_dir="logs/iris/bhh-all-with-ga",
#     seed=None
# )

if __name__ == "__main__":
    experiment.initialise()
    experiment()
