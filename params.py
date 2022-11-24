import framework as fw

HEURISTIC_POOL_ALL = [
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

HEURISTIC_POOL_GD = [
    "sgd",
    "momentum",
    "nag",
    "adagrad",
    "rmsprop",
    "adadelta",
    "adam"
]

HEURISTIC_POOL_MH = [
    "pso",
    "ga",
    "de"
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
                        steps=500,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs/abalone/sgd/default/{}"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "heuristic": fw.heuristics.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=500,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/abalone/momentum/default/{}"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "heuristic": fw.heuristics.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=500,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/abalone/nag/default/{}"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "heuristic": fw.heuristics.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=500,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs/abalone/adagrad/default/{}"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "heuristic": fw.heuristics.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=500,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/abalone/rmsprop/default/{}"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "heuristic": fw.heuristics.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=500,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/abalone/adadelta/default/{}"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "heuristic": fw.heuristics.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=500,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs/abalone/adam/default/{}"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "heuristic": fw.heuristics.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=500,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs/abalone/pso/default/{}"
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
                        steps=500,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=500,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs/abalone/de/default/{}"
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
                        steps=500,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs/abalone/ga/default/{}"
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
                        steps=1100,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs/air_quality/sgd/default/{}"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "heuristic": fw.heuristics.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=1100,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/air_quality/momentum/default/{}"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "heuristic": fw.heuristics.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=1100,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/air_quality/nag/default/{}"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "heuristic": fw.heuristics.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=1100,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs/air_quality/adagrad/default/{}"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "heuristic": fw.heuristics.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=1100,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/air_quality/rmsprop/default/{}"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "heuristic": fw.heuristics.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=1100,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/air_quality/adadelta/default/{}"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "heuristic": fw.heuristics.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=1100,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs/air_quality/adam/default/{}"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "heuristic": fw.heuristics.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=1100,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs/air_quality/pso/default/{}"
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
                        steps=1100,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=1100,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs/air_quality/de/default/{}"
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
                        steps=1100,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs/air_quality/ga/default/{}"
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
                        steps=2700,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs/bank/sgd/default/{}"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "heuristic": fw.heuristics.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=2700,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/bank/momentum/default/{}"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "heuristic": fw.heuristics.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=2700,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/bank/nag/default/{}"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "heuristic": fw.heuristics.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=2700,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs/bank/adagrad/default/{}"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "heuristic": fw.heuristics.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=2700,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/bank/rmsprop/default/{}"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "heuristic": fw.heuristics.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=2700,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/bank/adadelta/default/{}"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "heuristic": fw.heuristics.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=2700,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs/bank/adam/default/{}"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "heuristic": fw.heuristics.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=2700,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs/bank/pso/default/{}"
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
                        steps=2700,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=2700,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs/bank/de/default/{}"
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
                        steps=2700,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs/bank/ga/default/{}"
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
                        steps=2000,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs/bike/sgd/default/{}"
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
                "log": "logs/bike/momentum/default/{}"
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
                "log": "logs/bike/nag/default/{}"
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
                "log": "logs/bike/adagrad/default/{}"
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
                "log": "logs/bike/rmsprop/default/{}"
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
                "log": "logs/bike/adadelta/default/{}"
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
                "log": "logs/bike/adam/default/{}"
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
                "log": "logs/bike/pso/default/{}"
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
                "log": "logs/bike/de/default/{}"
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
                "log": "logs/bike/ga/default/{}"
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
                        steps=400,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs/car/sgd/default/{}"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "heuristic": fw.heuristics.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=400,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/car/momentum/default/{}"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "heuristic": fw.heuristics.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=400,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/car/nag/default/{}"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "heuristic": fw.heuristics.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=400,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs/car/adagrad/default/{}"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "heuristic": fw.heuristics.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=400,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/car/rmsprop/default/{}"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "heuristic": fw.heuristics.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=400,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/car/adadelta/default/{}"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "heuristic": fw.heuristics.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=400,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs/car/adam/default/{}"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "heuristic": fw.heuristics.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=400,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs/car/pso/default/{}"
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
                        steps=400,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=400,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs/car/de/default/{}"
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
                        steps=400,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs/car/ga/default/{}"
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
                        steps=3000,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs/diabetic/sgd/default/{}"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "heuristic": fw.heuristics.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=3000,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/diabetic/momentum/default/{}"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "heuristic": fw.heuristics.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=3000,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/diabetic/nag/default/{}"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "heuristic": fw.heuristics.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=3000,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs/diabetic/adagrad/default/{}"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "heuristic": fw.heuristics.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=3000,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/diabetic/rmsprop/default/{}"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "heuristic": fw.heuristics.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=3000,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/diabetic/adadelta/default/{}"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "heuristic": fw.heuristics.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=3000,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs/diabetic/adam/default/{}"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "heuristic": fw.heuristics.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=3000,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs/diabetic/pso/default/{}"
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
                        steps=3000,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=3000,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs/diabetic/de/default/{}"
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
                        steps=3000,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs/diabetic/ga/default/{}"
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
                        steps=425,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs/fish_toxicity/sgd/default/{}"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "heuristic": fw.heuristics.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=425,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/fish_toxicity/momentum/default/{}"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "heuristic": fw.heuristics.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=425,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/fish_toxicity/nag/default/{}"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "heuristic": fw.heuristics.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=425,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs/fish_toxicity/adagrad/default/{}"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "heuristic": fw.heuristics.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=425,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/fish_toxicity/rmsprop/default/{}"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "heuristic": fw.heuristics.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=425,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/fish_toxicity/adadelta/default/{}"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "heuristic": fw.heuristics.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=425,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs/fish_toxicity/adam/default/{}"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "heuristic": fw.heuristics.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=425,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs/fish_toxicity/pso/default/{}"
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
                        steps=425,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=425,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs/fish_toxicity/de/default/{}"
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
                        steps=425,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs/fish_toxicity/ga/default/{}"
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
                        steps=500,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs/forest_fires/sgd/default/{}"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "heuristic": fw.heuristics.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=500,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/forest_fires/momentum/default/{}"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "heuristic": fw.heuristics.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=500,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/forest_fires/nag/default/{}"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "heuristic": fw.heuristics.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=500,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs/forest_fires/adagrad/default/{}"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "heuristic": fw.heuristics.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=500,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/forest_fires/rmsprop/default/{}"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "heuristic": fw.heuristics.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=500,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/forest_fires/adadelta/default/{}"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "heuristic": fw.heuristics.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=500,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs/forest_fires/adam/default/{}"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "heuristic": fw.heuristics.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=500,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs/forest_fires/pso/default/{}"
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
                        steps=500,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=500,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs/forest_fires/de/default/{}"
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
                        steps=500,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs/forest_fires/ga/default/{}"
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
                        steps=480,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs/housing/sgd/default/{}"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "heuristic": fw.heuristics.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=480,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/housing/momentum/default/{}"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "heuristic": fw.heuristics.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=480,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/housing/nag/default/{}"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "heuristic": fw.heuristics.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=480,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs/housing/adagrad/default/{}"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "heuristic": fw.heuristics.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=480,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/housing/rmsprop/default/{}"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "heuristic": fw.heuristics.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=480,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/housing/adadelta/default/{}"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "heuristic": fw.heuristics.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=480,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs/housing/adam/default/{}"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "heuristic": fw.heuristics.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=480,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs/housing/pso/default/{}"
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
                        steps=480,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=480,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs/housing/de/default/{}"
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
                        steps=480,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs/housing/ga/default/{}"
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
                        steps=280,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs/iris/sgd/default/{}"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "heuristic": fw.heuristics.Momentum,
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
                "log": "logs/iris/momentum/default/{}"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "heuristic": fw.heuristics.NAG,
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
                "log": "logs/iris/nag/default/{}"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "heuristic": fw.heuristics.Adagrad,
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
                "log": "logs/iris/adagrad/default/{}"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "heuristic": fw.heuristics.RMSProp,
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
                "log": "logs/iris/rmsprop/default/{}"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "heuristic": fw.heuristics.Adadelta,
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
                "log": "logs/iris/adadelta/default/{}"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "heuristic": fw.heuristics.Adam,
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
                "log": "logs/iris/adam/default/{}"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "heuristic": fw.heuristics.PSO,
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
                "log": "logs/iris/pso/default/{}"
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
                "log": "logs/iris/de/default/{}"
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
                        steps=280,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs/iris/ga/default/{}"
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
                        steps=480,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs/mushroom/sgd/default/{}"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "heuristic": fw.heuristics.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=480,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/mushroom/momentum/default/{}"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "heuristic": fw.heuristics.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=480,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/mushroom/nag/default/{}"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "heuristic": fw.heuristics.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=480,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs/mushroom/adagrad/default/{}"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "heuristic": fw.heuristics.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=480,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/mushroom/rmsprop/default/{}"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "heuristic": fw.heuristics.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=480,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/mushroom/adadelta/default/{}"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "heuristic": fw.heuristics.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=480,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs/mushroom/adam/default/{}"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "heuristic": fw.heuristics.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=480,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs/mushroom/pso/default/{}"
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
                        steps=480,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=480,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs/mushroom/de/default/{}"
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
                        steps=480,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs/mushroom/ga/default/{}"
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
                        steps=690,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs/parkinsons/sgd/default/{}"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "heuristic": fw.heuristics.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=690,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/parkinsons/momentum/default/{}"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "heuristic": fw.heuristics.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=690,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/parkinsons/nag/default/{}"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "heuristic": fw.heuristics.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=690,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs/parkinsons/adagrad/default/{}"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "heuristic": fw.heuristics.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=690,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/parkinsons/rmsprop/default/{}"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "heuristic": fw.heuristics.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=690,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/parkinsons/adadelta/default/{}"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "heuristic": fw.heuristics.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=690,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs/parkinsons/adam/default/{}"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "heuristic": fw.heuristics.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=690,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs/parkinsons/pso/default/{}"
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
                        steps=690,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=690,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs/parkinsons/de/default/{}"
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
                        steps=690,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs/parkinsons/ga/default/{}"
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
                        steps=610,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs/student_performance/sgd/default/{}"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "heuristic": fw.heuristics.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=610,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/student_performance/momentum/default/{}"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "heuristic": fw.heuristics.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=610,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/student_performance/nag/default/{}"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "heuristic": fw.heuristics.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=610,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs/student_performance/adagrad/default/{}"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "heuristic": fw.heuristics.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=610,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/student_performance/rmsprop/default/{}"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "heuristic": fw.heuristics.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=610,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/student_performance/adadelta/default/{}"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "heuristic": fw.heuristics.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=610,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs/student_performance/adam/default/{}"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "heuristic": fw.heuristics.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=610,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs/student_performance/pso/default/{}"
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
                        steps=610,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=610,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs/student_performance/de/default/{}"
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
                        steps=610,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs/student_performance/ga/default/{}"
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
                        steps=590,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs/wine_quality/sgd/default/{}"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "heuristic": fw.heuristics.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=590,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/wine_quality/momentum/default/{}"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "heuristic": fw.heuristics.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=590,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/wine_quality/nag/default/{}"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "heuristic": fw.heuristics.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=590,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs/wine_quality/adagrad/default/{}"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "heuristic": fw.heuristics.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=590,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/wine_quality/rmsprop/default/{}"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "heuristic": fw.heuristics.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=590,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/wine_quality/adadelta/default/{}"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "heuristic": fw.heuristics.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=590,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs/wine_quality/adam/default/{}"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "heuristic": fw.heuristics.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=590,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs/wine_quality/pso/default/{}"
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
                        steps=590,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=590,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs/wine_quality/de/default/{}"
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
                        steps=590,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs/wine_quality/ga/default/{}"
            },
            "bhh": {
                "optimiser": fw.optimisers.BHH,
                "heuristic": fw.heuristics.BHH,
            }
        }
    }
}


def get_bhh_defaults(
    heuristic_pool: str,
    experiment: str,
    population_size: int = 5,
    burn_in: int = 0,
    replay: int = 10,
    reselection: int = 10,
    reanalysis: int = 10,
    normalise: bool = False,
    credit: str = "ibest",
    discounted_rewards: bool = False
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
        if heuristic_pool == 'all' and any(key in string for string in HEURISTIC_POOL_ALL):
            Heuristic = optimiser["heuristic"]
            optimiser_params = optimiser["params"]
            heuristic = Heuristic(params=optimiser_params)
            heuristics.append(heuristic)
        elif heuristic_pool == 'gd' and any(key in string for string in HEURISTIC_POOL_GD):
            Heuristic = optimiser["heuristic"]
            optimiser_params = optimiser["params"]
            heuristic = Heuristic(params=optimiser_params)
            heuristics.append(heuristic)
        elif heuristic_pool == 'mh' and any(key in string for string in HEURISTIC_POOL_MH):
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
