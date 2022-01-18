#!/usr/bin/env bash

set -ex

bash scripts/clear_csvs.sh
bash scripts/clear_figures.sh
bash scripts/get_progress.sh
python scripts/export.py --data-dir=data
bash scripts/concat_csvs.sh
bash scripts/upload_master_data.sh
bash scripts/fetch_bq_all.sh
bash scripts/analyse_all.sh
