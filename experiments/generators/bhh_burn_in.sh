# BHH Variant: Burn In
# This runs the BHH with variant burn_in

#!/usr/bin/env bash

# set -ex

echo "export TF_CPP_MIN_LOG_LEVEL=3"
echo "export CUDA_VISIBLE_DEVICES=''"
echo "export LOG_LEVEL=0"

RUNS=1

declare -a DATASETS=("iris" "fish_toxicity" "abalone" "air_quality" "housing" "wine_quality" "car" "parkinsons" "forest_fires" "bank" "bike" "student_performance" "adult" "mushroom" "diabetic")
declare -a BURN_INS=(5 10 15 20) # Default is 0

for DATASET in ${DATASETS[@]}; do
	for BURN_IN in ${BURN_INS[@]}; do
		for ((RUN = 1; RUN <= RUNS; RUN++)); do
			echo "python bhh.py --dataset=$DATASET --seed=$RUN --heuristic_pool=all --population-size=5 --burn_in=${BURN_IN} --replay=10 --reselection=10 --reanalysis=10 --credit=ibest"
			echo "echo 'bhh_burn_in,${DATASET},${BURN_IN},${RUN}' >> bhh_burn_in.txt"
		done
	done
done
