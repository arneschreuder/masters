#!/usr/bin/env bash

set -ex

rm -rf logs/master_case_study.csv
echo "id,dataset,heuristic,heuristic_pool,population,burn_in,replay,reselection,reanalysis,normalisation,credit,discounted_rewards,run,step,wall_time,tag,value" >logs/master_case_study.csv
find logs -name '*.csv' -not -name 'master_case_study.csv' | while read fn; do cat "$fn" >>logs/master_case_study.csv; done
