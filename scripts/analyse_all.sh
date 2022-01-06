#!/usr/bin/env bash

set -ex

python scripts/analyse.py --analysis=bhh_burn_in
python scripts/analyse.py --analysis=bhh_credit
python scripts/analyse.py --analysis=bhh_discounted_rewards
python scripts/analyse.py --analysis=bhh_heuristic_pool
python scripts/analyse.py --analysis=bhh_normalise
python scripts/analyse.py --analysis=bhh_population
python scripts/analyse.py --analysis=bhh_rescripts
python scripts/analyse.py --analysis=bhh_replay
python scripts/analyse.py --analysis=bhh_reselection
python scripts/analyse.py --analysis=standalone
