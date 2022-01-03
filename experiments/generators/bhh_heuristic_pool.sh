# BHH Variant: Heuristic Pool
# This runs the baseline BHH variants with varying

#!/usr/bin/env bash

# set -ex

echo "export TF_CPP_MIN_LOG_LEVEL=3"
echo "export CUDA_VISIBLE_DEVICES=''"
echo "export LOG_LEVEL=0"

RUNS=1

declare -a DATASETS=("iris" "abalone" "housing" "forest_fires" "fish_toxicity" "student_performance" "car" "parkinsons" "wine_quality" "mushroom" "air_quality" "adult" "bike" "bank" "diabetic")
declare -a HEURISTIC_POOLS=("all" "gd" "mh") # Default is "all", but we run it here

for DATASET in ${DATASETS[@]}; do
	for HEURISTIC_POOL in ${HEURISTIC_POOLS[@]}; do
		for ((RUN = 1; RUN <= RUNS; RUN++)); do
			echo "python bhh.py --dataset=$DATASET --seed=$RUN --heuristic-pool=${HEURISTIC_POOL} --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest"
			echo "echo 'bhh_heuristic_pool,${DATASET},${HEURISTIC_POOL},${RUN}' >> bhh_heuristic_pool.txt"
		done
	done
done
