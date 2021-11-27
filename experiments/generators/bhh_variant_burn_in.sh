# BHH Variant: Burn In
# This runs the baseline BHH with varying burn in sizes

#!/usr/bin/env bash

# set -ex

echo "TF_CPP_MIN_LOG_LEVEL=3"
echo "CUDA_VISIBLE_DEVICES=''"
echo "LOG_LEVEL=0"
LOG_LEVEL=0
RUNS=10

declare -a DATASETS=("iris" "fish_toxicity" "abalone" "air_quality" "housing" "wine_quality" "car" "parkinsons" "forest_fires" "bank" "bike" "student_performance" "adult" "mushroom" "diabetic")
declare -a BURN_INS=(0 10 20 50 100)

for DATASET in ${DATASETS[@]}; do
	for BURN_IN in ${BURN_INS[@]}; do
		for ((RUN = 1; RUN <= RUNS; RUN++)); do
			echo "python bhh.py --dataset=$DATASET --seed=$RUN --log-level=$LOG_LEVEL --population-size=5 --burn_in=$BURN_IN --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true"
			echo "echo 'bhh_variant_burn_in,${DATASET},${BURN_IN},${RUN}' >>tracking_bhh_variant_burn_in.txt"
		done
	done
done
