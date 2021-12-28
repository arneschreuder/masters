# The MIT License (MIT)
# =====================

# Copyright 2021 Arné Schreuder

# Permission is hereby granted, free of charge, to any person
# obtaining a copy of this software and associated documentation
# files (the “Software”), to deal in the Software without
# restriction, including without limitation the rights to use,
# copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the
# Software is furnished to do so, subject to the following
# conditions:

# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
# OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
# HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
# WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
# OTHER DEALINGS IN THE SOFTWARE.


import argparse
import os

import framework as fw
import params

# Globals
VARIANT = None
DATASET = None
OPTIMISER = None
SEED = None
LOG_LEVEL = None
PARAMS = None
LOG = None
POPULATION_SIZE = None
BURN_IN = None
REPLAY = None
RESELECTION = None
REANALYSIS = None
NORMALISE = None
CREDIT = None
DISCOUNTED_REWARDS = None


def parse_bhh_arguments():
    global VARIANT
    global DATASET
    global OPTIMISER
    global SEED
    global LOG_LEVEL
    global PARAMS
    global LOG
    global POPULATION_SIZE
    global BURN_IN
    global REPLAY
    global RESELECTION
    global REANALYSIS
    global NORMALISE
    global CREDIT
    global DISCOUNTED_REWARDS

    # Parser
    parser = argparse.ArgumentParser(
        description="Training Feedforward Neural Networks using Bayesian Hyper-Heuristics"
    )

    # Basic Params
    parser.add_argument(
        "--variant",
        type=str,
        default="all",
        choices=[
            "all",
            "gd_only",
        ],
        help="The BHH variant to use"
    )
    parser.add_argument(
        "--dataset",
        type=str,
        required=True,
        choices=[
            "abalone",
            "adult",
            "air_quality",
            "bank",
            "bike",
            "car",
            "iris",
            "diabetic",
            "fish_toxicity",
            "forest_fires",
            "housing",
            "mushroom",
            "parkinsons",
            "student_performance",
            "wine_quality",
        ],
        help="The dataset to use"
    )
    parser.add_argument("--seed", type=int, help="The seed to use")
    parser.add_argument("--log-level", type=int, help="The log level to use")

    # BHH Params
    parser.add_argument(
        "--population-size",
        type=int,
        required=False,
        choices=[
            5,
            10,
            20,
            50,
            100
        ],
        default=5,
        help="The population size to use"
    )
    parser.add_argument(
        "--burn_in",
        type=int,
        required=False,
        choices=[
            0,
            10,
            20,
            50,
            100
        ],
        default=0,
        help="The burn-in to use"
    )
    parser.add_argument(
        "--replay",
        type=int,
        required=False,
        choices=[
            10,
            20,
            50,
            100,
            300
        ],
        default=10,
        help="The replay buffer size to use"
    )
    parser.add_argument(
        "--reselection",
        type=int,
        required=False,
        choices=[
            1,
            5,
            10,
            50,
            100
        ],
        default=1,
        help="The reselection interval to use"
    )
    parser.add_argument(
        "--reanalysis",
        type=int,
        required=False,
        choices=[
            1,
            5,
            10,
            50,
            100
        ],
        default=1,
        help="The reanalysis interval to use"
    )
    parser.add_argument(
        "--normalise",
        type=lambda x: (str(x).lower() == 'true'),
        required=False,
        default=False,
        help="The normalisation flag"
    )
    parser.add_argument(
        "--credit",
        type=str,
        required=False,
        choices=[
            "ibest",
            "pbest",
            "rbest",
            "gbest",
            "symmetric",
        ],
        default="gbest",
        help="The credit assignment strategy to use"
    )
    parser.add_argument(
        "--discounted-rewards",
        type=bool,
        required=False,
        default=True,
        help="The credit reward discount flag"
    )

    # Arguments
    args = parser.parse_args()
    VARIANT = args.variant
    DATASET = args.dataset
    OPTIMISER = 'bhh'
    SEED = args.seed or None
    POPULATION_SIZE = args.population_size
    BURN_IN = args.burn_in
    REPLAY = args.replay
    RESELECTION = args.reselection
    REANALYSIS = args.reanalysis
    NORMALISE = args.normalise
    CREDIT = args.credit
    DISCOUNTED_REWARDS = args.discounted_rewards
    LOG_LEVEL = int(os.getenv('LOG_LEVEL')) if os.getenv(
        'LOG_LEVEL') is not None else 0
    LOG = "logs/{}/bhh/ps:{}_bi:{}_rp:{}_rs:{}_ra:{}_nm:{}_ct:{}_dr:{}".format(
        DATASET,
        POPULATION_SIZE,
        BURN_IN,
        REPLAY,
        RESELECTION,
        REANALYSIS,
        NORMALISE,
        CREDIT,
        DISCOUNTED_REWARDS,
    )


def print_bhh_banner():
    global VARIANT
    global DATASET
    global OPTIMISER
    global SEED
    global LOG
    global LOG_LEVEL
    global POPULATION_SIZE
    global BURN_IN
    global REPLAY
    global RESELECTION
    global REANALYSIS
    global NORMALISE
    global CREDIT
    global DISCOUNTED_REWARDS

    print("")
    print("====================================================================")
    print("Training Feedforward Neural Networks using Bayesian Hyper-Heuristics")
    print("====================================================================")
    print("Variant: {}".format(VARIANT))
    print("Dataset: {}".format(DATASET))
    print("Optimiser: {}".format(OPTIMISER))
    print("Seed: {}".format(SEED))
    print("Log: {}".format(LOG))
    print("Log Level: {}".format(LOG_LEVEL))
    print("Population Size: {}".format(POPULATION_SIZE))
    print("Burn In: {}".format(BURN_IN))
    print("Replay: {}".format(REPLAY))
    print("Reselection: {}".format(RESELECTION))
    print("Reanalysis: {}".format(REANALYSIS))
    print("Normalise: {}".format(NORMALISE))
    print("Credit: {}".format(CREDIT))
    print("Discounted Rewards: {}".format(DISCOUNTED_REWARDS))
    print("====================================================================")
    print("")


def bhh_optimiser():
    global VARIANT
    global DATASET
    global POPULATION_SIZE
    global POPULATION_SIZE
    global BURN_IN
    global REPLAY
    global RESELECTION
    global REANALYSIS
    global NORMALISE
    global CREDIT
    global DISCOUNTED_REWARDS
    global SEED

    # Extract intances
    Experiment = params.params[DATASET]["experiment"]
    Optimiser = fw.optimisers.BHH

    PARAMS = params.get_bhh_defaults(
        variant=VARIANT,
        experiment=DATASET,
        population_size=POPULATION_SIZE,
        burn_in=BURN_IN,
        replay=REPLAY,
        reselection=RESELECTION,
        reanalysis=REANALYSIS,
        normalise=NORMALISE,
        credit=CREDIT,
        discounted_rewards=DISCOUNTED_REWARDS
    )

    LOG = "logs_revised/{}/{}/ps:{}_bi:{}_rp:{}_rs:{}_ra:{}_nm:{}_ct:{}_dr:{}/{}".format(
        DATASET,
        "bhh" if VARIANT == "all" else "bhh_gd_only",
        POPULATION_SIZE,
        BURN_IN,
        REPLAY,
        RESELECTION,
        REANALYSIS,
        NORMALISE,
        CREDIT,
        DISCOUNTED_REWARDS,
        SEED
    )

    experiment = Experiment(
        optimiser=Optimiser(
            params=PARAMS
        ),
        log_dir=LOG,
        seed=SEED
    )

    experiment.initialise()
    experiment()


def main():
    parse_bhh_arguments()
    print_bhh_banner()
    bhh_optimiser()


if __name__ == "__main__":
    main()
