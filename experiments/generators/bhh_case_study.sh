# BHH Variant: Heuristic Pool
# This runs the baseline BHH variants with varying

#!/usr/bin/env bash

# set -ex

echo "export TF_CPP_MIN_LOG_LEVEL=3"
echo "export CUDA_VISIBLE_DEVICES=''"
echo "export LOG_LEVEL=2"

RUNS=3

declare -a DATASETS=("iris")
declare -a HEURISTIC_POOLS=("all")
declare -a REPLAYS=(10 250)

for DATASET in ${DATASETS[@]}; do
	for HEURISTIC_POOL in ${HEURISTIC_POOLS[@]}; do
		for REPLAY in ${REPLAYS[@]}; do
			for ((RUN = 1; RUN <= RUNS; RUN++)); do
				echo "python bhh.py --dataset=$DATASET --seed=$RUN --heuristic-pool=${HEURISTIC_POOL} --population-size=5 --burn_in=0 --replay=$REPLAY --reselection=10 --reanalysis=10 --credit=ibest"
				echo "echo 'bhh_case_study,${DATASET},${CREDIT},${HEURISTIC_POOL},${REPLAY}' >> tracking/progress/bhh_case_study.txt"
			done
		done
	done
done
