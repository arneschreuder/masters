#!/usr/bin/env bash

set -ex

mkdir -p tracking
rsync -avz -e "ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" --progress aschreuder@lengau.chpc.ac.za:/mnt/lustre/users/aschreuder/masters.ai/standalone.txt tracking/
rsync -avz -e "ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" --progress aschreuder@lengau.chpc.ac.za:/mnt/lustre/users/aschreuder/masters.ai/bhh_burn_in.txt tracking/
rsync -avz -e "ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" --progress aschreuder@lengau.chpc.ac.za:/mnt/lustre/users/aschreuder/masters.ai/bhh_credit.txt tracking/
rsync -avz -e "ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" --progress aschreuder@lengau.chpc.ac.za:/mnt/lustre/users/aschreuder/masters.ai/bhh_discounted_rewards.txt tracking/
rsync -avz -e "ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" --progress aschreuder@lengau.chpc.ac.za:/mnt/lustre/users/aschreuder/masters.ai/bhh_heuristic_pool.txt tracking/
rsync -avz -e "ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" --progress aschreuder@lengau.chpc.ac.za:/mnt/lustre/users/aschreuder/masters.ai/bhh_normalise.txt tracking/
rsync -avz -e "ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" --progress aschreuder@lengau.chpc.ac.za:/mnt/lustre/users/aschreuder/masters.ai/bhh_population.txt tracking/
rsync -avz -e "ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" --progress aschreuder@lengau.chpc.ac.za:/mnt/lustre/users/aschreuder/masters.ai/bhh_reanalysis.txt tracking/
rsync -avz -e "ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" --progress aschreuder@lengau.chpc.ac.za:/mnt/lustre/users/aschreuder/masters.ai/bhh_replay.txt tracking/
rsync -avz -e "ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" --progress aschreuder@lengau.chpc.ac.za:/mnt/lustre/users/aschreuder/masters.ai/bhh_reselection.txt tracking/
