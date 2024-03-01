# See spack-ucdavis/LICENSE.

import glob
from spack.package import *


class Gctf(Package):
    """a GPU accelerated program for Real-Time CTF determination, 
    refinement, evaluation and correction."""

    homepage = "https://zhanglab.yale.edu/programs"

    version("1.06", sha256="bfb6305f36571f895402bb22a2e8c6c5c4f13e28d3354ff8fe101ec25b351d77",
            url="https://yale.app.box.com/shared/static/t5xp7nkkpx71iarqudl46j7id5tri9n0",
            extension='tar.gz')

    depends_on("cuda@:8", type=("build", "link"))
    depends_on("patchelf", type="build")

    def install(self, spec, prefix):
        # Gctf comes as an archive of precompiled binaries. These binaries
        # are linked against specific cuda versions indicated in their file names.
        # We'll select only those matching our cuda version, and then patch in an
        # rpath to the appropriate cuda library prefix; usually this is done by
        # the compiler wrappers.
        cuda_version = str(self.spec["cuda"].version)[:3]
        cuda_rpath = self.spec["cuda"].prefix.lib64
        binaries = glob.glob(join_path("bin", "Gctf-*cu{0}*".format(cuda_version)))
        patchelf = which("patchelf")
        mkdirp(prefix.bin)
        for binary in binaries:
            patchelf("--set-rpath", cuda_rpath, binary)
            install(binary, prefix.bin)

