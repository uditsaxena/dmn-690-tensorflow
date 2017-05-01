#!/bin/bash
#
#SBATCH --job-name=dmnp_1
#SBATCH --mem=10000

#SBATCH --output=us_experiment_%A.out
#SBATCH --error=us_experiment_%A.err

# Log what we're running and where.
echo $SLURM_JOBID - `hostname` >> ~/slurm-lstm-jobs.txt

module purge
module unload all
module load python/3.5.2
module load tensorflow/0.10
cd /home/usaxena/work/690/dmn
./main.py --task 1 --test false
./python main.py --task 1 --test true
