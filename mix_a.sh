#!/bin/sh
#SBATCH -t 03:00:00
#SBATCH -p rome
#SBATCH --nodes 1
#SBATCH --ntasks 1
#SBATCH --cpus-per-task 8
#SBATCH --tasks-per-node 1
#SBATCH --mem=80G
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=aphrodite.provolisianou@ru.nl


source activate medseq;

for depth in 12000000 15000000; do
    mkdir -p output/$depth
    python mix_a.py files_a.txt mixout/$depth $depth
done


