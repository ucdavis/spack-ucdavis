{% extends "hpccf/default.tcl" %}
{% block footer %}
{{ super() }}

set ood_app_name "RStudio Server"

if { [module-info mode load] } {

    if { ![info exists env(SLURM_CLUSTER_NAME)] } {
        set domainname [exec /usr/bin/hostname --domain]

        puts stderr "
The only HPCCF supported method of running $ood_app_name is now
through OnDemand. You can find OnDemand for this cluster here:

https://ondemand.$domainname/

If you run into issues getting $ood_app_name to launch through OnDemand,
then please open a ticket."
        exit
    }
}

{% endblock %}
