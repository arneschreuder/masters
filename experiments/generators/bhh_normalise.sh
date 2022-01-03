# BHH Variant: Normalise
# This runs the BHH with variant discounted rewards

#!/usr/bin/env bash

# set -ex

echo "export TF_CPP_MIN_LOG_LEVEL=3"
echo "export CUDA_VISIBLE_DEVICES=''"
echo "export LOG_LEVEL=0"

RUNS=30

declare -a DATASETS=("iris" "abalone" "housing" "forest_fires" "fish_toxicity" "student_performance" "car" "parkinsons" "wine_quality" "mushroom" "air_quality" "adult" "bike" "bank" "diabetic")
# Default is false

for DATASET in ${DATASETS[@]}; do
	for ((RUN = 1; RUN <= RUNS; RUN++)); do
		echo "python bhh.py --dataset=$DATASET --seed=$RUN --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --normalise=true"
		echo "echo 'bhh_normalise,${DATASET},true,${RUN}' >> tracking/progress/bhh_normalise.txt"
	done
done
