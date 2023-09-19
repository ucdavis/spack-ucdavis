{% extends "hpccf/default.tcl" %}
{% block footer %}
{{ super() }}
   puts stderr "NOTE: you must set the environment variable CHECKM_DATA_PATH
to a location containing the CheckM reference data. You might consider doing so in
your user profile by adding it to ~/.profile: export CHECKM_DATA_PATH=/path/to/checkm/data
See the CheckM documentation for more information: https://github.com/Ecogenomics/CheckM/wiki/Installation#required-reference-data"
{% endblock %}
