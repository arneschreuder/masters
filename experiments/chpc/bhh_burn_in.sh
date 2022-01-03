#!/bin/sh

#PBS -N bhh_bi
#PBS -q serial
#PBS -P CSCI0886
#PBS -l select=1:ncpus=24:mem=120gb:ngpus=0
#PBS -l walltime=48:00:00
#PBS -o /mnt/lustre/users/aschreuder/tracking/stdin/bhh_bi.out
#PBS -e /mnt/lustre/users/aschreuder/tracking/stderror/bhh_bi.err
#PBS -m abe -M arneschreuder@icloud.com

ulimit -s unlimited

# Move to the directory of interest
cd /mnt/lustre/users/aschreuder/masters.ai/

# Can activate your python environment here
module purge
module load chpc/python/3.7.0

# Run your script
source .venv/bin/activate
bash experiments/scripts/bhh_burn_in.sh
