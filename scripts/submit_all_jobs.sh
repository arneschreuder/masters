#!/usr/bin/env bash

set -ex

qsub experiments/chpc/bhh_burn_in.sh
qsub experiments/chpc/bhh_credit.sh
qsub experiments/chpc/bhh_credit2.sh
# qsub experiments/chpc/bhh_discounted_rewards.sh
# qsub experiments/chpc/bhh_heuristic_pool.sh
# qsub experiments/chpc/bhh_log_all.sh
# qsub experiments/chpc/bhh_normalise.sh
qsub experiments/chpc/bhh_population.sh
qsub experiments/chpc/bhh_population2.sh
qsub experiments/chpc/bhh_population3.sh
qsub experiments/chpc/bhh_population4.sh
qsub experiments/chpc/bhh_population5.sh
qsub experiments/chpc/bhh_population6.sh
qsub experiments/chpc/bhh_population7.sh
qsub experiments/chpc/bhh_reanalysis.sh
qsub experiments/chpc/bhh_reanalysis2.sh
qsub experiments/chpc/bhh_replay.sh
# qsub experiments/chpc/bhh_replay2.sh
qsub experiments/chpc/bhh_reselection.sh
# qsub experiments/chpc/bhh_reselection2.sh
# qsub experiments/chpc/standalone.sh
# qsub experiments/chpc/standalone2.sh
