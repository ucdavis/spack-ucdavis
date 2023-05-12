-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-05-12 12:27:47.031219
--
-- relion@4.0.1%gcc@11.3.0+allow_ctf_in_sagd+altcpu~cuda+double~double-gpu~external_motioncor2+gui~ipo~mklfft build_system=cmake build_type=RelWithDebInfo purpose=cluster arch=linux-ubuntu22.04-zen2/jijuv6l
--

whatis([[Name : relion]])
whatis([[Version : 4.0.1]])
whatis([[Target : zen2]])
whatis([[Short description : RELION (for REgularised LIkelihood OptimisatioN, pronounce rely-on) is a stand-alone computer program that employs an empirical Bayesian approach to refinement of (multiple) 3D reconstructions or 2D class averages in electron cryo-microscopy (cryo-EM).]])
whatis([[Configure options : -DCMAKE_C_FLAGS=-g -DCMAKE_CXX_FLAGS=-g -DGUI=True -DDoublePrec_CPU=True -DDoublePrec_GPU=False -DALLOW_CTF_IN_SAGD=True -DMKLFFT=False -DALTCPU=True -DAMDFFTW=ON -DFORCE_OWN_TBB=OFF -DTBB_INCLUDE_DIR:STRING=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-zen2/gcc-11.3.0/intel-oneapi-tbb-2021.7.1-6limkfnx54k7ouuwr6arb66pwichcwwc/tbb/2021.7.1/include -DTBB_LIBRARY:STRING=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-zen2/gcc-11.3.0/intel-oneapi-tbb-2021.7.1-6limkfnx54k7ouuwr6arb66pwichcwwc/tbb/2021.7.1/lib/intel64/gcc4.8]])

help([[RELION (for REgularised LIkelihood OptimisatioN, pronounce rely-on) is a
stand-alone computer program that employs an empirical Bayesian approach
to refinement of (multiple) 3D reconstructions or 2D class averages in
electron cryo-microscopy (cryo-EM).]])


depends_on("ctffind/4.1.14+amd")

prepend_path("LD_LIBRARY_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-zen2/gcc-11.3.0/relion-4.0.1-jijuv6lkd3dq32depwroszvprk5uye5d/lib", ":")
prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-zen2/gcc-11.3.0/relion-4.0.1-jijuv6lkd3dq32depwroszvprk5uye5d/./bin", ":")
prepend_path("PKG_CONFIG_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-zen2/gcc-11.3.0/relion-4.0.1-jijuv6lkd3dq32depwroszvprk5uye5d/./lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-zen2/gcc-11.3.0/relion-4.0.1-jijuv6lkd3dq32depwroszvprk5uye5d/./", ":")
prepend_path("XLOCALEDIR", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/libx11-1.7.0-37huyicewgwa4it26lyc7hrklw2g6q6o/share/X11/locale", ":")
setenv("RELION_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-zen2/gcc-11.3.0/relion-4.0.1-jijuv6lkd3dq32depwroszvprk5uye5d")
setenv("RELION_QSUB_TEMPLATE", "/share/apps/spack/templates/hpccf/franklin/relion.4.0.1.cpu.slurm.template.sh")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end


depends_on("motioncor2")
depends_on("gctf/1.06")
depends_on("ghostscript")

setenv("RELION_MOTIONCOR2_EXECUTABLE", pathJoin(os.getenv("MOTIONCOR2_ROOT"), "bin/MotionCor2"))
setenv("RELION_CTFFIND_EXECUTABLE", pathJoin(os.getenv("CTFFIND_ROOT"), "bin/ctffind"))
setenv("RELION_GCTF_EXECUTABLE", pathJoin(os.getenv("GCTF_ROOT"), "bin/Gctf-v1.06_sm_30_cu8.0_x86_64"))

setenv("RELION_QSUB_EXTRA_COUNT", "3")

setenv("RELION_QSUB_EXTRA1", "Email:")
setenv("RELION_QSUB_EXTRA1_DEFAULT", user_email)
setenv("RELION_QSUB_EXTRA1_HELP", "The email address to use for slurm notifications.")

setenv("RELION_QSUB_EXTRA2", "Memory per CPU (MB):")
setenv("RELION_QSUB_EXTRA2_DEFAULT", "10000")
setenv("RELION_QSUB_EXTRA2_HELP", "Memory used per CPU thread, in MiB. Total memory can be calculated as (number of MPI tasks) * (memory per CPU).")

setenv("RELION_QSUB_EXTRA3", "Job Time:")
setenv("RELION_QSUB_EXTRA3_DEFAULT", "12:00:00")
setenv("RELION_QSUB_EXTRA3_HELP", "SLURM job time limit in format HH:MM:SS or DAYS-HH:MM:SS.")


setenv("RELION_QUEUE_USE", "yes")
setenv("RELION_QSUB_COMMAND", "sbatch")
setenv("RELION_SHELL", "bash")
setenv("RELION_SCRATCH_DIR", "/tmp/")
setenv("RELION_QUEUE_NAME", "low")

