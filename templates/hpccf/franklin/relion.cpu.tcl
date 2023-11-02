{% extends "hpccf/default.tcl" %}
{% block footer %}
{{ super() }}

prereq motioncor2
prereq gctf/1.06
prereq ghostscript

setenv RELION_MOTIONCOR2_EXECUTABLE [file join [getenv MOTIONCOR2_ROOT] "bin/MotionCor2"]
#setenv RELION_CTFFIND_EXECUTABLE [file join [getenv CTFFIND_ROOT] "bin/ctffind"]
setenv RELION_GCTF_EXECUTABLE [file join [getenv GCTF_ROOT] "bin/Gctf-v1.06_sm_30_cu8.0_x86_64"]

setenv RELION_QSUB_EXTRA_COUNT "4"

setenv RELION_QSUB_EXTRA1 "Email:"
setenv RELION_QSUB_EXTRA1_DEFAULT $user_email
setenv RELION_QSUB_EXTRA1_HELP "The email address to use for slurm notifications."

setenv RELION_QSUB_EXTRA2 "Memory per CPU (MB):"
setenv RELION_QSUB_EXTRA2_DEFAULT "10000"
setenv RELION_QSUB_EXTRA2_HELP "Memory used per CPU thread, in MiB. Total memory can be calculated as (number of MPI tasks) * (memory per CPU)."

setenv RELION_QSUB_EXTRA3 "Job Time:"
setenv RELION_QSUB_EXTRA3_DEFAULT "12:00:00"
setenv RELION_QSUB_EXTRA3_HELP "SLURM job time limit in format HH:MM:SS or DAYS-HH:MM:SS."

setenv RELION_QSUB_EXTRA4 "Account:"
setenv RELION_QSUB_EXTRA4_HELP "SLURM --account parameter."

setenv RELION_QUEUE_USE "yes"
#setenv RELION_QSUB_COMMAND "sbatch"
setenv RELION_SHELL "bash"
setenv RELION_SCRATCH_DIR "/tmp/"
setenv RELION_QUEUE_NAME "low"

{% endblock %}
