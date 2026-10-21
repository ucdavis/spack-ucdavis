{% extends "hpccf/franklin/relion.cpu.tcl" %}
{% block footer %}
{{ super() }}

setenv RELION_QSUB_EXTRA_COUNT "5"

setenv RELION_QSUB_EXTRA5 "GPU resources:"
setenv RELION_QSUB_EXTRA5_DEFAULT "2"
setenv RELION_QSUB_EXTRA5_HELP "Number (and optionally type) of GPUs to request for this job. If only an integer is supplied, will request any GPU. If TYPE:NUM is supplied (example: a4000:4), specific models of GPU will be requested. Note that specific combinations of GPU type and job queue may fail; that is, if you select \"high\" as your queue and \"a4000:4\" as your GPU resources, but your account does not have access to the A4000 nodes' high queue, the job will fail to submit. You can view available GPU resource types by running sinfo -o \"%20N %10c %10m %30G\""

{% endblock %}
