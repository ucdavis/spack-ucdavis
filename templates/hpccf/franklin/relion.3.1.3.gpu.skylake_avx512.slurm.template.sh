#!/bin/bash
#
#-----------------------------------------
# multiple GPU with hybrid MPI + OpenMP
#-----------------------------------------
#
#SBATCH --job-name=XXXnameXXX
#SBATCH --output=XXXoutfileXXX
#
#Number of MPI tasks (MPI ranks in the hybrid job)
#SBATCH --ntasks=XXXmpinodesXXX
#For classification and refinement jobs, the master MPI process does not share 
#the heavy calcualtions performed on the GPU, so you can use as many MPI tasks
#as many GPUs + 1, i.e. in the case of 4 GPUs this will be 4+1=5.
#3D auto-refinement always needs to be run with at least 3 MPI processes, 
#meaning that you will need to use at least two GPUs and 3 MPI tasks.
#
#Number of OpenMP threads per MPI task
#SBATCH --cpus-per-task=XXXthreadsXXX
#The total number of CPUs used by the job
#can be calculated as:  number of MPI tasks * cpus per task
#
#Define the number of hours the job should run. 
#Maximum runtime is limited to 5 days, ie. 120 hours
#SBATCH --time=XXXextra4XXX
#
#Define the amount of RAM used per MPI task in GigaBytes
#The total amount of memory used by the job
#can be calculated as:  number of MPI tasks * memory per CPU
#SBATCH --mem-per-cpu=XXXextra3XXX
#
#Send emails when a job starts, it is finished or it exits
#SBATCH --mail-user=XXXextra1XXX
#SBATCH --mail-type=ALL
#
#Define the "gpu" partition for GPU-accelerated jobs
#SBATCH --partition=XXXqueueXXX
#
#SBATCH --account=XXXextra5XXX
#
#Define the number of GPUs used by your job
#SBATCH --gres=gpu:XXXextra2XXX
#
#SBATCH --no-requeue
#
#Set the number of OpenMP threads per MPI task to SLURM internal variable value
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
#
#
#print out the list of GPUs before the job is started
/usr/bin/nvidia-smi
#
#

module load openmpi/4.1.4
module load intel-oneapi-mkl/2022.2.1
module load relion/gpu/3.1.3+intel


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
