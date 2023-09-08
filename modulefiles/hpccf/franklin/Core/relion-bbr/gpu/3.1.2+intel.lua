-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-09-08 12:34:38.863310
--
-- relion-bbr@3.1.2%gcc@9.5.0+allow_ctf_in_sagd+cuda+double~double-gpu~external_motioncor2+gui~ipo+mklfft build_system=cmake build_type=RelWithDebInfo cuda_arch=75 patches=c1b74ee purpose=cluster arch=linux-ubuntu22.04-x86_64_v3/cbad6na
--

whatis([[Name : relion-bbr]])
whatis([[Version : 3.1.2]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : A modified version of Relion supporting block-based-reconstruction as described in 10.1038/s41467-018-04051-9.]])
whatis([[Configure options : -DCMAKE_C_FLAGS=-g -DCMAKE_CXX_FLAGS=-g -DGUI=True -DDoublePrec_CPU=True -DDoublePrec_GPU=False -DALLOW_CTF_IN_SAGD=True -DMKLFFT=True -DALTCPU=False -DCUDA=ON -DCudaTexture=ON -DCUDA_ARCH=75]])

help([[A modified version of Relion supporting block-based-reconstruction as
described in 10.1038/s41467-018-04051-9.]])


depends_on("ctffind/4.1.14+intel")
depends_on("intel-oneapi-mkl/2022.2.1")

prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/relion-bbr-3.1.2-cbad6nancq76aymcbqkpczv2wodd7znx/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/relion-bbr-3.1.2-cbad6nancq76aymcbqkpczv2wodd7znx/./", ":")
prepend_path("XLOCALEDIR", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/libx11-1.7.0-hbjdyk7tsewaqj7p6zkuaktdslrrl2lq/share/X11/locale", ":")
setenv("RELION_BBR_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/relion-bbr-3.1.2-cbad6nancq76aymcbqkpczv2wodd7znx")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
