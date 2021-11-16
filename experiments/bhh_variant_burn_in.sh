# BHH Variant: Burn In
# This runs the baseline BHH with varying burn in sizes

#!/usr/bin/env bash

set -ex

TF_CPP_MIN_LOG_LEVEL=3
CUDA_VISIBLE_DEVICES=""

RUNS=30
LOG_LEVEL=2

declare -a DATASETS=("abalone" "adult" "air_quality" "bank" "bike" "car" "iris" "diabetic" "fish_toxicity" "forest_fires" "housing" "mushroom" "parkinsons" "student_performance" "wine_quality")
declare -a BURN_INS=(0 10 20 50 100)

for DATASET in ${DATASETS[@]}; do
	for BURN_IN in ${BURN_INS[@]}; do
		for ((RUN = 1; RUN <= RUNS; RUN++)); do
			python \
				bhh.py \
				--dataset=$DATASET \
				--seed=$RUN \
				--log-level=$LOG_LEVEL \
				--population-size=5 \
				--burn_in=$BURN_IN \
				--replay=10 \
				--reselection=1 \
				--reanalysis=1 \
				--normalise=false \
				--credit=gbest \
				--discounted-rewards=true
		done
	done
done
