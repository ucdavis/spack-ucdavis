#!/bin/bash
#
#-----------------------------------------
# Multi-node, multi-thread CPU optimized .
#-----------------------------------------
#
#SBATCH --job-name=XXXnameXXX
#SBATCH --output=XXXoutfileXXX
#
#Number of MPI tasks (MPI ranks in the hybrid job)
#SBATCH --ntasks=XXXmpinodesXXX
#
#Number of OpenMP threads per MPI task
#SBATCH --cpus-per-task=XXXthreadsXXX
#The total number of CPUs used by the job
#can be calculated as:  number of MPI tasks * cpus per task
#
#Define the number of hours the job should run. 
#Maximum runtime is limited to 5 days, ie. 120 hours
#SBATCH --time=XXXextra3XXX
#
#Define the amount of RAM used per MPI task in GigaBytes
#The total amount of memory used by the job
#can be calculated as:  number of MPI tasks * memory per CPU
#SBATCH --mem-per-cpu=XXXextra2XXX
#
#Send emails when a job starts, it is finished or it exits
#SBATCH --mail-user=XXXextra1XXX
#SBATCH --mail-type=ALL
#
#Define the "gpu" partition for GPU-accelerated jobs
#SBATCH --partition=XXXqueueXXX
#
#SBATCH --account=XXXextra4XXX
#
#SBATCH --no-requeue
#
#Set the number of OpenMP threads per MPI task to SLURM internal variable value
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
#

module load openmpi/4.1.4
module load relion/cpu/4.0.0+amd
module load motioncor2/1.5.0

which relion_refine_mpi

module list

echo "RELION JOB STARTED at: `date`"

mkdir -p slurm
cp XXXoutfileXXX slurm/slurm$SLURM_JOB_ID_0
ln -s ../XXXoutfileXXX slurm/slurm$SLURM_JOB_ID

#run your Relion job here
#echo srun --mpi=pmix -n $SLURM_NTASKS $RELION_command
srun --mpi=pmix -n $SLURM_NTASKS XXXcommandXXX

echo "RELION JOB ENDED at: `date`"
