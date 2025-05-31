#!/bin/sh
#SBATCH -t 00:30:00
#SBATCH -p rome
#SBATCH --nodes 1
#SBATCH --ntasks 1
#SBATCH --cpus-per-task 8
#SBATCH --tasks-per-node 1
#SBATCH --mem=80G
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=aphrodite.provolisianou@ru.nl


source activate medseq;

python mix_a.py files_a.txt mixout.json/


