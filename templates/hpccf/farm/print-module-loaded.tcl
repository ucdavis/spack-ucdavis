{% extends "hpccf/base.tcl" %}
{% block postload%}
   {{ super() }}
   puts stderr "Module [module-info name] loaded"
{% endblock %}
