{% extends "hpccf/default.tcl" %}
{% block postload %}
{{ super() }}
   puts stderr "NOTE: circos --version reports 0.69-8, while the actual version is 0.69-9."
   puts stderr "      This is a known issue with circos, please do not report it."
{% endblock %}
