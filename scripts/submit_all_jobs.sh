#!/usr/bin/env bash

set -ex

qsub experiments/chpc/bhh_burn_in.sh
qsub experiments/chpc/bhh_credit.sh
qsub experiments/chpc/bhh_discounted_rewards.sh
qsub experiments/chpc/bhh_heuristic_pool.sh
qsub experiments/chpc/bhh_log_all.sh
qsub experiments/chpc/bhh_normalise.sh
qsub experiments/chpc/bhh_population.sh
qsub experiments/chpc/bhh_reanalysis.sh
qsub experiments/chpc/bhh_replay.sh
qsub experiments/chpc/bhh_reselection.sh
qsub experiments/chpc/standalone.sh