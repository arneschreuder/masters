#!/usr/bin/env bash

set -ex

bash experiments/generators/standalone.sh >experiments/scripts/standalone.sh
bash experiments/generators/bhh_heuristic_pool.sh >experiments/scripts/bhh_heuristic_pool.sh
bash experiments/generators/bhh_burn_in.sh >experiments/scripts/bhh_burn_in.sh
bash experiments/generators/bhh_credit.sh >experiments/scripts/bhh_credit.sh
bash experiments/generators/bhh_discounted_rewards.sh >experiments/scripts/bhh_discounted_rewards.sh
bash experiments/generators/bhh_normalise.sh >experiments/scripts/bhh_normalise.sh
bash experiments/generators/bhh_population.sh >experiments/scripts/bhh_population.sh
bash experiments/generators/bhh_reanalysis.sh >experiments/scripts/bhh_reanalysis.sh
bash experiments/generators/bhh_replay.sh >experiments/scripts/bhh_replay.sh
bash experiments/generators/bhh_reselection.sh >experiments/scripts/bhh_reselection.sh
bash experiments/generators/bhh_log_all.sh >experiments/scripts/bhh_log_all.sh
