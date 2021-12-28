#!/usr/bin/env bash

set -ex

qsub experiments/chpc/chpc_bhh_baseline.sh
qsub experiments/chpc/chpc_bhh_variant_burn_in.sh
qsub experiments/chpc/chpc_bhh_variant_credit.sh
qsub experiments/chpc/chpc_bhh_variant_discounted_rewards.sh
qsub experiments/chpc/chpc_bhh_variant_normalise.sh
qsub experiments/chpc/chpc_bhh_variant_population.sh
qsub experiments/chpc/chpc_bhh_variant_reanalysis.sh
qsub experiments/chpc/chpc_bhh_variant_replay.sh
qsub experiments/chpc/chpc_bhh_variant_reselection.sh
qsub experiments/chpc/chpc_standalone_optimisers.sh

qsub experiments/chpc/chpc_bhh_gd_only_baseline.sh
qsub experiments/chpc/chpc_bhh_gd_only_variant_burn_in.sh
qsub experiments/chpc/chpc_bhh_gd_only_variant_credit.sh
qsub experiments/chpc/chpc_bhh_gd_only_variant_discounted_rewards.sh
qsub experiments/chpc/chpc_bhh_gd_only_variant_normalise.sh
qsub experiments/chpc/chpc_bhh_gd_only_variant_population.sh
qsub experiments/chpc/chpc_bhh_gd_only_variant_reanalysis.sh
qsub experiments/chpc/chpc_bhh_gd_only_variant_replay.sh
qsub experiments/chpc/chpc_bhh_gd_only_variant_reselection.sh

qsub experiments/chpc/chpc_bhh_log_all.sh
qsub experiments/chpc/chpc_bhh_gd_only_log_all.sh
