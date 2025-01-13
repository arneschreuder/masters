#!/usr/bin/env bash

set -ex

rm -rf data/master.csv
echo "id,dataset,heuristic,heuristic_pool,population,burn_in,replay,reselection,reanalysis,normalisation,credit,discounted_rewards,run,step,wall_time,tag,value" >data/master.csv
find data -name '*.csv' -not -name 'master.csv' | while read fn; do cat "$fn" >>data/master.csv; done
