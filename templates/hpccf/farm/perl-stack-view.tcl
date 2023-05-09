{% extends "modules/modulefile.tcl" %}
{% block environment %}

setenv PERL_VIEW_HOME /share/apps/22.04/spack/environments/perl-stack/views/{{ spec.version }}
setenv PERL_ROOT $env(PERL_VIEW_HOME)/bin

prepend-path PERL5LIB $env(PERL_VIEW_HOME)/lib
prepend-path PERL5LIB $env(PERL_VIEW_HOME)/lib/perl5

# Set environment so well behaved Perl modules can be user installed.
setenv PERL_MM_OPT INSTALL_BASE=/home/$env(LOGNAME)/perl5
prepend-path PERL5LIB /home/$env(LOGNAME)/perl5/lib/perl5
prepend-path PATH     /home/$env(LOGNAME)/perl5/bin
prepend-path MANPATH  /home/$env(LOGNAME)/perl5/man

prepend-path PATH    $env(PERL_VIEW_HOME)/bin
prepend-path MANPATH $env(PERL_VIEW_HOME)/man
prepend-path CMAKE_PREFIX_PATH $env(PERL_VIEW_HOME)/.

if [module-info mode load] {
   puts stderr "Loaded Perl version {{ spec.version }} and libraries."
}
{% endblock %}
