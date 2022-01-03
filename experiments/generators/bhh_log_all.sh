# BHH Variant: Heuristic Pool
# This runs the baseline BHH variants with varying

#!/usr/bin/env bash

# set -ex

echo "export TF_CPP_MIN_LOG_LEVEL=3"
echo "export CUDA_VISIBLE_DEVICES=''"
echo "export LOG_LEVEL=2"

RUNS=1

declare -a DATASETS=("iris")

for DATASET in ${DATASETS[@]}; do
	for ((RUN = 101; RUN <= RUNS + 100; RUN++)); do
		echo "python bhh.py --dataset=$DATASET --seed=$RUN --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest"
		echo "echo 'bhh_log_all,${DATASET},${RUN}' >> tracking/progress/bhh_log_all.txt"
	done
done
