# BHH Variant: Discounted rewards
# This runs the baseline BHH with discounted reward flag toggles

#!/usr/bin/env bash

# set -ex

echo "TF_CPP_MIN_LOG_LEVEL=3"
echo "CUDA_VISIBLE_DEVICES=''"
echo "LOG_LEVEL=0"
LOG_LEVEL=0
RUNS=10

declare -a DATASETS=("iris" "fish_toxicity" "abalone" "air_quality" "housing" "wine_quality" "car" "parkinsons" "forest_fires" "bank" "bike" "student_performance" "adult" "mushroom" "diabetic")
declare -a DISCOUNTED_REWARDSES=("true" "false")

for DATASET in ${DATASETS[@]}; do
	for DISCOUNTED_REWARDS in ${DISCOUNTED_REWARDSES[@]}; do
		for ((RUN = 1; RUN <= RUNS; RUN++)); do
			echo "python bhh.py --dataset=$DATASET --seed=$RUN --log-level=$LOG_LEVEL --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=$DISCOUNTED_REWARDSES"
			echo "echo 'bhh_variant_discounted_rewards,${DATASET},${DISCOUNTED_REWARDS},${RUN}' >>tracking_bhh_variant_discounted_rewards.txt"
		done
	done
done