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

import defaults

# Globals
DATASET = None
OPTIMISER = None
SEED = None
LOG_LEVEL = None
PARAMS = None
LOG = None

# Pragma
os.environ["TF_CPP_MIN_LOG_LEVEL"] = "3"
os.environ["CUDA_VISIBLE_DEVICES"] = ""


def parse_basic_arguments():
    global DATASET
    global OPTIMISER
    global SEED
    global LOG_LEVEL

    # Parser
    parser = argparse.ArgumentParser(
        description="Training Feedforward Neural Networks using Bayesian Hyper-Heuristics"
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
    parser.add_argument(
        "--optimiser",
        type=str,
        required=True,
        choices=[
            "sgd",
            "momentum",
            "nag",
            "adagrad",
            "rmsprop",
            "adadelta",
            "adam",
            "pso",
            "de",
            "ga",
            "bhh"
        ],
        help="The optimiser to use"
    )
    parser.add_argument("--seed", type=int, help="The seed to use")
    parser.add_argument("--log-level", type=int, help="The log level to use")

    # Arguments
    args = parser.parse_args()
    DATASET = args.dataset
    OPTIMISER = args.optimiser
    SEED = args.seed or None
    LOG_LEVEL = args.log_level or 2


def parse_bhh_arguments():
    global CREDIT
    global POPULATION_SIZE
    global RESELECTION
    global REANALYSIS
    global REPLAY
    global BURN_IN

    # Parser
    parser = argparse.ArgumentParser(
        description="Training Feedforward Neural Networks using Bayesian Hyper-Heuristics"
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
    parser.add_argument(
        "--optimiser",
        type=str,
        required=True,
        choices=[
            "sgd",
            "momentum",
            "nag",
            "adagrad",
            "rmsprop",
            "adadelta",
            "adam",
            "pso",
            "de",
            "ga",
            "bhh"
        ],
        help="The optimiser to use"
    )
    parser.add_argument("--seed", type=int, help="The seed to use")
    parser.add_argument("--log-level", type=int, help="The log level to use")

    # Arguments
    args = parser.parse_args()
    DATASET = args.dataset
    OPTIMISER = args.optimiser
    SEED = args.seed or None
    LOG_LEVEL = args.log_level or 2


def set_environment_variables():
    global LOG_LEVEL

    # Set the global log level
    os.environ["LOG_LEVEL"] = "{}".format(LOG_LEVEL)


def print_banner():
    global DATASET
    global OPTIMISER
    global SEED
    global LOG
    global LOG_LEVEL

    print("")
    print("====================================================================")
    print("Training Feedforward Neural Networks using Bayesian Hyper-Heuristics")
    print("====================================================================")
    print("Dataset: {}".format(DATASET))
    print("Optimiser: {}".format(OPTIMISER))
    print("Seed: {}".format(SEED))
    print("Log: {}".format(LOG))
    print("Log Level: {}".format(LOG_LEVEL))
    print("====================================================================")
    print("")


def basic_optimisers():
    global DATASET
    global OPTIMISER

    # Extract intances
    Experiment = defaults.defaults[DATASET]["experiment"]
    Optimiser = defaults.defaults[DATASET]["optimisers"][OPTIMISER]["optimiser"]
    PARAMS = defaults.defaults[DATASET]["optimisers"][OPTIMISER]["params"]
    LOG = defaults.defaults[DATASET]["optimisers"][OPTIMISER]["log"]

    experiment = Experiment(
        optimiser=Optimiser(
            params=PARAMS
        ),
        log_dir=LOG,
        seed=SEED
    )

    experiment.initialise()
    experiment()


def bhh_optimiser():
    global DATASET
    global OPTIMISER

    # Extract intances
    Experiment = defaults.defaults[DATASET]["experiment"]
    Optimiser = defaults.defaults[DATASET]["optimisers"][OPTIMISER]["optimiser"]
    PARAMS = defaults.defaults[DATASET]["optimisers"][OPTIMISER]["params"]
    LOG = defaults.defaults[DATASET]["optimisers"][OPTIMISER]["log"]

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
    parse_basic_arguments()
    set_environment_variables
    print_banner()

    if OPTIMISER != "bhh":
        basic_optimisers()


if __name__ == "__main__":
    main()
