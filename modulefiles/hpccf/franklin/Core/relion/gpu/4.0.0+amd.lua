-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-25 13:33:55.077719
--
-- relion@4.0.0%gcc@11.3.0+allow_ctf_in_sagd+cuda+double~double-gpu~external_motioncor2+gui~ipo~mklfft build_system=cmake build_type=RelWithDebInfo cuda_arch=75 purpose=cluster arch=linux-ubuntu22.04-zen2/n3s6tjh
--

whatis([[Name : relion]])
whatis([[Version : 4.0.0]])
whatis([[Target : zen2]])
whatis([[Short description : RELION (for REgularised LIkelihood OptimisatioN, pronounce rely-on) is a stand-alone computer program that employs an empirical Bayesian approach to refinement of (multiple) 3D reconstructions or 2D class averages in electron cryo-microscopy (cryo-EM).]])
whatis([[Configure options : -DCMAKE_C_FLAGS=-g -DCMAKE_CXX_FLAGS=-g -DGUI=True -DDoublePrec_CPU=True -DDoublePrec_GPU=False -DALLOW_CTF_IN_SAGD=True -DMKLFFT=False -DALTCPU=False -DCUDA=ON -DCudaTexture=ON -DCUDA_ARCH=75 -DTHRUST_IGNORE_CUB_VERSION_CHECK=1 -DAMDFFTW=ON]])

help([[RELION (for REgularised LIkelihood OptimisatioN, pronounce rely-on) is a
stand-alone computer program that employs an empirical Bayesian approach
to refinement of (multiple) 3D reconstructions or 2D class averages in
electron cryo-microscopy (cryo-EM).]])


depends_on("amdfftw/3.2+amd")
depends_on("ctffind/4.1.14+amd")
depends_on("cuda/11.8.0")
depends_on("openmpi/4.1.4")

prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-zen2/gcc-11.3.0/relion-4.0.0-n3s6tjh66xouhfrpncfvtsvswxekswrs/./bin", ":")
prepend_path("PKG_CONFIG_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-zen2/gcc-11.3.0/relion-4.0.0-n3s6tjh66xouhfrpncfvtsvswxekswrs/./lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-zen2/gcc-11.3.0/relion-4.0.0-n3s6tjh66xouhfrpncfvtsvswxekswrs/./", ":")
prepend_path("XLOCALEDIR", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/libx11-1.7.0-37huyicewgwa4it26lyc7hrklw2g6q6o/share/X11/locale", ":")
prepend_path("XDG_DATA_DIRS", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/gobject-introspection-1.72.0-nuughpbhubfucho3khmlqeuqafr3egqr/share", ":")
prepend_path("GI_TYPELIB_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/gobject-introspection-1.72.0-nuughpbhubfucho3khmlqeuqafr3egqr/lib/girepository-1.0", ":")
prepend_path("XDG_DATA_DIRS", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/atk-2.36.0-4lb2c45jallxu4dz4sk3igk2b4a3dha7/share", ":")
prepend_path("GI_TYPELIB_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/atk-2.36.0-4lb2c45jallxu4dz4sk3igk2b4a3dha7/lib/girepository-1.0", ":")
prepend_path("XDG_DATA_DIRS", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/shared-mime-info-1.9-r7svlvsqtjm653bt24omr2yob56zanqi/share", ":")
prepend_path("XDG_DATA_DIRS", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/gdk-pixbuf-2.42.2-g7rsxjgws4oigp65bdyl53gnbgror7bb/share", ":")
prepend_path("GI_TYPELIB_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/gdk-pixbuf-2.42.2-g7rsxjgws4oigp65bdyl53gnbgror7bb/lib/girepository-1.0", ":")
prepend_path("XDG_DATA_DIRS", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/harfbuzz-5.1.0-b7kmkkp3wdnhilrjpwpzgstgaeuqzvbl/share", ":")
prepend_path("GI_TYPELIB_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/harfbuzz-5.1.0-b7kmkkp3wdnhilrjpwpzgstgaeuqzvbl/lib/girepository-1.0", ":")
prepend_path("XDG_DATA_DIRS", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/pango-1.50.7-o4cw42bgzpgxb6po773m47fglqvrnwog/share", ":")
prepend_path("GI_TYPELIB_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/pango-1.50.7-o4cw42bgzpgxb6po773m47fglqvrnwog/lib/girepository-1.0", ":")
prepend_path("XDG_DATA_DIRS", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/librsvg-2.51.0-ujnb3s6led7g2cst64xrkm6zfcmdtuft/share", ":")
prepend_path("XDG_DATA_DIRS", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/gtkplus-2.24.32-ae4d4jo2kknxxlg7lfpa457ugneocfgh/share", ":")
prepend_path("GI_TYPELIB_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/gtkplus-2.24.32-ae4d4jo2kknxxlg7lfpa457ugneocfgh/lib/girepository-1.0", ":")
setenv("RELION_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-zen2/gcc-11.3.0/relion-4.0.0-n3s6tjh66xouhfrpncfvtsvswxekswrs")
setenv("RELION_QSUB_TEMPLATE", "/share/apps/spack/templates/hpccf/franklin/relion.4.0.0.gpu.zen2.slurm.template.sh")


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

setenv("RELION_QSUB_EXTRA_COUNT", "4")

setenv("RELION_QSUB_EXTRA1", "Email:")
setenv("RELION_QSUB_EXTRA1_DEFAULT", user_email)
setenv("RELION_QSUB_EXTRA1_HELP", "The email address to use for slurm notifications.")

setenv("RELION_QSUB_EXTRA2", "GPU resources")
setenv("RELION_QSUB_EXTRA2_DEFAULT", "2")
setenv("RELION_QSUB_EXTRA2_HELP", [[Number (and optionally type) of GPUs to request for this job. If only an integer is supplied, will request any GPU. If TYPE:NUM is supplied (example: a4000:4), specific models of GPU will be requested. Note that specific combinations of GPU type and job queue may fail; that is, if you select "high" as your queue and "a4000:4" as your GPU resources, but your account does not have access to the A4000 nodes' high queue, the job will fail to submit. You can view avaiable GPU resource types by running `sinfo -o "%20N %10c %10m %30G"`.]])

setenv("RELION_QSUB_EXTRA3", "Memory per CPU (MB):")
setenv("RELION_QSUB_EXTRA3_DEFAULT", "10000")
setenv("RELION_QSUB_EXTRA3_HELP", "Memory used per CPU thread, in MiB. Total memory can be calculated as (number of MPI tasks) * (memory per CPU).")

setenv("RELION_QSUB_EXTRA4", "Job Time:")
setenv("RELION_QSUB_EXTRA4_DEFAULT", "12:00:00")
setenv("RELION_QSUB_EXTRA4_HELP", "SLURM job time limit in format HH:MM:SS or DAYS-HH:MM:SS.")


setenv("RELION_QUEUE_USE", "yes")
setenv("RELION_QSUB_COMMAND", "sbatch")
setenv("RELION_SHELL", "bash")
setenv("RELION_SCRATCH_DIR", "/tmp/")
setenv("RELION_QUEUE_NAME", "low")
