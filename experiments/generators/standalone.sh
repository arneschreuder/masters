# Standalone Optimisers
# This experiment runs all lower level heuristics with default configuration on all datasets.

#!/usr/bin/env bash

# set -ex

echo "export TF_CPP_MIN_LOG_LEVEL=3"
echo "export CUDA_VISIBLE_DEVICES=''"
echo "export LOG_LEVEL=0"

RUNS=1

declare -a DATASETS=("iris" "abalone" "housing" "forest_fires" "fish_toxicity" "student_performance" "car" "parkinsons" "wine_quality" "mushroom" "air_quality" "adult" "bike" "bank" "diabetic")
declare -a OPTIMISERS=("sgd" "momentum" "nag" "adagrad" "rmsprop" "adadelta" "adam" "pso" "de" "ga")

for DATASET in ${DATASETS[@]}; do
	for OPTIMISER in ${OPTIMISERS[@]}; do
		for ((RUN = 1; RUN <= RUNS; RUN++)); do
			echo "python heuristic.py --dataset=$DATASET --optimiser=$OPTIMISER --seed=$RUN"
			echo "echo 'standalone,${DATASET},${OPTIMISER},${RUN}' >> tracking/progress/standalone.txt"
		done
	done
done
