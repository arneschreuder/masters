# BHH GD Only Variant: Discounted rewards
# This runs the baseline BHH with discounted reward flag toggles

#!/usr/bin/env bash

# set -ex

echo "export TF_CPP_MIN_LOG_LEVEL=3"
echo "export CUDA_VISIBLE_DEVICES=''"
echo "export LOG_LEVEL=0"

RUNS=10

declare -a DATASETS=("iris" "fish_toxicity" "abalone" "air_quality" "housing" "wine_quality" "car" "parkinsons" "forest_fires" "bank" "bike" "student_performance" "adult" "mushroom" "diabetic")
declare -a DISCOUNTED_REWARDSES=("true" "false")

for DATASET in ${DATASETS[@]}; do
	for DISCOUNTED_REWARDS in ${DISCOUNTED_REWARDSES[@]}; do
		for ((RUN = 1; RUN <= RUNS; RUN++)); do
			echo "python bhh.py --variant='gd_only'  --dataset=$DATASET --seed=$RUN --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=$DISCOUNTED_REWARDSES"
			echo "echo 'bhh_gd_only_variant_discounted_rewards,${DATASET},${DISCOUNTED_REWARDS},${RUN}' >>tracking_bhh_gd_only_variant_discounted_rewards.txt"
		done
	done
done
