#!/usr/bin/env bash

set -ex

rm -rf data/master.data
echo "id,dataset,heuristic,heuristic_pool,population,burn_in,replay,reselection,reanalysis,normalisation,credit,discounted_rewards,run,step,wall_time,tag,value" >data/master.data
find data -name '*.csv' | while read fn; do cat "$fn" >>data/master.data; done
