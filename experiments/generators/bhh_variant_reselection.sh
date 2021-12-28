# BHH Variant: Reselection
# This runs the baseline BHH with varying reselection intervals

#!/usr/bin/env bash

# set -ex

echo "export TF_CPP_MIN_LOG_LEVEL=3"
echo "export CUDA_VISIBLE_DEVICES=''"
echo "export LOG_LEVEL=0"

RUNS=10

declare -a DATASETS=("iris" "fish_toxicity" "abalone" "air_quality" "housing" "wine_quality" "car" "parkinsons" "forest_fires" "bank" "bike" "student_performance" "adult" "mushroom" "diabetic")
declare -a RESELECTIONS=(1 5 10 50 100)

for DATASET in ${DATASETS[@]}; do
	for RESELECTION in ${RESELECTIONS[@]}; do
		for ((RUN = 1; RUN <= RUNS; RUN++)); do
			echo "python bhh.py --dataset=$DATASET --seed=$RUN --population-size=5 --burn_in=0 --replay=10 --reselection=$RESELECTION --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true"
			echo "echo 'bhh_variant_reselection,${DATASET},${RESELECTION},${RUN}' >>tracking_bhh_variant_reselection.txt"
		done
	done
done
