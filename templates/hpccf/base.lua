{% extends "modules/modulefile.lua" %}
{% block footer %}
if (mode() == "load") then
   {% block postload %}
   {% endblock postload %}
end

if (mode() == "unload") then
   {% block postunload %}
   {% endblock postunload %}
end
{% endblock footer %}
