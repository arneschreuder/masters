#!/usr/bin/env bash

set -ex

find logs -name '*.csv' -exec rm -f {} \;
