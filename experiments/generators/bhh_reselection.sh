# BHH Variant: Reselection
# This runs the BHH with variant reselection

#!/usr/bin/env bash

# set -ex

echo "export TF_CPP_MIN_LOG_LEVEL=3"
echo "export CUDA_VISIBLE_DEVICES=''"
echo "export LOG_LEVEL=0"

RUNS=30

declare -a DATASETS=("iris" "abalone" "housing" "forest_fires" "fish_toxicity" "student_performance" "car" "parkinsons" "wine_quality" "mushroom" "air_quality" "adult" "bike" "bank" "diabetic")
declare -a RESELECTIONS=(1 5 15 20) # Default is 10

for DATASET in ${DATASETS[@]}; do
	for RESELECTION in ${RESELECTIONS[@]}; do
		for ((RUN = 1; RUN <= RUNS; RUN++)); do
			echo "python bhh.py --dataset=$DATASET --seed=$RUN --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=${RESELECTION} --reanalysis=10 --credit=ibest"
			echo "echo 'bhh_reselection,${DATASET},${RESELECTION},${RUN}' >> tracking/progress/bhh_reselection.txt"
		done
	done
done
