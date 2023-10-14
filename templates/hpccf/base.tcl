{% extends "modules/modulefile.tcl" %}
{% block footer %}

try {
    set user_email [exec -ignorestderr /usr/bin/grep --color=never -Po "^$env(USER):.*\<\\K.*?(?=\>)" /etc/passwd]
} on error {e} {
    set user_email ""
}
setenv USER_EMAIL $user_email

if [module-info mode load] {
   {% block postload %}
   {% endblock postload %}
}

if [module-info mode unload] {
   {% block postunload %}
   {% endblock postunload %}
}

{% endblock footer %}
