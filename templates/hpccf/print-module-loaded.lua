{% extends "hpccf/base.lua" %}
{% block postload %}
   {{ super() }}
   LmodMessage(myModuleFullName() .. ": loaded.")
{% endblock %}
{% block postunload %}
   {{ super() }}
   LmodMessage(myModuleFullName() .. ": unloaded.")
{% endblock %}
