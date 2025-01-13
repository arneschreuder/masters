#!/usr/bin/env bash

gsutil cp data/master.csv gs://masters-363209/master.csv

bq rm --force=true masters-363209:raw.raw

bq mk --force=true \
	--external_table_definition=id:STRING,dataset:STRING,heuristic:STRING,heuristic_pool:STRING,population:INTEGER,burn_in:INTEGER,replay:INTEGER,reselection:INTEGER,reanalysis:INTEGER,normalisation:BOOLEAN,credit:STRING,discounted_rewards:BOOLEAN,run:INTEGER,step:INTEGER,wall_time:FLOAT,tag:STRING,value:FLOAT@CSV=gs://masters-363209/master.csv \
	masters-363209:raw.raw
