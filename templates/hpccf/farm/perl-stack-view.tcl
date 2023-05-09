{% extends "modules/modulefile.tcl" %}
{% block environment %}

setenv PERL_VIEW_HOME /share/apps/22.04/spack/environments/perl-stack/views/{{ spec.version }}
setenv PERL_ROOT $env(PERL_VIEW_HOME)/bin

prepend-path PERL5LIB $env(PERL_VIEW_HOME)/lib
prepend-path PERL5LIB $env(PERL_VIEW_HOME)/lib/perl5

prepend-path PATH    $env(PERL_VIEW_HOME)/bin
prepend-path MANPATH $env(PERL_VIEW_HOME)/man
prepend-path CMAKE_PREFIX_PATH $env(PERL_VIEW_HOME)/.

if [module-info mode load] {
   puts stderr "Loaded Perl version {{ spec.version }} and libraries."
}
{% endblock %}
