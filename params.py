import framework as fw

INCLUDE_ALL = [
    "sgd",
    "momentum",
    "nag",
    "adagrad",
    "rmsprop",
    "adadelta",
    "adam",
    "pso",
    "ga",
    "de"
]

INCLUDE_GD_ONLY = [
    "sgd",
    "momentum",
    "nag",
    "adagrad",
    "rmsprop",
    "adadelta",
    "adam"
]

params = {
    "abalone": {
        "experiment": fw.experiments.Abalone,
        "optimisers": {
            "sgd": {
                "optimiser": fw.optimisers.SGD,
                "heuristic": fw.heuristics.SGD,
                "params": fw.hyper_parameters.SGD(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=350,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs_revised/abalone/sgd/default/{}"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "heuristic": fw.heuristics.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=350,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs_revised/abalone/momentum/default/{}"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "heuristic": fw.heuristics.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=350,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs_revised/abalone/nag/default/{}"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "heuristic": fw.heuristics.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=350,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs_revised/abalone/adagrad/default/{}"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "heuristic": fw.heuristics.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=350,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs_revised/abalone/rmsprop/default/{}"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "heuristic": fw.heuristics.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=350,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs_revised/abalone/adadelta/default/{}"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "heuristic": fw.heuristics.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=350,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs_revised/abalone/adam/default/{}"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "heuristic": fw.heuristics.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=350,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs_revised/abalone/pso/default/{}"
            },
            "de": {
                "optimiser": fw.optimisers.DE,
                "heuristic": fw.heuristics.DE,
                "params": fw.hyper_parameters.DE(
                    population_size=10,
                    selection_strategy="best",
                    xo_strategy="exp",
                    recombination_probability=fw.schedules.Exponential(
                        initial=0.9,
                        steps=350,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=350,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs_revised/abalone/de/default/{}"
            },
            "ga": {
                "optimiser": fw.optimisers.GA,
                "heuristic": fw.heuristics.GA,
                "params": fw.hyper_parameters.GA(
                    population_size=10,
                    selection_strategy="rand",
                    xo_strategy="bin",
                    mutation_rate=fw.schedules.Exponential(
                        initial=0.2,
                        steps=350,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs_revised/abalone/ga/default/{}"
            },
            "bhh": {
                "optimiser": fw.optimisers.BHH,
                "heuristic": fw.heuristics.BHH,
            }
        }
    },
    "adult": {
        "experiment": fw.experiments.Adult,
        "optimisers": {
            "sgd": {
                "optimiser": fw.optimisers.SGD,
                "heuristic": fw.heuristics.SGD,
                "params": fw.hyper_parameters.SGD(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=3800,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs_revised/adult/sgd/default/{}"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "heuristic": fw.heuristics.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=3800,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs_revised/adult/momentum/default/{}"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "heuristic": fw.heuristics.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=3800,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs_revised/adult/nag/default/{}"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "heuristic": fw.heuristics.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=3800,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs_revised/adult/adagrad/default/{}"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "heuristic": fw.heuristics.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=3800,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs_revised/adult/rmsprop/default/{}"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "heuristic": fw.heuristics.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=3800,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs_revised/adult/adadelta/default/{}"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "heuristic": fw.heuristics.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=3800,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs_revised/adult/adam/default/{}"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "heuristic": fw.heuristics.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=3800,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs_revised/adult/pso/default/{}"
            },
            "de": {
                "optimiser": fw.optimisers.DE,
                "heuristic": fw.heuristics.DE,
                "params": fw.hyper_parameters.DE(
                    population_size=10,
                    selection_strategy="best",
                    xo_strategy="exp",
                    recombination_probability=fw.schedules.Exponential(
                        initial=0.9,
                        steps=3800,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=3800,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs_revised/adult/de/default/{}"
            },
            "ga": {
                "optimiser": fw.optimisers.GA,
                "heuristic": fw.heuristics.GA,
                "params": fw.hyper_parameters.GA(
                    population_size=10,
                    selection_strategy="rand",
                    xo_strategy="bin",
                    mutation_rate=fw.schedules.Exponential(
                        initial=0.2,
                        steps=3800,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs_revised/adult/ga/default/{}"
            },
            "bhh": {
                "optimiser": fw.optimisers.BHH,
                "heuristic": fw.heuristics.BHH,
            }
        }
    },
    "air_quality": {
        "experiment": fw.experiments.AirQuality,
        "optimisers": {
            "sgd": {
                "optimiser": fw.optimisers.SGD,
                "heuristic": fw.heuristics.SGD,
                "params": fw.hyper_parameters.SGD(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=1600,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs_revised/air_quality/sgd/default/{}"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "heuristic": fw.heuristics.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=1600,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs_revised/air_quality/momentum/default/{}"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "heuristic": fw.heuristics.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=1600,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs_revised/air_quality/nag/default/{}"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "heuristic": fw.heuristics.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=1600,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs_revised/air_quality/adagrad/default/{}"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "heuristic": fw.heuristics.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=1600,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs_revised/air_quality/rmsprop/default/{}"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "heuristic": fw.heuristics.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=1600,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs_revised/air_quality/adadelta/default/{}"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "heuristic": fw.heuristics.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=1600,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs_revised/air_quality/adam/default/{}"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "heuristic": fw.heuristics.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=1600,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs_revised/air_quality/pso/default/{}"
            },
            "de": {
                "optimiser": fw.optimisers.DE,
                "heuristic": fw.heuristics.DE,
                "params": fw.hyper_parameters.DE(
                    population_size=10,
                    selection_strategy="best",
                    xo_strategy="exp",
                    recombination_probability=fw.schedules.Exponential(
                        initial=0.9,
                        steps=1600,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=1600,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs_revised/air_quality/de/default/{}"
            },
            "ga": {
                "optimiser": fw.optimisers.GA,
                "heuristic": fw.heuristics.GA,
                "params": fw.hyper_parameters.GA(
                    population_size=10,
                    selection_strategy="rand",
                    xo_strategy="bin",
                    mutation_rate=fw.schedules.Exponential(
                        initial=0.2,
                        steps=1600,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs_revised/air_quality/ga/default/{}"
            },
            "bhh": {
                "optimiser": fw.optimisers.BHH,
                "heuristic": fw.heuristics.BHH,
            }
        }
    },
    "bank": {
        "experiment": fw.experiments.Bank,
        "optimisers": {
            "sgd": {
                "optimiser": fw.optimisers.SGD,
                "heuristic": fw.heuristics.SGD,
                "params": fw.hyper_parameters.SGD(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=1800,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs_revised/bank/sgd/default/{}"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "heuristic": fw.heuristics.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=1800,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs_revised/bank/momentum/default/{}"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "heuristic": fw.heuristics.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=1800,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs_revised/bank/nag/default/{}"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "heuristic": fw.heuristics.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=1800,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs_revised/bank/adagrad/default/{}"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "heuristic": fw.heuristics.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=1800,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs_revised/bank/rmsprop/default/{}"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "heuristic": fw.heuristics.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=1800,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs_revised/bank/adadelta/default/{}"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "heuristic": fw.heuristics.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=1800,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs_revised/bank/adam/default/{}"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "heuristic": fw.heuristics.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=1800,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs_revised/bank/pso/default/{}"
            },
            "de": {
                "optimiser": fw.optimisers.DE,
                "heuristic": fw.heuristics.DE,
                "params": fw.hyper_parameters.DE(
                    population_size=10,
                    selection_strategy="best",
                    xo_strategy="exp",
                    recombination_probability=fw.schedules.Exponential(
                        initial=0.9,
                        steps=1800,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=1800,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs_revised/bank/de/default/{}"
            },
            "ga": {
                "optimiser": fw.optimisers.GA,
                "heuristic": fw.heuristics.GA,
                "params": fw.hyper_parameters.GA(
                    population_size=10,
                    selection_strategy="rand",
                    xo_strategy="bin",
                    mutation_rate=fw.schedules.Exponential(
                        initial=0.2,
                        steps=1800,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs_revised/bank/ga/default/{}"
            },
            "bhh": {
                "optimiser": fw.optimisers.BHH,
                "heuristic": fw.heuristics.BHH,
            }
        }
    },
    "bike": {
        "experiment": fw.experiments.Bike,
        "optimisers": {
            "sgd": {
                "optimiser": fw.optimisers.SGD,
                "heuristic": fw.heuristics.SGD,
                "params": fw.hyper_parameters.SGD(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=1360,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs_revised/bike/sgd/default/{}"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "heuristic": fw.heuristics.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=1360,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs_revised/bike/momentum/default/{}"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "heuristic": fw.heuristics.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=1360,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs_revised/bike/nag/default/{}"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "heuristic": fw.heuristics.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=1360,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs_revised/bike/adagrad/default/{}"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "heuristic": fw.heuristics.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=1360,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs_revised/bike/rmsprop/default/{}"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "heuristic": fw.heuristics.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=1360,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs_revised/bike/adadelta/default/{}"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "heuristic": fw.heuristics.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=1360,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs_revised/bike/adam/default/{}"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "heuristic": fw.heuristics.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=1360,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs_revised/bike/pso/default/{}"
            },
            "de": {
                "optimiser": fw.optimisers.DE,
                "heuristic": fw.heuristics.DE,
                "params": fw.hyper_parameters.DE(
                    population_size=10,
                    selection_strategy="best",
                    xo_strategy="exp",
                    recombination_probability=fw.schedules.Exponential(
                        initial=0.9,
                        steps=1360,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=1360,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs_revised/bike/de/default/{}"
            },
            "ga": {
                "optimiser": fw.optimisers.GA,
                "heuristic": fw.heuristics.GA,
                "params": fw.hyper_parameters.GA(
                    population_size=10,
                    selection_strategy="rand",
                    xo_strategy="bin",
                    mutation_rate=fw.schedules.Exponential(
                        initial=0.2,
                        steps=1360,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs_revised/bike/ga/default/{}"
            },
            "bhh": {
                "optimiser": fw.optimisers.BHH,
                "heuristic": fw.heuristics.BHH,
            }
        }
    },
    "car": {
        "experiment": fw.experiments.Car,
        "optimisers": {
            "sgd": {
                "optimiser": fw.optimisers.SGD,
                "heuristic": fw.heuristics.SGD,
                "params": fw.hyper_parameters.SGD(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=270,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs_revised/car/sgd/default/{}"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "heuristic": fw.heuristics.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=270,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs_revised/car/momentum/default/{}"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "heuristic": fw.heuristics.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=270,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs_revised/car/nag/default/{}"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "heuristic": fw.heuristics.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=270,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs_revised/car/adagrad/default/{}"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "heuristic": fw.heuristics.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=270,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs_revised/car/rmsprop/default/{}"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "heuristic": fw.heuristics.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=270,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs_revised/car/adadelta/default/{}"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "heuristic": fw.heuristics.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=270,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs_revised/car/adam/default/{}"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "heuristic": fw.heuristics.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=270,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs_revised/car/pso/default/{}"
            },
            "de": {
                "optimiser": fw.optimisers.DE,
                "heuristic": fw.heuristics.DE,
                "params": fw.hyper_parameters.DE(
                    population_size=10,
                    selection_strategy="best",
                    xo_strategy="exp",
                    recombination_probability=fw.schedules.Exponential(
                        initial=0.9,
                        steps=270,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=270,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs_revised/car/de/default/{}"
            },
            "ga": {
                "optimiser": fw.optimisers.GA,
                "heuristic": fw.heuristics.GA,
                "params": fw.hyper_parameters.GA(
                    population_size=10,
                    selection_strategy="rand",
                    xo_strategy="bin",
                    mutation_rate=fw.schedules.Exponential(
                        initial=0.2,
                        steps=12000,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs_revised/car/ga/default/{}"
            },
            "bhh": {
                "optimiser": fw.optimisers.BHH,
                "heuristic": fw.heuristics.BHH,
            }
        }
    },
    "diabetic": {
        "experiment": fw.experiments.Diabetic,
        "optimisers": {
            "sgd": {
                "optimiser": fw.optimisers.SGD,
                "heuristic": fw.heuristics.SGD,
                "params": fw.hyper_parameters.SGD(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=2000,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs_revised/diabetic/sgd/default/{}"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "heuristic": fw.heuristics.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=2000,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs_revised/diabetic/momentum/default/{}"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "heuristic": fw.heuristics.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=2000,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs_revised/diabetic/nag/default/{}"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "heuristic": fw.heuristics.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=2000,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs_revised/diabetic/adagrad/default/{}"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "heuristic": fw.heuristics.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=2000,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs_revised/diabetic/rmsprop/default/{}"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "heuristic": fw.heuristics.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=2000,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs_revised/diabetic/adadelta/default/{}"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "heuristic": fw.heuristics.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=2000,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs_revised/diabetic/adam/default/{}"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "heuristic": fw.heuristics.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=2000,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs_revised/diabetic/pso/default/{}"
            },
            "de": {
                "optimiser": fw.optimisers.DE,
                "heuristic": fw.heuristics.DE,
                "params": fw.hyper_parameters.DE(
                    population_size=10,
                    selection_strategy="best",
                    xo_strategy="exp",
                    recombination_probability=fw.schedules.Exponential(
                        initial=0.9,
                        steps=2000,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=2000,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs_revised/diabetic/de/default/{}"
            },
            "ga": {
                "optimiser": fw.optimisers.GA,
                "heuristic": fw.heuristics.GA,
                "params": fw.hyper_parameters.GA(
                    population_size=10,
                    selection_strategy="rand",
                    xo_strategy="bin",
                    mutation_rate=fw.schedules.Exponential(
                        initial=0.2,
                        steps=2000,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs_revised/diabetic/ga/default/{}"
            },
            "bhh": {
                "optimiser": fw.optimisers.BHH,
                "heuristic": fw.heuristics.BHH,
            }
        }
    },
    "fish_toxicity": {
        "experiment": fw.experiments.FishToxicity,
        "optimisers": {
            "sgd": {
                "optimiser": fw.optimisers.SGD,
                "heuristic": fw.heuristics.SGD,
                "params": fw.hyper_parameters.SGD(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=280,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs_revised/fish_toxicity/sgd/default/{}"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "heuristic": fw.heuristics.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=280,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs_revised/fish_toxicity/momentum/default/{}"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "heuristic": fw.heuristics.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=280,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs_revised/fish_toxicity/nag/default/{}"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "heuristic": fw.heuristics.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=280,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs_revised/fish_toxicity/adagrad/default/{}"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "heuristic": fw.heuristics.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=280,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs_revised/fish_toxicity/rmsprop/default/{}"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "heuristic": fw.heuristics.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=280,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs_revised/fish_toxicity/adadelta/default/{}"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "heuristic": fw.heuristics.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=280,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs_revised/fish_toxicity/adam/default/{}"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "heuristic": fw.heuristics.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=280,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs_revised/fish_toxicity/pso/default/{}"
            },
            "de": {
                "optimiser": fw.optimisers.DE,
                "heuristic": fw.heuristics.DE,
                "params": fw.hyper_parameters.DE(
                    population_size=10,
                    selection_strategy="best",
                    xo_strategy="exp",
                    recombination_probability=fw.schedules.Exponential(
                        initial=0.9,
                        steps=280,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=280,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs_revised/fish_toxicity/de/default/{}"
            },
            "ga": {
                "optimiser": fw.optimisers.GA,
                "heuristic": fw.heuristics.GA,
                "params": fw.hyper_parameters.GA(
                    population_size=10,
                    selection_strategy="rand",
                    xo_strategy="bin",
                    mutation_rate=fw.schedules.Exponential(
                        initial=0.2,
                        steps=280,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs_revised/fish_toxicity/ga/default/{}"
            },
            "bhh": {
                "optimiser": fw.optimisers.BHH,
                "heuristic": fw.heuristics.BHH,
            }
        }
    },
    "forest_fires": {
        "experiment": fw.experiments.ForestFires,
        "optimisers": {
            "sgd": {
                "optimiser": fw.optimisers.SGD,
                "heuristic": fw.heuristics.SGD,
                "params": fw.hyper_parameters.SGD(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=320,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs_revised/forest_fires/sgd/default/{}"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "heuristic": fw.heuristics.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=320,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs_revised/forest_fires/momentum/default/{}"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "heuristic": fw.heuristics.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=320,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs_revised/forest_fires/nag/default/{}"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "heuristic": fw.heuristics.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=320,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs_revised/forest_fires/adagrad/default/{}"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "heuristic": fw.heuristics.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=320,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs_revised/forest_fires/rmsprop/default/{}"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "heuristic": fw.heuristics.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=320,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs_revised/forest_fires/adadelta/default/{}"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "heuristic": fw.heuristics.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=320,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs_revised/forest_fires/adam/default/{}"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "heuristic": fw.heuristics.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=320,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs_revised/forest_fires/pso/default/{}"
            },
            "de": {
                "optimiser": fw.optimisers.DE,
                "heuristic": fw.heuristics.DE,
                "params": fw.hyper_parameters.DE(
                    population_size=10,
                    selection_strategy="best",
                    xo_strategy="exp",
                    recombination_probability=fw.schedules.Exponential(
                        initial=0.9,
                        steps=320,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=320,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs_revised/forest_fires/de/default/{}"
            },
            "ga": {
                "optimiser": fw.optimisers.GA,
                "heuristic": fw.heuristics.GA,
                "params": fw.hyper_parameters.GA(
                    population_size=10,
                    selection_strategy="rand",
                    xo_strategy="bin",
                    mutation_rate=fw.schedules.Exponential(
                        initial=0.2,
                        steps=320,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs_revised/forest_fires/ga/default/{}"
            },
            "bhh": {
                "optimiser": fw.optimisers.BHH,
                "heuristic": fw.heuristics.BHH,
            }
        }
    },
    "housing": {
        "experiment": fw.experiments.Housing,
        "optimisers": {
            "sgd": {
                "optimiser": fw.optimisers.SGD,
                "heuristic": fw.heuristics.SGD,
                "params": fw.hyper_parameters.SGD(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=320,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs_revised/housing/sgd/default/{}"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "heuristic": fw.heuristics.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=320,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs_revised/housing/momentum/default/{}"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "heuristic": fw.heuristics.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=320,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs_revised/housing/nag/default/{}"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "heuristic": fw.heuristics.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=320,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs_revised/housing/adagrad/default/{}"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "heuristic": fw.heuristics.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=320,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs_revised/housing/rmsprop/default/{}"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "heuristic": fw.heuristics.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=320,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs_revised/housing/adadelta/default/{}"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "heuristic": fw.heuristics.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=320,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs_revised/housing/adam/default/{}"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "heuristic": fw.heuristics.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=320,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs_revised/housing/pso/default/{}"
            },
            "de": {
                "optimiser": fw.optimisers.DE,
                "heuristic": fw.heuristics.DE,
                "params": fw.hyper_parameters.DE(
                    population_size=10,
                    selection_strategy="best",
                    xo_strategy="exp",
                    recombination_probability=fw.schedules.Exponential(
                        initial=0.9,
                        steps=320,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=320,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs_revised/housing/de/default/{}"
            },
            "ga": {
                "optimiser": fw.optimisers.GA,
                "heuristic": fw.heuristics.GA,
                "params": fw.hyper_parameters.GA(
                    population_size=10,
                    selection_strategy="rand",
                    xo_strategy="bin",
                    mutation_rate=fw.schedules.Exponential(
                        initial=0.2,
                        steps=320,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs_revised/housing/ga/default/{}"
            },
            "bhh": {
                "optimiser": fw.optimisers.BHH,
                "heuristic": fw.heuristics.BHH,
            }
        }
    },
    "iris": {
        "experiment": fw.experiments.Iris,
        "optimisers": {
            "sgd": {
                "optimiser": fw.optimisers.SGD,
                "heuristic": fw.heuristics.SGD,
                "heuristic": fw.heuristics.SGD,
                "params": fw.hyper_parameters.SGD(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=250,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs_revised/iris/sgd/default/{}"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "heuristic": fw.heuristics.Momentum,
                "heuristic": fw.heuristics.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=250,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs_revised/iris/momentum/default/{}"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "heuristic": fw.heuristics.NAG,
                "heuristic": fw.heuristics.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=250,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs_revised/iris/nag/default/{}"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "heuristic": fw.heuristics.Adagrad,
                "heuristic": fw.heuristics.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=250,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs_revised/iris/adagrad/default/{}"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "heuristic": fw.heuristics.RMSProp,
                "heuristic": fw.heuristics.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=250,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs_revised/iris/rmsprop/default/{}"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "heuristic": fw.heuristics.Adadelta,
                "heuristic": fw.heuristics.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=250,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs_revised/iris/adadelta/default/{}"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "heuristic": fw.heuristics.Adam,
                "heuristic": fw.heuristics.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=250,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs_revised/iris/adam/default/{}"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "heuristic": fw.heuristics.PSO,
                "heuristic": fw.heuristics.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=250,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs_revised/iris/pso/default/{}"
            },
            "de": {
                "optimiser": fw.optimisers.DE,
                "heuristic": fw.heuristics.DE,
                "heuristic": fw.heuristics.DE,
                "params": fw.hyper_parameters.DE(
                    population_size=10,
                    selection_strategy="best",
                    xo_strategy="exp",
                    recombination_probability=fw.schedules.Exponential(
                        initial=0.9,
                        steps=250,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=250,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs_revised/iris/de/default/{}"
            },
            "ga": {
                "optimiser": fw.optimisers.GA,
                "heuristic": fw.heuristics.GA,
                "heuristic": fw.heuristics.GA,
                "params": fw.hyper_parameters.GA(
                    population_size=10,
                    selection_strategy="rand",
                    xo_strategy="bin",
                    mutation_rate=fw.schedules.Exponential(
                        initial=0.2,
                        steps=250,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs_revised/iris/ga/default/{}"
            },
            "bhh": {
                "optimiser": fw.optimisers.BHH,
                "heuristic": fw.heuristics.BHH,
            }
        }
    },
    "mushroom": {
        "experiment": fw.experiments.Mushroom,
        "optimisers": {
            "sgd": {
                "optimiser": fw.optimisers.SGD,
                "heuristic": fw.heuristics.SGD,
                "params": fw.hyper_parameters.SGD(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=320,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs_revised/mushroom/sgd/default/{}"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "heuristic": fw.heuristics.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=320,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs_revised/mushroom/momentum/default/{}"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "heuristic": fw.heuristics.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=320,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs_revised/mushroom/nag/default/{}"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "heuristic": fw.heuristics.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=320,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs_revised/mushroom/adagrad/default/{}"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "heuristic": fw.heuristics.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=320,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs_revised/mushroom/rmsprop/default/{}"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "heuristic": fw.heuristics.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=320,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs_revised/mushroom/adadelta/default/{}"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "heuristic": fw.heuristics.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=320,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs_revised/mushroom/adam/default/{}"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "heuristic": fw.heuristics.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=320,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs_revised/mushroom/pso/default/{}"
            },
            "de": {
                "optimiser": fw.optimisers.DE,
                "heuristic": fw.heuristics.DE,
                "params": fw.hyper_parameters.DE(
                    population_size=10,
                    selection_strategy="best",
                    xo_strategy="exp",
                    recombination_probability=fw.schedules.Exponential(
                        initial=0.9,
                        steps=320,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=320,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs_revised/mushroom/de/default/{}"
            },
            "ga": {
                "optimiser": fw.optimisers.GA,
                "heuristic": fw.heuristics.GA,
                "params": fw.hyper_parameters.GA(
                    population_size=10,
                    selection_strategy="rand",
                    xo_strategy="bin",
                    mutation_rate=fw.schedules.Exponential(
                        initial=0.2,
                        steps=320,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs_revised/mushroom/ga/default/{}"
            },
            "bhh": {
                "optimiser": fw.optimisers.BHH,
                "heuristic": fw.heuristics.BHH,
            }
        }
    },
    "parkinsons": {
        "experiment": fw.experiments.Parkinsons,
        "optimisers": {
            "sgd": {
                "optimiser": fw.optimisers.SGD,
                "heuristic": fw.heuristics.SGD,
                "params": fw.hyper_parameters.SGD(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=460,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs_revised/parkinsons/sgd/default/{}"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "heuristic": fw.heuristics.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=460,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs_revised/parkinsons/momentum/default/{}"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "heuristic": fw.heuristics.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=460,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs_revised/parkinsons/nag/default/{}"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "heuristic": fw.heuristics.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=460,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs_revised/parkinsons/adagrad/default/{}"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "heuristic": fw.heuristics.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=460,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs_revised/parkinsons/rmsprop/default/{}"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "heuristic": fw.heuristics.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=460,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs_revised/parkinsons/adadelta/default/{}"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "heuristic": fw.heuristics.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=460,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs_revised/parkinsons/adam/default/{}"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "heuristic": fw.heuristics.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=460,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs_revised/parkinsons/pso/default/{}"
            },
            "de": {
                "optimiser": fw.optimisers.DE,
                "heuristic": fw.heuristics.DE,
                "params": fw.hyper_parameters.DE(
                    population_size=10,
                    selection_strategy="best",
                    xo_strategy="exp",
                    recombination_probability=fw.schedules.Exponential(
                        initial=0.9,
                        steps=460,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=460,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs_revised/parkinsons/de/default/{}"
            },
            "ga": {
                "optimiser": fw.optimisers.GA,
                "heuristic": fw.heuristics.GA,
                "params": fw.hyper_parameters.GA(
                    population_size=10,
                    selection_strategy="rand",
                    xo_strategy="bin",
                    mutation_rate=fw.schedules.Exponential(
                        initial=0.2,
                        steps=460,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs_revised/parkinsons/ga/default/{}"
            },
            "bhh": {
                "optimiser": fw.optimisers.BHH,
                "heuristic": fw.heuristics.BHH,
            }
        }
    },
    "student_performance": {
        "experiment": fw.experiments.StudentPerformance,
        "optimisers": {
            "sgd": {
                "optimiser": fw.optimisers.SGD,
                "heuristic": fw.heuristics.SGD,
                "params": fw.hyper_parameters.SGD(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=200,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs_revised/student_performance/sgd/default/{}"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "heuristic": fw.heuristics.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=200,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs_revised/student_performance/momentum/default/{}"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "heuristic": fw.heuristics.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=200,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs_revised/student_performance/nag/default/{}"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "heuristic": fw.heuristics.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=200,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs_revised/student_performance/adagrad/default/{}"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "heuristic": fw.heuristics.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=200,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs_revised/student_performance/rmsprop/default/{}"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "heuristic": fw.heuristics.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=200,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs_revised/student_performance/adadelta/default/{}"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "heuristic": fw.heuristics.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=200,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs_revised/student_performance/adam/default/{}"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "heuristic": fw.heuristics.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=200,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs_revised/student_performance/pso/default/{}"
            },
            "de": {
                "optimiser": fw.optimisers.DE,
                "heuristic": fw.heuristics.DE,
                "params": fw.hyper_parameters.DE(
                    population_size=10,
                    selection_strategy="best",
                    xo_strategy="exp",
                    recombination_probability=fw.schedules.Exponential(
                        initial=0.9,
                        steps=200,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=200,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs_revised/student_performance/de/default/{}"
            },
            "ga": {
                "optimiser": fw.optimisers.GA,
                "heuristic": fw.heuristics.GA,
                "params": fw.hyper_parameters.GA(
                    population_size=10,
                    selection_strategy="rand",
                    xo_strategy="bin",
                    mutation_rate=fw.schedules.Exponential(
                        initial=0.2,
                        steps=200,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs_revised/student_performance/ga/default/{}"
            },
            "bhh": {
                "optimiser": fw.optimisers.BHH,
                "heuristic": fw.heuristics.BHH,
            }
        }
    },
    "wine_quality": {
        "experiment": fw.experiments.WineQuality,
        "optimisers": {
            "sgd": {
                "optimiser": fw.optimisers.SGD,
                "heuristic": fw.heuristics.SGD,
                "params": fw.hyper_parameters.SGD(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=300,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs_revised/wine_quality/sgd/default/{}"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "heuristic": fw.heuristics.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=300,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs_revised/wine_quality/momentum/default/{}"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "heuristic": fw.heuristics.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=300,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs_revised/wine_quality/nag/default/{}"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "heuristic": fw.heuristics.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=300,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs_revised/wine_quality/adagrad/default/{}"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "heuristic": fw.heuristics.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=300,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs_revised/wine_quality/rmsprop/default/{}"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "heuristic": fw.heuristics.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=300,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs_revised/wine_quality/adadelta/default/{}"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "heuristic": fw.heuristics.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=300,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs_revised/wine_quality/adam/default/{}"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "heuristic": fw.heuristics.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=300,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs_revised/wine_quality/pso/default/{}"
            },
            "de": {
                "optimiser": fw.optimisers.DE,
                "heuristic": fw.heuristics.DE,
                "params": fw.hyper_parameters.DE(
                    population_size=10,
                    selection_strategy="best",
                    xo_strategy="exp",
                    recombination_probability=fw.schedules.Exponential(
                        initial=0.9,
                        steps=300,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=300,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs_revised/wine_quality/de/default/{}"
            },
            "ga": {
                "optimiser": fw.optimisers.GA,
                "heuristic": fw.heuristics.GA,
                "params": fw.hyper_parameters.GA(
                    population_size=10,
                    selection_strategy="rand",
                    xo_strategy="bin",
                    mutation_rate=fw.schedules.Exponential(
                        initial=0.2,
                        steps=300,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs_revised/wine_quality/ga/default/{}"
            },
            "bhh": {
                "optimiser": fw.optimisers.BHH,
                "heuristic": fw.heuristics.BHH,
            }
        }
    }
}


def get_bhh_defaults(
    variant: str,
    experiment: str,
    population_size: int = 10,
    burn_in: int = 0,
    replay: int = 10,
    reselection: int = 1,
    reanalysis: int = 1,
    normalise: bool = False,
    credit: str = "gbest",
    discounted_rewards: bool = True
):
    # Get Experiment defaults
    defaults = {}
    optimisers = params[experiment]["optimisers"]

    for key, optimiser in optimisers.items():
        if key != "bhh":
            # We do not filter here, since we need some other default params
            # for Adam for example that is not included in the balanced list
            # if any(key in string for string in INCLUDE):
            optimiser_params = optimiser["params"]
            defaults[key] = optimiser_params

    # Get Experiment defaults
    heuristics = []
    optimisers = params[experiment]["optimisers"]

    for key, optimiser in optimisers.items():
        if variant == 'all' and any(key in string for string in INCLUDE_ALL):
            Heuristic = optimiser["heuristic"]
            optimiser_params = optimiser["params"]
            heuristic = Heuristic(params=optimiser_params)
            heuristics.append(heuristic)
        elif variant == 'gd_only' and any(key in string for string in INCLUDE_GD_ONLY):
            Heuristic = optimiser["heuristic"]
            optimiser_params = optimiser["params"]
            heuristic = Heuristic(params=optimiser_params)
            heuristics.append(heuristic)

    bhh_credit = None

    if credit == "ibest":
        bhh_credit = fw.credits.IBest(discounted_rewards=discounted_rewards)
    elif credit == "pbest":
        bhh_credit = fw.credits.PBest(discounted_rewards=discounted_rewards)
    elif credit == "rbest":
        bhh_credit = fw.credits.RBest(discounted_rewards=discounted_rewards)
    elif credit == "gbest":
        bhh_credit = fw.credits.GBest(discounted_rewards=discounted_rewards)
    elif credit == "symmetric":
        bhh_credit = fw.credits.Symmetric(
            discounted_rewards=discounted_rewards)

    bhh_params = fw.hyper_parameters.BHH(
        population_size=population_size,
        burn_in=burn_in,
        replay=replay,
        reselection=reselection,
        reanalysis=reanalysis,
        normalise=normalise,
        credit=[bhh_credit],
        defaults=defaults,
        heuristics=heuristics,
    )

    return bhh_params
