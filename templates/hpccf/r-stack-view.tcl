{% extends "modules/modulefile.tcl" %}
{% block footer %}

setenv R_VIEW_HOME /share/apps/spackuser/environments/r-stack/views/{{ spec.version }}
setenv R_HOME $env(R_VIEW_HOME)/rlib/R/
setenv R_ROOT $env(R_VIEW_HOME)

prepend-path PATH $env(R_VIEW_HOME)/bin
prepend-path LD_LIBRARY_PATH $env(R_VIEW_HOME)/rlib/R/lib
prepend-path PKG_CONFIG_PATH $env(R_VIEW_HOME)/rlib/pkgconfig
prepend-path CMAKE_PREFIX_PATH $env(R_VIEW_HOME)
prepend-path R_LIBS $env(R_VIEW_HOME)/rlib/R/library

if [module-info mode load] {
   puts stderr "Loaded R version {{ spec.version} and libraries."
}
{% endblock %}
