# BHH Variant: Replay
# This runs the baseline BHH with varying replay intervals

#!/usr/bin/env bash

# set -ex

echo "export TF_CPP_MIN_LOG_LEVEL=3"
echo "export CUDA_VISIBLE_DEVICES=''"
echo "export LOG_LEVEL=0"
LOG_LEVEL=0
RUNS=10

declare -a DATASETS=("iris" "fish_toxicity" "abalone" "air_quality" "housing" "wine_quality" "car" "parkinsons" "forest_fires" "bank" "bike" "student_performance" "adult" "mushroom" "diabetic")
declare -a REPLAYS=(10 20 50 100 300)

for DATASET in ${DATASETS[@]}; do
	for REPLAY in ${REPLAYS[@]}; do
		for ((RUN = 1; RUN <= RUNS; RUN++)); do
			echo "python bhh.py --dataset=$DATASET --seed=$RUN --log-level=$LOG_LEVEL --population-size=5 --burn_in=0 --replay=$REPLAY --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true"
			echo "echo 'bhh_variant_replay,${DATASET},${REPLAY},${RUN}' >>tracking_bhh_variant_replay.txt"
		done
	done
done
