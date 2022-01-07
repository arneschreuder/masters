#!/usr/bin/env bash

# set -ex

bash scripts/get_tracking.sh
bash scripts/get_data.sh

TODO=$(wc -l experiments/scripts/*.sh | tail -n 1 | awk '{print $1/2}')
DONE=$(wc -l tracking/progress/*.txt | tail -n 1 | awk '{print $1}')

echo "Progress: (${DONE}/${TODO})"