# BHH Variant: Burn In
# This runs the BHH with variant burn_in

#!/usr/bin/env bash

# set -ex

echo "export TF_CPP_MIN_LOG_LEVEL=3"
echo "export CUDA_VISIBLE_DEVICES=''"
echo "export LOG_LEVEL=2"

RUNS=2

declare -a DATASETS=("iris" "wine_quality")

for DATASET in ${DATASETS[@]}; do
	for ((RUN = 1; RUN <= RUNS; RUN++)); do
		python bhh.py --dataset=$DATASET --seed=$RUN --heuristic-pool=all --population-size=5 --burn_in=0 --replay=10 --reselection=10 --reanalysis=10 --credit=ibest
	done
done
