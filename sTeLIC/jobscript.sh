#!/bin/bash

# Submit to the tcb partition
#SBATCH -p lindahl

# The name of the job in the queue
#SBATCH -J sTeLIC_af
# wall-clock time given to this job
#SBATCH -t 24:00:00

# Number of nodes and number of MPI processes per node
#SBATCH -N 1 
# Request a GPU node and two GPUs (per node)
#SBATCH -C gpu --gres=gpu:4
#SBATCH -c 64 

# Output file names for stdout and stderr
#SBATCH -e job-%j.err -o job-%j.out

# Receive e-mails when your job starts and ends

# The actual script starts here
module unload cuda
module load cuda/11.1
colabfold -i sTeLIC_monomer.fasta -o predict_colab -ho 5 -m mmseqs2 -t --num_relax All -r 5
#colabfold_complex sTeLIC_pentamer.fasta output --amber --num-recycle 5
