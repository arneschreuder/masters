# BHH GD Only Baseline
# This runs the baseline BHH against all the datasets

#!/usr/bin/env bash

# set -ex

echo "export TF_CPP_MIN_LOG_LEVEL=3"
echo "export CUDA_VISIBLE_DEVICES=''"
echo "export LOG_LEVEL=0"

RUNS=10

declare -a DATASETS=("iris" "fish_toxicity" "abalone" "air_quality" "housing" "wine_quality" "car" "parkinsons" "forest_fires" "bank" "bike" "student_performance" "adult" "mushroom" "diabetic")

for DATASET in ${DATASETS[@]}; do
	for ((RUN = 1; RUN <= RUNS; RUN++)); do
		echo "python bhh.py --variant='gd_only' --dataset=$DATASET --seed=$RUN --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true"
		echo "echo 'bhh_gd_only_baseline,${DATASET},${RUN}' >>tracking_bhh_gd_only_baseline.txt"
	done
done
