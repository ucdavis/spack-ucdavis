{% extends "modules/modulefile.lua" %}

{% block footer %}

local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   {% block postload %}
   {% endblock postload %}
end

if (mode() == "unload") then
   {% block postunload %}
   {% endblock postunload %}
end
{% endblock footer %}
