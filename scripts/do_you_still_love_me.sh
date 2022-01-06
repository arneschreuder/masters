#!/usr/bin/env bash

set -ex

# bash scripts/clear_csvs.sh0
# bash scripts/clear_figures.sh
bash scripts/get_progress.sh
python export.py --data-dir=data
bash scripts/concat_csvs.sh
bash scripts/upload_master_data.sh
bash scripts/analise_all.sh
