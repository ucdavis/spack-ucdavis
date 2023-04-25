{% extends "hpccf/default.tcl" %}
{% block footer %}
{{ super() }}
setenv SQUEUE_FORMAT "%.20i %.9P %.8j %.8u %.8a %.2t %.11M %.11L %.5D %3C %6m %R"
{% endblock %}
