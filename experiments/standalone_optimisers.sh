# Standalone Optimisers
# This experiment runs all lower level heuristics with default configuration on all datasets.

#!/usr/bin/env bash

set -ex

TF_CPP_MIN_LOG_LEVEL=3
CUDA_VISIBLE_DEVICES=""

RUNS=30
LOG_LEVEL=2

declare -a DATASETS=("abalone" "adult" "air_quality" "bank" "bike" "car" "iris" "diabetic" "fish_toxicity" "forest_fires" "housing" "mushroom" "parkinsons" "student_performance" "wine_quality")
declare -a OPTIMISERS=("sgd" "momentum" "nag" "adagrad" "rmsprop" "adadelta" "adam" "pso" "de" "ga")

for DATASET in ${DATASETS[@]}; do
	for OPTIMISER in ${OPTIMISERS[@]}; do
		for ((RUN = 1; RUN <= RUNS; RUN++)); do
			python \
				heuristic.py \
				--dataset=$DATASET \
				--optimiser=$OPTIMISER \
				--seed=$RUN \
				--log-level=$LOG_LEVEL
		done
	done
done
