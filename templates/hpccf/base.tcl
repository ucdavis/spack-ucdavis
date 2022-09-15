{% extends "modules/modulefile.tcl" %}
{% block footer %}
if [module-info mode load] {
   {% block postload %}
   {% endblock postload %}
}
{% endblock footer %}
