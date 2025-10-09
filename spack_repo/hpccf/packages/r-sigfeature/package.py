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
#     spack install r-sigfeature
#
# You can edit this file again by typing:
#
#     spack edit r-sigfeature
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class RSigfeature(RPackage):
    """This package provides a novel feature selection algorithm for binary classification using support vector machine recursive feature elimination SVM-RFE and t-statistic. In this feature selection process, the selected features are differentially significant between the two classes and also they are good classifier with higher degree of classification accuracy."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://www.bioconductor.org/packages/release/bioc/html/sigFeature.html"
    url = "https://www.bioconductor.org/packages/release/bioc/src/contrib/sigFeature_1.16.0.tar.gz"
    bioc = "sigFeature"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    version("1.16.0", sha256="d795ce8179067598a693b13e80c8b67bd4c0d6c2710d06244b85539119896e47")

    depends_on("r-biocviews", type=("build", "run"))
    depends_on("r-nlme", type=("build", "run"))
    depends_on("r-e1071", type=("build", "run"))
    depends_on("r-openxlsx", type=("build", "run"))
    depends_on("r-pheatmap", type=("build", "run"))
    depends_on("r-rcolorbrewer", type=("build", "run"))
    depends_on("r-matrix", type=("build", "run"))
    depends_on("r-sparsem", type=("build", "run"))
    depends_on("r-summarizedexperiment", type=("build", "run"))
    depends_on("r-biocparallel", type=("build", "run"))
