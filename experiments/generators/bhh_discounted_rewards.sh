# BHH Variant: Discounted Rewards
# This runs the BHH with variant discounted rewards

#!/usr/bin/env bash

# set -ex

echo "export TF_CPP_MIN_LOG_LEVEL=3"
echo "export CUDA_VISIBLE_DEVICES=''"
echo "export LOG_LEVEL=0"

RUNS=1

declare -a DATASETS=("iris" "fish_toxicity" "abalone" "air_quality" "housing" "wine_quality" "car" "parkinsons" "forest_fires" "bank" "bike" "student_performance" "adult" "mushroom" "diabetic")
# Default is false

for DATASET in ${DATASETS[@]}; do
	for ((RUN = 1; RUN <= RUNS; RUN++)); do
		echo "python bhh.py --dataset=$DATASET --seed=$RUN --heuristic_pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest --discounted-rewards"
		echo "echo 'bhh_discounted_rewards,${DATASET},true,${RUN}' >> bhh_discounted_rewards.txt"
	done
done
