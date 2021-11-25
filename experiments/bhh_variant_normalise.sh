# BHH Variant: Normalise
# This runs the baseline BHH with normalisation flag toggles

#!/usr/bin/env bash

set -ex

TF_CPP_MIN_LOG_LEVEL=3
CUDA_VISIBLE_DEVICES=""
LOG_LEVEL=0
RUNS=10

# declare -a DATASETS=("abalone" "adult" "air_quality" "bank" "bike" "car" "iris" "diabetic" "fish_toxicity" "forest_fires" "housing" "mushroom" "parkinsons" "student_performance" "wine_quality")
declare -a DATASETS=("iris" "fish_toxicity" "abalone" "air_quality" "housing" "wine_quality" "car" "parkinsons" "forest_fires" "bank" "bike" "student_performance" "adult" "mushroom" "diabetic")
declare -a NORMALISES=("true" "false")

for DATASET in ${DATASETS[@]}; do
	for NORMALISE in ${NORMALISES[@]}; do
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
				--normalise=$NORMALISE \
				--credit=gbest \
				--discounted-rewards=true
			echo "bhh_variant_normalise,${DATASET},${NORMALISE},${RUN}" >>tracking_bhh_variant_normalise.txt
		done
	done
done
