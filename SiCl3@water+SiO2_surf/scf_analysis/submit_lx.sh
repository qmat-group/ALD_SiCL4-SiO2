#!/bin/sh
#SBATCH --job-name=phys_geo1
#SBATCH --partition=small
#SBATCH --ntasks=32
#SBATCH --nodes=1
#SBATCH --time=2:00:00
#SBATCH --tasks-per-node=32
#SBATCH --output=%x.%j.out
#SBATCH --error=%x.%j.err

module load qe

cd scf_mol
srun pw.x -i  pwscf.in > pwscf.out 
cd ..

cd scf_sub
srun pw.x -i  pwscf.in > pwscf.out 
cd ..

cd scf_tot
srun pw.x -i  pwscf.in > pwscf.out
