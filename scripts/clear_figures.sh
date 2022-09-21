#!/usr/bin/env bash

set -ex

find analysis -regex '.*figures.*.png' -exec rm -f {} \;
find analysis -regex '.*figures.*.pdf' -exec rm -f {} \;
