#!/usr/bin/env bash

set -ex

rm -rf data/master.csv
rm -rf temp
mkdir -p temp
find data -name '*.csv' -exec cp {} temp/ \;
cat temp/*.csv >data/master.csv
rm -rf temp
