#!/bin/sh
#SBATCH --job-name=phys_geo1
#SBATCH --partition=small
#SBATCH --ntasks=32
#SBATCH --nodes=1
#SBATCH --time=1:00:00
#SBATCH --tasks-per-node=32
#SBATCH --output=%x.%j.out
#SBATCH --error=%x.%j.err

module load qe


srun pw.x -i  pwscf.in > pwscf.out 
