# Copyright 2013-2021 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

# ----------------------------------------------------------------------------
# If you submit this package back to Spack as a pull request,
# please first remove this boilerplate and all FIXME comments.
#
# This is a template package file for Spack.  We've put "FIXME"
# next to all the things you'll want to change. Once you've handled
# them, you can save this file and test your package like this:
#
#     spack install r-maxnet
#
# You can edit this file again by typing:
#
#     spack edit r-maxnet
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class RMaxnet(RPackage):
    
    """Procedures to fit species distributions models from occurrence
    records and environmental variables, using 'glmnet' for model
    fitting. Model structure is the same as for the 'Maxent' Java
    package, version 3.4.0, with the same feature types and
    regularization options. See the 'Maxent' website
    <http://biodiversityinformatics.amnh.org/open_source/maxent> for
    more details."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://cran.r-project.org/web/packages/maxnet/index.html"
    cran     = "maxnet"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ['github_user1', 'github_user2']

    version('0.1.4', sha256='fd21e5ecf3c1ac00ef1bbe79fab4cdd62789e0c4c45f126f1b64bda667238216')

    # FIXME: Add dependencies if required.
    # depends_on('r-foo', type=('build', 'run'))
    depends_on('r-glmnet', type=('build', 'run'))    

    def configure_args(self):
        # FIXME: Add arguments to pass to install via --configure-args
        # FIXME: If not needed delete this function
        args = []
        return args
