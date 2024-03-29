{% extends "modules/modulefile.tcl" %}

{% block environment %}
{{ super() }}
if { [module-info mode load] && [info exists env(deprecate_on)] } {

   set deprecate_on "$env(deprecate_on)"
   unsetenv deprecate_on
   set deprecate_on_s [clock scan "$deprecate_on" -format "%Y-%m-%d"]
   set now_s [clock seconds]

   if { $now_s > $deprecate_on_s } {
      puts stderr "\n******************************************************************"
      puts stderr "ERROR: this module is deprecated and was disabled on $deprecate_on.\n"
      puts stderr "Use a newer version if available. To request software, please see:"
      puts stderr "https://hpc.ucdavis.edu/software-installation-policy"
      puts stderr "******************************************************************"

      exit
   } else {

      puts stderr "\n**********************************************************************"
      puts stderr "WARNING: this module is deprecated; it will be removed on $deprecate_on.\n"
      puts stderr "Use a newer version if available. To request software, please see:"
      puts stderr "https://hpc.ucdavis.edu/software-installation-policy"
      puts stderr "**********************************************************************"
   }
}
{% endblock %}

{% block footer %}
if [module-info mode load] {
   {% block postload %}
   {% endblock postload %}
}
{% endblock footer %}
