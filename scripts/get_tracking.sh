#!/usr/bin/env bash

set -ex

mkdir -p tracking
rsync -avz -e "ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" --progress aschreuder@lengau.chpc.ac.za:/mnt/lustre/users/aschreuder/masters.ai/tracking/ tracking/
