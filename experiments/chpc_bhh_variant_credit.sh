#!/bin/sh

#PBS -N bhh_variant_credit
#PBS -q serial
#PBS -P CSCI0886
#PBS -l select=1:ncpus=24:mem=32gb:ngpus=0
#PBS -l walltime=12:00:00
#PBS -o /mnt/lustre/users/aschreuder/stdoutput.out
#PBS -e /mnt/lustre/users/aschreuder/stderror.err
#PBS -m abe -M arneschreuder@icloud.com

ulimit -s unlimited

# Move to the directory of interest
cd /mnt/lustre/users/aschreuder/masters.ai/

# Can activate your python environment here
module purge
module load chpc/python/3.7.0

# Run your script
source .venv/bin/activate
bash experiments/bhh_variant_credit.sh
