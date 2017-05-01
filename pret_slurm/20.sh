#!/bin/bash
#
#SBATCH --job-name=dmnp_20
#SBATCH --mem=10000

#SBATCH --output=us_experiment_%A.out
#SBATCH --error=us_experiment_%A.err

# Log what we're running and where.
echo $SLURM_JOBID - `hostname` >> ~/slurm-lstm-jobs.txt

module purge
module load tensorflow/1.0.0
module load python/3.5.2
cd /home/usaxena/work/690/dmn
python main.py --task 20 --test false
python main.py --task 20 --test true