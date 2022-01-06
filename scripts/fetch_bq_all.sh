# BHH Variant: Burn In
# This runs the BHH with variant burn_in

#!/usr/bin/env bash

# set -ex

declare -a ANALYSISES=("bhh_burn_in" "bhh_credit" "bhh_discounted_rewards" "bhh_heuristic_pool" "bhh_normalise" "bhh_population" "bhh_reanalysis" "bhh_replay" "bhh_reselection" "standalone")

for ANALYSIS in ${ANALYSISES[@]}; do
	python scripts/fetch_bq.py --analysis=$ANALYSIS
done
