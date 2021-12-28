# BHH GD Only Baseline
# This runs the baseline BHH GD Only against only iris, with full logging enables

#!/usr/bin/env bash

# set -ex

echo "export TF_CPP_MIN_LOG_LEVEL=3"
echo "export CUDA_VISIBLE_DEVICES=''"
echo "export LOG_LEVEL=2"

RUNS=10

declare -a DATASETS=("iris")

for DATASET in ${DATASETS[@]}; do
	for ((RUN = 100; RUN <= RUNS + 100; RUN++)); do
		echo "python bhh.py --variant='gd_only' --dataset=$DATASET --seed=$RUN --population-size=5 --burn_in=0 --replay=10 --reselection=1 --reanalysis=1 --normalise=false --credit=gbest --discounted-rewards=true"
		echo "echo 'bhh_gd_only_log_all,${DATASET},${RUN}' >>tracking_bhh_gd_only_log_all.txt"
	done
done
