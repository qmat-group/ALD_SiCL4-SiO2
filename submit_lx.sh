#!/bin/sh
#SBATCH --job-name=phys_geo1
#SBATCH --partition=small
#SBATCH --ntasks=64
#SBATCH --nodes=2
#SBATCH --time=2:00:00
#SBATCH --tasks-per-node=32
#SBATCH --output=%x.%j.out
#SBATCH --error=%x.%j.err

module load qe


cd SiCl3
srun pw.x -i  pwscf.in > pwscf.out 
cd ..

cd SiCl4
srun pw.x -i  pwscf.in > pwscf.out 
cd ..
