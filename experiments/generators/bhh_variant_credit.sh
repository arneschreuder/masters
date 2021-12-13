# BHH Variant: Credit
# This runs the baseline BHH with varying credit assignment strategies

#!/usr/bin/env bash

# set -ex

echo "TF_CPP_MIN_LOG_LEVEL=3"
echo "CUDA_VISIBLE_DEVICES=''"
echo "LOG_LEVEL=0"
LOG_LEVEL=0
RUNS=10

declare -a DATASETS=("iris" "fish_toxicity" "abalone" "air_quality" "housing" "wine_quality" "car" "parkinsons" "forest_fires" "bank" "bike" "student_performance" "adult" "mushroom" "diabetic")
declare -a CREDITS=("ibest" "pbest" "rbest" "gbest" "symmetric")

for DATASET in ${DATASETS[@]}; do
	for CREDIT in ${CREDITS[@]}; do
		for ((RUN = 1; RUN <= RUNS; RUN++)); do
			echo "python bhh.py --dataset=$DATASET --seed=$RUN --log-level=$LOG_LEVEL --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=$CREDIT --discounted-rewards=true"
			echo "echo 'bhh_variant_credit,${DATASET},${CREDIT},${RUN}' >>tracking_bhh_variant_credit.txt"
		done
	done
done