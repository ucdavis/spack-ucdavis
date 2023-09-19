{% extends "hpccf/default.lua" %}
{% block footer %}
{{ super() }}

depends_on("motioncor2")
depends_on("gctf/1.06")
depends_on("ghostscript")

setenv("RELION_MOTIONCOR2_EXECUTABLE", pathJoin(os.getenv("MOTIONCOR2_ROOT"), "bin/MotionCor2"))
setenv("RELION_CTFFIND_EXECUTABLE", pathJoin(os.getenv("CTFFIND_ROOT"), "bin/ctffind"))
setenv("RELION_GCTF_EXECUTABLE", pathJoin(os.getenv("GCTF_ROOT"), "bin/Gctf-v1.06_sm_30_cu8.0_x86_64"))

setenv("RELION_QSUB_EXTRA_COUNT", "5")

setenv("RELION_QSUB_EXTRA1", "Email:")
setenv("RELION_QSUB_EXTRA1_DEFAULT", user_email)
setenv("RELION_QSUB_EXTRA1_HELP", "The email address to use for slurm notifications.")

setenv("RELION_QSUB_EXTRA2", "GPU resources:")
setenv("RELION_QSUB_EXTRA2_DEFAULT", "2")
setenv("RELION_QSUB_EXTRA2_HELP", [[Number (and optionally type) of GPUs to request for this job. If only an integer is supplied, will request any GPU. If TYPE:NUM is supplied (example: a4000:4), specific models of GPU will be requested. Note that specific combinations of GPU type and job queue may fail; that is, if you select "high" as your queue and "a4000:4" as your GPU resources, but your account does not have access to the A4000 nodes' high queue, the job will fail to submit. You can view avaiable GPU resource types by running `sinfo -o "%20N %10c %10m %30G"`.]])

setenv("RELION_QSUB_EXTRA3", "Memory per CPU (MB):")
setenv("RELION_QSUB_EXTRA3_DEFAULT", "10000")
setenv("RELION_QSUB_EXTRA3_HELP", "Memory used per CPU thread, in MiB. Total memory can be calculated as (number of MPI tasks) * (memory per CPU).")

setenv("RELION_QSUB_EXTRA4", "Job Time:")
setenv("RELION_QSUB_EXTRA4_DEFAULT", "12:00:00")
setenv("RELION_QSUB_EXTRA4_HELP", "SLURM job time limit in format HH:MM:SS or DAYS-HH:MM:SS.")

setenv("RELION_QSUB_EXTRA5", "Account:")
setenv("RELION_QSUB_EXTRA5_HELP", "SLURM --account parameter.")

setenv("RELION_QUEUE_USE", "yes")
setenv("RELION_QSUB_COMMAND", "sbatch")
setenv("RELION_SHELL", "bash")
setenv("RELION_SCRATCH_DIR", "/tmp/")
setenv("RELION_QUEUE_NAME", "low")

{% endblock %}
