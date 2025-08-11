#!/bin/bash
#SBATCH --partition=batch
#SBATCH --job-name=OH-opt-b3lyp
#SBATCH --ntasks=8
#SBATCH --time=1:00:00
#SBATCH --mem-per-cpu=12G

module load ORCA/6.1

$(which orca) opt.inp > opt.log
