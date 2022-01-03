#!/usr/bin/env bash

set -ex

# python heuristic.py --dataset=iris --optimiser=rmsprop --seed=1
LOG_LEVEL=2 python bhh.py --variant=gd_only --dataset=iris --seed=1 --population-size=5 --burn_in=10 --replay=10 --reselection=10 --reanalysis=10 --credit=gbest
