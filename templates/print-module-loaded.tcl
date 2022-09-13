{% extends "modules/modulefile.tcl" %}
{% block footer %}
if [module-info mode load] {
   puts stderr "Module [module-info name] loaded"
}
{% endblock %}
