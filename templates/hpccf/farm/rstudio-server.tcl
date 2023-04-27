{% extends "hpccf/default.tcl" %}
{% block footer %}
{{ super() }}

setenv RSTUDIO_SERVER_UTILS /share/apps/22.04/hpccf-wrappers/rstudio
prepend-path PATH $env(RSTUDIO_SERVER_UTILS)

if { [module-info mode load] } {

   set hostname [exec /bin/hostname]

   if {[string equal $hostname "farm"]} {
      puts stderr "
RStudio Server is not allowed on the head node; it must be run in 
an interactive Slurm session. For example, you could run:

   srun -p high --time=9:00:00 --cpus-per-task=4 --mem=5G --pty /bin/bash -l

Once your session launches, reload this module again and follow
the provided directions to launch the server.
"
      exit
   }

   puts stderr "
If you wish to use RStudio Server with the system R, first load it with:

   module load R

If you instead wish to load R from a conda environment (one that has r-base installed),
activate the environment before proceeding.

Once your R is sorted, launch the server with:

   rstudio-launch
"
}

{% endblock %}
