# Copyright 2013-2022 Lawrence Livermore National Security, LLC and other
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
#     spack install bayenv2
#
# You can edit this file again by typing:
#
#     spack edit bayenv2
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class Bayenv2(Package):
    """Loci involved in local adaptation can potentially be identified by an unusual correlation between allele frequencies and important ecological variables, or by extreme allele frequency differences between geographic regions. However, such comparisons are complicated by differences in sample sizes and the neutral correlation of allele frequencies across populations due to shared history and gene flow. To overcome these difficulties, we have developed a Bayesian method that estimates the empirical pattern of covariance in allele frequencies between populations from a set of markers, and then uses this as a null model for a test at individual SNPs. Graham developed this method in collaboration with David Witonsky, Anna Di Rienzo and Jonathan Pritchard."""

    homepage = "https://bitbucket.org/tguenther/bayenv2_public/src/master/"
    

    version("2.0", sha256="90fbf44e8137f62d7912e07a78777c8cea66a296a84ccf581afa3a0f12968da5",
            url = "https://bitbucket.org/tguenther/bayenv2_public/get/edcea648df0f.zip")

    def install(self, spec, prefix):
        mkdir(prefix.bin)
        install('bayenv2', prefix.bin)
        install('calc_bf.sh', prefix.bin)

