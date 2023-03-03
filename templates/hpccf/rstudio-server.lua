{% extends "hpccf/default.lua" %}
{% block footer %}
{{ super() }}

setenv("RSTUDIO_SERVER_UTILS", "/share/apps/franklin/rstudio-server/{{ spec.version }}")
prepend_path("PATH", os.getenv("RSTUDIO_SERVER_UTILS"))

if (mode() == "load") then

   local host = capture([[/bin/hostname]]):gsub("\n", "")
   if (host == "franklin") then
      LmodError([[
   RStudio Server is not allowed on the head node; it must be run in 
   an interactive Slurm session. For example, you could run:

      srun -p low --time=9:00:00 --cpus-per-task=4 --mem=5G --pty /bin/bash -l

   Once your session launches, reload this module again and follow
   the provided directions to launch the server.
      ]])
   end

   LmodMessage([[
   If you wish to use RStudio Server with the system R, first load it with:

      module load R

   If you instead wish to load R from a conda environment (one that has r-base installed),
   activate the environment before proceeding.

   Once your R is sorted, launch this server with:

      rstudio-server
   ]])
end

{% endblock %}
