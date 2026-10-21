{% extends "hpccf/default.tcl" %}
{% block footer %}
{{ super() }}

setenv TURBOVNC_SERVER_UTILS /share/apps/22.04/hpccf-wrappers/turbovnc
prepend-path PATH $env(TURBOVNC_SERVER_UTILS)

module load virtualgl

if { [module-info mode load] } {

   set hostname [exec /bin/hostname]

   if {[string equal $hostname "farm"]} {
      puts stderr "
TurboVNC is not allowed on the head node.

You need to run it on a node through srun and use SSH to do port forwarding.

For example: srun --partition=gpu-a100-h --gres=gpu:1 --time=9:00:00 --ntasks=1 --cpus-per-task=4 --mem=50G --pty /bin/bash -l

After your srun has been allocated resources you can then run the following two commands:

module load [module-info name]
turbovnc-farm

"
      exit
   }

   puts stderr "

Now, run the wrapper script, you may rerun it if necessary: turbovnc-farm

"
}

{% endblock %}
