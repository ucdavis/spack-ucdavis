{% extends "modules/modulefile.tcl" %}
{% block footer %}

setenv R_VIEW_HOME /share/apps/spackuser/environments/r-stack/views/{{ spec.version }}
setenv R_HOME $env(R_VIEW_HOME)/rlib/R/
setenv R_ROOT $env(R_VIEW_HOME)

prepend-path PATH $env(R_VIEW_HOME)/bin
prepend-path LD_LIBRARY_PATH $env(R_VIEW_HOME)/rlib/R/lib
prepend-path PKG_CONFIG_PATH $env(R_VIEW_HOME)/rlib/pkgconfig
prepend-path CMAKE_PREFIX_PATH $env(R_VIEW_HOME)

prepend-path R_LIBS_SITE $env(R_VIEW_HOME)/rlib/R/library
prepend-path R_LIBS_SITE /share/apps/spackuser/Rlibs/{{ spec.version }}

set RMajorVersion [ string range {{ spec.version }} 0 end-2 ]

prepend-path R_LIBS_USER $env(HOME)/R/%p-library/%v
file mkdir $env(HOME)/R/x86_64-pc-linux-gnu-library/$RMajorVersion

if [module-info mode load] {
   puts stderr "Loaded R version {{ spec.version }} and libraries."
}
{% endblock %}
