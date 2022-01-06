#!/usr/bin/env bash

gsutil cp data/master.data gs://training_ffnns_bhh/master.data

bq rm --force=true masters-287321:raw.raw

bq mk --force=true \
	--external_table_definition=id:STRING,dataset:STRING,heuristic:STRING,heuristic_pool:STRING,population:INTEGER,burn_in:INTEGER,replay:INTEGER,reselection:INTEGER,reanalysis:INTEGER,normalisation:BOOLEAN,credit:STRING,discounted_rewards:BOOLEAN,run:INTEGER,step:INTEGER,wall_time:FLOAT,tag:STRING,value:FLOAT@CSV=gs://training_ffnns_bhh/master.data \
	masters-287321:raw.raw
