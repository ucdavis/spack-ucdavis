{% extends "hpccf/default.lua" %}
{% block footer %}
{{ super() }}

setenv("R_VIEW_HOME", "/share/apps/spack/environments/r-stack/views/{{ spec.version }}")
setenv("R_HOME", pathJoin(os.getenv("R_VIEW_HOME"), "rlib/R/"))
setenv("R_ROOT", pathJoin(os.getenv("R_VIEW_HOME")))

prepend_path("PATH", pathJoin(os.getenv("R_VIEW_HOME"), "bin"))
prepend_path("LD_LIBRARY_PATH", pathJoin(os.getenv("R_VIEW_HOME"), "rlib/R/lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(os.getenv("R_VIEW_HOME"), "rlib/pkgconfig"))
prepend_path("CMAKE_PREFIX_PATH", os.getenv("R_VIEW_HOME"))

prepend_path("R_LIBS", pathJoin(os.getenv("R_VIEW_HOME"), "rlib/R/library"))
prepend_path("R_LIBS", "/share/apps/spack/Rlibs/{{ spec.version }}")

{% endblock %}
