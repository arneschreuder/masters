#!/usr/bin/env bash

# declare -a DATASETS=("abalone" "adult" "air_quality" "bank" "bike" "car" "diabetic" "fish_toxicity" "forest_fires" "housing" "iris" "mushroom" "parkinsons" "student_performance" "wine_quality")
declare -a DATASETS=("wine_quality")
# declare -a OPTIMISERS=("adadelta" "adagrad" "adam" "de" "ga" "momentum" "nag" "pso" "rmsprop" "sgd")
declare -a OPTIMISERS=("sgd" "momentum" "nag" "adagrad" "rmpsprop" "adadelta" "adam" "pso" "de" "ga")
# declare -a OPTIMISERS=("ga")
RUNS=1
LOG_LEVEL=2

for DATASET in ${DATASETS[@]}; do
	for OPTIMISER in ${OPTIMISERS[@]}; do
		for ((RUN = 1; RUN <= $RUNS; RUN++)); do
			echo "Run: $RUN, Dataset: $DATASET, Optimiser: $OPTIMISER"
			python main.py --dataset=$DATASET --optimiser=$OPTIMISER --seed=$RUN --log-level=$LOG_LEVEL
		done
	done
done
