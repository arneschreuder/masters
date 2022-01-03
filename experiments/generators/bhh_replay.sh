# BHH Variant: Replay
# This runs the BHH with variant reselection

#!/usr/bin/env bash

# set -ex

echo "export TF_CPP_MIN_LOG_LEVEL=3"
echo "export CUDA_VISIBLE_DEVICES=''"
echo "export LOG_LEVEL=0"

RUNS=1

declare -a DATASETS=("iris" "abalone" "housing" "forest_fires" "fish_toxicity" "student_performance" "car" "parkinsons" "wine_quality" "mushroom" "air_quality" "adult" "bike" "bank" "diabetic")
declare -a REPLAYS=(1 5 15 20) # Default is ibest

for DATASET in ${DATASETS[@]}; do
	for REPLAY in ${REPLAYS[@]}; do
		for ((RUN = 1; RUN <= RUNS; RUN++)); do
			echo "python bhh.py --dataset=$DATASET --seed=$RUN --heuristic_pool=all --population-size=5 --burn_in=0 --replay=${REPLAY} --reselection=10 --reanalysis=10 --credit=ibest"
			echo "echo 'bhh_replay,${DATASET},${REPLAY},${RUN}' >> tracking/progress/bhh_replay.txt"
		done
	done
done
