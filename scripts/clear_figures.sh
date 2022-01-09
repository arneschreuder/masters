#!/usr/bin/env bash

set -ex

find analysis -regex '.*figures.*.png' -exec rm -f {} \;
