import framework as fw

defaults = {
    "abalone": {
        "experiment": fw.experiments.Abalone,
        "optimisers": {
            "sgd": {
                "optimiser": fw.optimisers.SGD,
                "params": fw.hyper_parameters.SGD(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=28000,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs/abalone/sgd/default"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=28000,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/abalone/momentum/default"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=28000,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/abalone/nag/default"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=28000,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs/abalone/adagrad/default"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=28000,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/abalone/rmsprop/default"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=28000,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/abalone/adadelta/default"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=28000,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs/abalone/adam/default"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=28000,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs/abalone/pso/default"
            },
            "de": {
                "optimiser": fw.optimisers.DE,
                "params": fw.hyper_parameters.DE(
                    population_size=10,
                    selection_strategy="best",
                    xo_strategy="exp",
                    recombination_probability=fw.schedules.Exponential(
                        initial=0.9,
                        steps=28000,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=28000,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs/abalone/de/default"
            },
            "ga": {
                "optimiser": fw.optimisers.GA,
                "params": fw.hyper_parameters.GA(
                    population_size=10,
                    selection_strategy="rand",
                    xo_strategy="bin",
                    mutation_rate=fw.schedules.Exponential(
                        initial=0.2,
                        steps=28000,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs/abalone/ga/default"
            }
        }
    },
    "adult": {
        "experiment": fw.experiments.Adult,
        "optimisers": {
            "sgd": {
                "optimiser": fw.optimisers.SGD,
                "params": fw.hyper_parameters.SGD(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=320000,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs/adult/sgd/default"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=320000,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/adult/momentum/default"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=320000,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/adult/nag/default"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=320000,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs/adult/adagrad/default"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=320000,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/adult/rmsprop/default"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=320000,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/adult/adadelta/default"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=320000,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs/adult/adam/default"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=320000,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs/adult/pso/default"
            },
            "de": {
                "optimiser": fw.optimisers.DE,
                "params": fw.hyper_parameters.DE(
                    population_size=10,
                    selection_strategy="best",
                    xo_strategy="exp",
                    recombination_probability=fw.schedules.Exponential(
                        initial=0.9,
                        steps=320000,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=320000,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs/adult/de/default"
            },
            "ga": {
                "optimiser": fw.optimisers.GA,
                "params": fw.hyper_parameters.GA(
                    population_size=10,
                    selection_strategy="rand",
                    xo_strategy="bin",
                    mutation_rate=fw.schedules.Exponential(
                        initial=0.2,
                        steps=320000,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs/adult/ga/default"
            }
        }
    },
    "air_quality": {
        "experiment": fw.experiments.AirQuality,
        "optimisers": {
            "sgd": {
                "optimiser": fw.optimisers.SGD,
                "params": fw.hyper_parameters.SGD(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=67000,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs/air_quality/sgd/default"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=67000,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/air_quality/momentum/default"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=67000,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/air_quality/nag/default"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=67000,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs/air_quality/adagrad/default"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=67000,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/air_quality/rmsprop/default"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=67000,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/air_quality/adadelta/default"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=67000,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs/air_quality/adam/default"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=67000,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs/air_quality/pso/default"
            },
            "de": {
                "optimiser": fw.optimisers.DE,
                "params": fw.hyper_parameters.DE(
                    population_size=10,
                    selection_strategy="best",
                    xo_strategy="exp",
                    recombination_probability=fw.schedules.Exponential(
                        initial=0.9,
                        steps=67000,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=67000,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs/air_quality/de/default"
            },
            "ga": {
                "optimiser": fw.optimisers.GA,
                "params": fw.hyper_parameters.GA(
                    population_size=10,
                    selection_strategy="rand",
                    xo_strategy="bin",
                    mutation_rate=fw.schedules.Exponential(
                        initial=0.2,
                        steps=67000,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs/air_quality/ga/default"
            }
        }
    },
    "bank": {
        "experiment": fw.experiments.Bank,
        "optimisers": {
            "sgd": {
                "optimiser": fw.optimisers.SGD,
                "params": fw.hyper_parameters.SGD(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=302000,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs/bank/sgd/default"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=302000,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/bank/momentum/default"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=302000,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/bank/nag/default"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=302000,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs/bank/adagrad/default"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=302000,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/bank/rmsprop/default"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=302000,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/bank/adadelta/default"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=302000,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs/bank/adam/default"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=302000,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs/bank/pso/default"
            },
            "de": {
                "optimiser": fw.optimisers.DE,
                "params": fw.hyper_parameters.DE(
                    population_size=10,
                    selection_strategy="best",
                    xo_strategy="exp",
                    recombination_probability=fw.schedules.Exponential(
                        initial=0.9,
                        steps=302000,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=302000,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs/bank/de/default"
            },
            "ga": {
                "optimiser": fw.optimisers.GA,
                "params": fw.hyper_parameters.GA(
                    population_size=10,
                    selection_strategy="rand",
                    xo_strategy="bin",
                    mutation_rate=fw.schedules.Exponential(
                        initial=0.2,
                        steps=302000,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs/bank/ga/default"
            }
        }
    },
    "bike": {
        "experiment": fw.experiments.Bike,
        "optimisers": {
            "sgd": {
                "optimiser": fw.optimisers.SGD,
                "params": fw.hyper_parameters.SGD(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=120000,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs/bike/sgd/default"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=120000,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/bike/momentum/default"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=120000,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/bike/nag/default"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=120000,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs/bike/adagrad/default"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=120000,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/bike/rmsprop/default"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=120000,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/bike/adadelta/default"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=120000,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs/bike/adam/default"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=120000,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs/bike/pso/default"
            },
            "de": {
                "optimiser": fw.optimisers.DE,
                "params": fw.hyper_parameters.DE(
                    population_size=10,
                    selection_strategy="best",
                    xo_strategy="exp",
                    recombination_probability=fw.schedules.Exponential(
                        initial=0.9,
                        steps=120000,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=120000,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs/bike/de/default"
            },
            "ga": {
                "optimiser": fw.optimisers.GA,
                "params": fw.hyper_parameters.GA(
                    population_size=10,
                    selection_strategy="rand",
                    xo_strategy="bin",
                    mutation_rate=fw.schedules.Exponential(
                        initial=0.2,
                        steps=120000,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs/bike/ga/default"
            }
        }
    },
    "car": {
        "experiment": fw.experiments.Car,
        "optimisers": {
            "sgd": {
                "optimiser": fw.optimisers.SGD,
                "params": fw.hyper_parameters.SGD(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=12000,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs/car/sgd/default"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=12000,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/car/momentum/default"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=12000,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/car/nag/default"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=12000,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs/car/adagrad/default"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=12000,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/car/rmsprop/default"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=12000,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/car/adadelta/default"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=12000,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs/car/adam/default"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=12000,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs/car/pso/default"
            },
            "de": {
                "optimiser": fw.optimisers.DE,
                "params": fw.hyper_parameters.DE(
                    population_size=10,
                    selection_strategy="best",
                    xo_strategy="exp",
                    recombination_probability=fw.schedules.Exponential(
                        initial=0.9,
                        steps=12000,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=12000,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs/car/de/default"
            },
            "ga": {
                "optimiser": fw.optimisers.GA,
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
                "log": "logs/car/ga/default"
            }
        }
    },
    "diabetic": {
        "experiment": fw.experiments.Diabetic,
        "optimisers": {
            "sgd": {
                "optimiser": fw.optimisers.SGD,
                "params": fw.hyper_parameters.SGD(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=670000,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs/diabetic/sgd/default"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=670000,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/diabetic/momentum/default"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=670000,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/diabetic/nag/default"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=670000,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs/diabetic/adagrad/default"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=670000,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/diabetic/rmsprop/default"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=670000,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/diabetic/adadelta/default"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=670000,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs/diabetic/adam/default"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=670000,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs/diabetic/pso/default"
            },
            "de": {
                "optimiser": fw.optimisers.DE,
                "params": fw.hyper_parameters.DE(
                    population_size=10,
                    selection_strategy="best",
                    xo_strategy="exp",
                    recombination_probability=fw.schedules.Exponential(
                        initial=0.9,
                        steps=670000,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=670000,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs/diabetic/de/default"
            },
            "ga": {
                "optimiser": fw.optimisers.GA,
                "params": fw.hyper_parameters.GA(
                    population_size=10,
                    selection_strategy="rand",
                    xo_strategy="bin",
                    mutation_rate=fw.schedules.Exponential(
                        initial=0.2,
                        steps=670000,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs/diabetic/ga/default"
            }
        }
    },
    "fish_toxicity": {
        "experiment": fw.experiments.FishToxicity,
        "optimisers": {
            "sgd": {
                "optimiser": fw.optimisers.SGD,
                "params": fw.hyper_parameters.SGD(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=6100,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs/fish_toxicity/sgd/default"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=6100,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/fish_toxicity/momentum/default"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=6100,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/fish_toxicity/nag/default"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=6100,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs/fish_toxicity/adagrad/default"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=6100,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/fish_toxicity/rmsprop/default"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=6100,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/fish_toxicity/adadelta/default"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=6100,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs/fish_toxicity/adam/default"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=6100,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs/fish_toxicity/pso/default"
            },
            "de": {
                "optimiser": fw.optimisers.DE,
                "params": fw.hyper_parameters.DE(
                    population_size=10,
                    selection_strategy="best",
                    xo_strategy="exp",
                    recombination_probability=fw.schedules.Exponential(
                        initial=0.9,
                        steps=6100,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=6100,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs/fish_toxicity/de/default"
            },
            "ga": {
                "optimiser": fw.optimisers.GA,
                "params": fw.hyper_parameters.GA(
                    population_size=10,
                    selection_strategy="rand",
                    xo_strategy="bin",
                    mutation_rate=fw.schedules.Exponential(
                        initial=0.2,
                        steps=6100,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs/fish_toxicity/ga/default"
            }
        }
    },
    "forest_fires": {
        "experiment": fw.experiments.ForestFires,
        "optimisers": {
            "sgd": {
                "optimiser": fw.optimisers.SGD,
                "params": fw.hyper_parameters.SGD(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=3500,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs/forest_fires/sgd/default"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=3500,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/forest_fires/momentum/default"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=3500,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/forest_fires/nag/default"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=3500,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs/forest_fires/adagrad/default"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=3500,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/forest_fires/rmsprop/default"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=3500,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/forest_fires/adadelta/default"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=3500,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs/forest_fires/adam/default"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=3500,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs/forest_fires/pso/default"
            },
            "de": {
                "optimiser": fw.optimisers.DE,
                "params": fw.hyper_parameters.DE(
                    population_size=10,
                    selection_strategy="best",
                    xo_strategy="exp",
                    recombination_probability=fw.schedules.Exponential(
                        initial=0.9,
                        steps=3500,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=3500,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs/forest_fires/de/default"
            },
            "ga": {
                "optimiser": fw.optimisers.GA,
                "params": fw.hyper_parameters.GA(
                    population_size=10,
                    selection_strategy="rand",
                    xo_strategy="bin",
                    mutation_rate=fw.schedules.Exponential(
                        initial=0.2,
                        steps=3500,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs/forest_fires/ga/default"
            }
        }
    },
    "housing": {
        "experiment": fw.experiments.Housing,
        "optimisers": {
            "sgd": {
                "optimiser": fw.optimisers.SGD,
                "params": fw.hyper_parameters.SGD(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=3400,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs/housing/sgd/default"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=3400,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/housing/momentum/default"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=3400,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/housing/nag/default"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=3400,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs/housing/adagrad/default"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=3400,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/housing/rmsprop/default"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=3400,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/housing/adadelta/default"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=3400,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs/housing/adam/default"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=3400,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs/housing/pso/default"
            },
            "de": {
                "optimiser": fw.optimisers.DE,
                "params": fw.hyper_parameters.DE(
                    population_size=10,
                    selection_strategy="best",
                    xo_strategy="exp",
                    recombination_probability=fw.schedules.Exponential(
                        initial=0.9,
                        steps=3400,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=3400,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs/housing/de/default"
            },
            "ga": {
                "optimiser": fw.optimisers.GA,
                "params": fw.hyper_parameters.GA(
                    population_size=10,
                    selection_strategy="rand",
                    xo_strategy="bin",
                    mutation_rate=fw.schedules.Exponential(
                        initial=0.2,
                        steps=3400,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs/housing/ga/default"
            }
        }
    },
    "iris": {
        "experiment": fw.experiments.Iris,
        "optimisers": {
            "sgd": {
                "optimiser": fw.optimisers.SGD,
                "params": fw.hyper_parameters.SGD(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=1000,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs/iris/sgd/default"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=1000,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/iris/momentum/default"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=1000,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/iris/nag/default"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=1000,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs/iris/adagrad/default"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=1000,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/iris/rmsprop/default"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=1000,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/iris/adadelta/default"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=1000,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs/iris/adam/default"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=1000,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs/iris/pso/default"
            },
            "de": {
                "optimiser": fw.optimisers.DE,
                "params": fw.hyper_parameters.DE(
                    population_size=10,
                    selection_strategy="best",
                    xo_strategy="exp",
                    recombination_probability=fw.schedules.Exponential(
                        initial=0.9,
                        steps=1000,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=1000,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs/iris/de/default"
            },
            "ga": {
                "optimiser": fw.optimisers.GA,
                "params": fw.hyper_parameters.GA(
                    population_size=10,
                    selection_strategy="rand",
                    xo_strategy="bin",
                    mutation_rate=fw.schedules.Exponential(
                        initial=0.2,
                        steps=1000,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs/iris/ga/default"
            }
        }
    },
    "mushroom": {
        "experiment": fw.experiments.Mushroom,
        "optimisers": {
            "sgd": {
                "optimiser": fw.optimisers.SGD,
                "params": fw.hyper_parameters.SGD(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=55000,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs/mushroom/sgd/default"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=55000,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/mushroom/momentum/default"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=55000,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/mushroom/nag/default"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=55000,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs/mushroom/adagrad/default"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=55000,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/mushroom/rmsprop/default"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=55000,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/mushroom/adadelta/default"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=55000,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs/mushroom/adam/default"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=55000,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs/mushroom/pso/default"
            },
            "de": {
                "optimiser": fw.optimisers.DE,
                "params": fw.hyper_parameters.DE(
                    population_size=10,
                    selection_strategy="best",
                    xo_strategy="exp",
                    recombination_probability=fw.schedules.Exponential(
                        initial=0.9,
                        steps=55000,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=55000,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs/mushroom/de/default"
            },
            "ga": {
                "optimiser": fw.optimisers.GA,
                "params": fw.hyper_parameters.GA(
                    population_size=10,
                    selection_strategy="rand",
                    xo_strategy="bin",
                    mutation_rate=fw.schedules.Exponential(
                        initial=0.2,
                        steps=55000,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs/mushroom/ga/default"
            }
        }
    },
    "parkinsons": {
        "experiment": fw.experiments.Parkinsons,
        "optimisers": {
            "sgd": {
                "optimiser": fw.optimisers.SGD,
                "params": fw.hyper_parameters.SGD(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=40000,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs/parkinsons/sgd/default"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=40000,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/parkinsons/momentum/default"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=40000,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/parkinsons/nag/default"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=40000,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs/parkinsons/adagrad/default"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=40000,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/parkinsons/rmsprop/default"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=40000,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/parkinsons/adadelta/default"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=40000,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs/parkinsons/adam/default"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=40000,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs/parkinsons/pso/default"
            },
            "de": {
                "optimiser": fw.optimisers.DE,
                "params": fw.hyper_parameters.DE(
                    population_size=10,
                    selection_strategy="best",
                    xo_strategy="exp",
                    recombination_probability=fw.schedules.Exponential(
                        initial=0.9,
                        steps=40000,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=40000,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs/parkinsons/de/default"
            },
            "ga": {
                "optimiser": fw.optimisers.GA,
                "params": fw.hyper_parameters.GA(
                    population_size=10,
                    selection_strategy="rand",
                    xo_strategy="bin",
                    mutation_rate=fw.schedules.Exponential(
                        initial=0.2,
                        steps=40000,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs/parkinsons/ga/default"
            }
        }
    },
    "student_performance": {
        "experiment": fw.experiments.StudentPerformance,
        "optimisers": {
            "sgd": {
                "optimiser": fw.optimisers.SGD,
                "params": fw.hyper_parameters.SGD(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=4400,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs/student_performance/sgd/default"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=4400,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/student_performance/momentum/default"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=4400,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/student_performance/nag/default"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=4400,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs/student_performance/adagrad/default"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=4400,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/student_performance/rmsprop/default"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=4400,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/student_performance/adadelta/default"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=4400,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs/student_performance/adam/default"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=4400,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs/student_performance/pso/default"
            },
            "de": {
                "optimiser": fw.optimisers.DE,
                "params": fw.hyper_parameters.DE(
                    population_size=10,
                    selection_strategy="best",
                    xo_strategy="exp",
                    recombination_probability=fw.schedules.Exponential(
                        initial=0.9,
                        steps=4400,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=4400,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs/student_performance/de/default"
            },
            "ga": {
                "optimiser": fw.optimisers.GA,
                "params": fw.hyper_parameters.GA(
                    population_size=10,
                    selection_strategy="rand",
                    xo_strategy="bin",
                    mutation_rate=fw.schedules.Exponential(
                        initial=0.2,
                        steps=4400,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs/student_performance/ga/default"
            }
        }
    },
    "wine_quality": {
        "experiment": fw.experiments.WineQuality,
        "optimisers": {
            "sgd": {
                "optimiser": fw.optimisers.SGD,
                "params": fw.hyper_parameters.SGD(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=33000,
                        rate=0.01,
                        staircase=False
                    )
                ),
                "log": "logs/wine_quality/sgd/default"
            },
            "momentum": {
                "optimiser": fw.optimisers.Momentum,
                "params": fw.hyper_parameters.Momentum(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=33000,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/wine_quality/momentum/default"
            },
            "nag": {
                "optimiser": fw.optimisers.NAG,
                "params": fw.hyper_parameters.NAG(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=33000,
                        rate=0.01,
                        staircase=False
                    ),
                    momentum=0.9
                ),
                "log": "logs/wine_quality/nag/default"
            },
            "adagrad": {
                "optimiser": fw.optimisers.Adagrad,
                "params": fw.hyper_parameters.Adagrad(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=33000,
                        rate=0.01,
                        staircase=False
                    ),
                    epsilon=1e-07
                ),
                "log": "logs/wine_quality/adagrad/default"
            },
            "rmsprop": {
                "optimiser": fw.optimisers.RMSProp,
                "params": fw.hyper_parameters.RMSProp(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=33000,
                        rate=0.01,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/wine_quality/rmsprop/default"
            },
            "adadelta": {
                "optimiser": fw.optimisers.Adadelta,
                "params": fw.hyper_parameters.Adadelta(
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=33000,
                        rate=0.95,
                        staircase=False
                    ),
                    rho=0.95,
                    epsilon=1e-07
                ),
                "log": "logs/wine_quality/adadelta/default"
            },
            "adam": {
                "optimiser": fw.optimisers.Adam,
                "params": fw.hyper_parameters.Adam(
                    learning_rate=fw.schedules.Exponential(
                        initial=0.1,
                        steps=33000,
                        rate=0.01,
                        staircase=False
                    ),
                    beta1=0.9,
                    beta2=0.999,
                    epsilon=1e-07
                ),
                "log": "logs/wine_quality/adam/default"
            },
            "pso": {
                "optimiser": fw.optimisers.PSO,
                "params": fw.hyper_parameters.PSO(
                    population_size=10,
                    learning_rate=fw.schedules.Exponential(
                        initial=1.0,
                        steps=33000,
                        rate=0.9,
                        staircase=False
                    ),
                    inertia_weight=0.729844,
                    social_control=1.496180,
                    cognitive_control=1.496180,
                    velocity_clip_min=-1.0,
                    velocity_clip_max=1.0
                ),
                "log": "logs/wine_quality/pso/default"
            },
            "de": {
                "optimiser": fw.optimisers.DE,
                "params": fw.hyper_parameters.DE(
                    population_size=10,
                    selection_strategy="best",
                    xo_strategy="exp",
                    recombination_probability=fw.schedules.Exponential(
                        initial=0.9,
                        steps=33000,
                        rate=0.1,
                        staircase=False
                    ),
                    beta=fw.schedules.Exponential(
                        initial=2.0,
                        steps=33000,
                        rate=0.1,
                        staircase=False
                    ),
                ),
                "log": "logs/wine_quality/de/default"
            },
            "ga": {
                "optimiser": fw.optimisers.GA,
                "params": fw.hyper_parameters.GA(
                    population_size=10,
                    selection_strategy="rand",
                    xo_strategy="bin",
                    mutation_rate=fw.schedules.Exponential(
                        initial=0.2,
                        steps=33000,
                        rate=0.05,
                        staircase=False
                    ),
                ),
                "log": "logs/wine_quality/ga/default"
            }
        }
    }
}
