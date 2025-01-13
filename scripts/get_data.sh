#!/usr/bin/env bash

set -ex

rsync -avz -e "ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" --progress aschreuder@scp.chpc.ac.za:/mnt/lustre/users/aschreuder/masters.ai/logs/ data/
