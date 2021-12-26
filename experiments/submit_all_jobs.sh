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
