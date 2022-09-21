#!/usr/bin/env bash

set -ex

find analysis -regex '.*figures\/[cd|train|test].*.png' -exec rm -f {} \;
# find analysis -regex '.*figures\/[cd|train|test].*.pdf' -exec rm -f {} \;
