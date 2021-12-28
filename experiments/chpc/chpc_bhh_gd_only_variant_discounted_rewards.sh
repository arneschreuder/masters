#!/bin/sh

#PBS -N 14_bhh_gd_only_variant_discounted_rewards
#PBS -q smp
#PBS -P CSCI0886
#PBS -l select=1:ncpus=24:mem=120gb:ngpus=0
#PBS -l walltime=96:00:00
#PBS -o /mnt/lustre/users/aschreuder/revised/14_stdoutput.out
#PBS -e /mnt/lustre/users/aschreuder/revised/14_stderror.err
#PBS -m abe -M arneschreuder@icloud.com

ulimit -s unlimited

# Move to the directory of interest
cd /mnt/lustre/users/aschreuder/revised/masters.ai/

# Can activate your python environment here
module purge
module load chpc/python/3.7.0

# Run your script
source .venv/bin/activate
bash experiments/scripts/bhh_gd_only_variant_discounted_rewards.sh
