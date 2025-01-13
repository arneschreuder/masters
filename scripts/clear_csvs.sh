#!/usr/bin/env bash

set -ex

find data -name '*.csv' -exec rm -f {} \;
