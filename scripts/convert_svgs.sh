#!/usr/bin/env bash

set -ex

find analysis -type f -name "*.svg" -exec bash -c 'rsvg-convert -h 500 "$0" > "$0".png' {} \;
