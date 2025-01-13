#!/usr/bin/env bash

# set -ex

TODO=$(find data -name '*.v2' | wc -l | tail -n 1 | awk '{print $1}')
DONE=$(find data -name '*.csv' | wc -l | tail -n 1 | awk '{print $1}')

echo "Progress: (${DONE}/${TODO})"
