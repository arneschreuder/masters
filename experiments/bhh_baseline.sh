# BHH Baseline
# This runs the baseline BHH against all the datasets

#!/usr/bin/env bash

set -ex

TF_CPP_MIN_LOG_LEVEL=3
CUDA_VISIBLE_DEVICES=""

RUNS=30
LOG_LEVEL=2

declare -a DATASETS=("abalone" "adult" "air_quality" "bank" "bike" "car" "iris" "diabetic" "fish_toxicity" "forest_fires" "housing" "mushroom" "parkinsons" "student_performance" "wine_quality")

for DATASET in ${DATASETS[@]}; do
	for ((RUN = 1; RUN <= RUNS; RUN++)); do
		python \
			bhh.py \
			--dataset=$DATASET \
			--seed=$RUN \
			--log-level=$LOG_LEVEL \
			--population-size=5 \
			--burn_in=0 \
			--replay=10 \
			--reselection=1 \
			--reanalysis=1 \
			--normalise=false \
			--credit=gbest \
			--discounted-rewards=true
	done
done
