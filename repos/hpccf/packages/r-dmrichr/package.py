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
#     spack install r-dmrichr
#
# You can edit this file again by typing:
#
#     spack edit r-dmrichr
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class RDmrichr(RPackage):
    """ A R package and executable for the preprocessing, statistical analysis, and downstream testing and visualization of differentially methylated regions (DMRs) from CpG count matrices (Bismark cytosine reports)."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://github.com/ben-laufer/DMRichR"
    url      = "https://github.com/ben-laufer/DMRichR/archive/refs/tags/v1.7.1.tar.gz"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ['github_user1', 'github_user2']

    version('1.7.1', sha256='dde09ad5623ab10ca72e646804cbafc4024c53dc4dc5f2d9caa824279fa3151e')

    # FIXME: Add dependencies if required.
    # depends_on('r-foo', type=('build', 'run'))
    depends_on('r@4.1.1:', type=('build', 'run'))
    depends_on('r-biocmanager@1.30.10:', type=('build', 'run'))
    depends_on('r-bsseq', type=('build', 'run'))
    depends_on('r-biocgenerics', type=('build', 'run'))
    depends_on('r-boruta', type=('build', 'run'))
    depends_on('r-gofuncr', type=('build', 'run'))
    depends_on('r-genomeinfodb', type=('build', 'run'))
    depends_on('r-genomicranges', type=('build', 'run'))
    depends_on('r-broom', type=('build', 'run'))
    depends_on('r-ggplot2', type=('build', 'run'))
    depends_on('r-gplots', type=('build', 'run'))
    depends_on('r-openxlsx', type=('build', 'run'))
    depends_on('r-rtracklayer', type=('build', 'run'))
    depends_on('r-rcolorbrewer', type=('build', 'run'))
    depends_on('r-glue', type=('build', 'run'))
    depends_on('r-pheatmap', type=('build', 'run'))
    depends_on('r-annotationhub', type=('build', 'run'))
    depends_on('r-viridis', type=('build', 'run'))
    depends_on('r-ggsci', type=('build', 'run'))
    depends_on('r-minfi', type=('build', 'run'))
    depends_on('r-hmisc', type=('build', 'run'))
    depends_on('r-biocparallel', type=('build', 'run'))
    depends_on('r-dplyr', type=('build', 'run'))
    depends_on('r-forcats', type=('build', 'run'))
    depends_on('r-stringr', type=('build', 'run'))
    depends_on('r-tidyr', type=('build', 'run'))
    depends_on('r-purrr', type=('build', 'run'))
    depends_on('r-tibble', type=('build', 'run'))
    depends_on('r-readxl', type=('build', 'run'))
    depends_on('r-readr', type=('build', 'run'))
    depends_on('r-ensembldb', type=('build', 'run'))
    depends_on('r-glimma', type=('build', 'run'))
    depends_on('r-magrittr', type=('build', 'run'))
    depends_on('r-rlang', type=('build', 'run'))
    depends_on('r-genomicfeatures', type=('build', 'run'))
    depends_on('r-delayedmatrixstats', type=('build', 'run'))
    depends_on('r-iranges', type=('build', 'run'))
    depends_on('r-tidyselect', type=('build', 'run'))
    depends_on('r-biobase', type=('build', 'run'))
    depends_on('r-s4vectors', type=('build', 'run'))
    depends_on('r-bumphunter', type=('build', 'run'))
    depends_on('r-genefilter', type=('build', 'run'))

    def configure_args(self):
        # FIXME: Add arguments to pass to install via --configure-args
        # FIXME: If not needed delete this function
        args = []
        return args
