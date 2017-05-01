#!/bin/bash
#
#SBATCH --job-name=dmnb_20
#SBATCH --mem=10000
#SBATCH --partition=titanx-long
#SBATCH --output=us_experiment_%A.out
#SBATCH --error=us_experiment_%A.err

# Log what we're running and where.
echo $SLURM_JOBID - `hostname` >> ~/slurm-lstm-jobs.txt

module purge

module load python/3.5.2
module load cuda75/blas/7.5.18
module load cuda75/fft/7.5.18
module load cuda75/nccl/7.5.18
module load cuda75/nsight/7.5.18
module load cuda75/profiler/7.5.18
module load cuda75/toolkit/7.5.18
python main.py --task 20 --test false
python main.py --task 20 --test true
