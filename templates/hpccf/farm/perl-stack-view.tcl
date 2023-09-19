{% extends "modules/modulefile.tcl" %}
{% block environment %}

setenv PERL_VIEW_HOME /share/apps/22.04/spack/environments/perl-stack/views/{{ spec.version }}
setenv PERL_ROOT $env(PERL_VIEW_HOME)/bin

prepend-path PERL5LIB $env(PERL_VIEW_HOME)/lib
prepend-path PERL5LIB $env(PERL_VIEW_HOME)/lib/perl5

# Set environment so well behaved Perl modules can be user installed.
# From: perl -Mlocal::lib

setenv PERL_LOCAL_LIB_ROOT /home/$env(LOGNAME)/perl5

prepend-path PATH          $env(PERL_LOCAL_LIB_ROOT)/bin
prepend-path PERL5LIB      $env(PERL_LOCAL_LIB_ROOT)/lib/perl5
setenv       PERL_MM_OPT   INSTALL_BASE=$env(PERL_LOCAL_LIB_ROOT)
setenv       PERL_MB_OPT   "--install_base $env(PERL_LOCAL_LIB_ROOT)"

prepend-path PATH    $env(PERL_VIEW_HOME)/bin
prepend-path MANPATH $env(PERL_VIEW_HOME)/man
prepend-path CMAKE_PREFIX_PATH $env(PERL_VIEW_HOME)/.

{% endblock %}
