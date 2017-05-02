#!/bin/bash
#
#SBATCH --job-name=dmnb_2
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

cd /home/usaxena/work/690/dmn
python main.py --task 4 --test false
python main.py --task 4 --test true
python main.py --task 5 --test false
python main.py --task 5 --test true
python main.py --task 6 --test false
python main.py --task 6 --test true
