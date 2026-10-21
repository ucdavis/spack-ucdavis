{% extends "hpccf/default.tcl" %}
{% block footer %}
{{ super() }}
set-alias gcc /usr/bin/gcc-{{spec.version[0]}}
set-alias g++ /usr/bin/g++-{{spec.version[0]}}
set-alias cc /usr/bin/gcc-{{spec.version[0]}}
set-alias c++ /usr/bin/g++-{{spec.version[0]}}
{% endblock %}
