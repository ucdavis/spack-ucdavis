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
#     spack install r-umap
#
# You can edit this file again by typing:
#
#     spack edit r-umap
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack.package import *


class RUmap(RPackage):
    """Uniform manifold approximation and projection is a technique for dimension reduction. The algorithm was described by McInnes and Healy (2018) in <arXiv:1802.03426>. This package provides an interface for two implementations. One is written from scratch, including components for nearest-neighbor search and for embedding. The second implementation is a wrapper for 'python' package 'umap-learn' (requires separate installation, see vignette for more details)."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "https://github.com/tkonopka/umap"
    cran = "umap"

    # FIXME: Add a list of GitHub accounts to
    # notify when the package is updated.
    # maintainers = ["github_user1", "github_user2"]

    version("0.2.9.0", sha256="551bc189e1e6856bf306e316c461095102a2d034e0cf93691d48b73b13d80289")

    depends_on("r-matrix", type=("build", "run"))
    depends_on("r-openssl", type=("build", "run"))
    depends_on("r-reticulate", type=("build", "run"))
    depends_on("r-rcpp", type=("build", "run"))
    depends_on("r-rspectra", type=("build", "run"))
