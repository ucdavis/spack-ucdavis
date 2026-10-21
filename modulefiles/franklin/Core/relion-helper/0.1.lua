-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-25 11:56:24.076560
--
-- py-relion-helper@0.1%gcc@11.3.0 build_system=python_pip arch=linux-ubuntu22.04-x86_64_v3/l23vucu
--

whatis([[Name : py-relion-helper]])
whatis([[Version : 0.1]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Utilities for Relion Cryo-EM data processing on clusters. ]])

help([[Utilities for Relion Cryo-EM data processing on clusters.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/py-relion-helper-0.1-l23vucufrldf4dski2e63c3cqgsb2gll/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/py-relion-helper-0.1-l23vucufrldf4dski2e63c3cqgsb2gll/./", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/py-relion-helper-0.1-l23vucufrldf4dski2e63c3cqgsb2gll/lib/python3.10/site-packages", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/py-rich-12.5.1-ydg7gyyskl4g2vsbbemwywnqho2wyhns/lib/python3.10/site-packages", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/py-commonmark-0.9.1-q43sonokttx5v2y624qygkkjypqdt5sn/lib/python3.10/site-packages", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/py-pygments-2.13.0-72heijsnmw35ednqt66tsulrfijosxgy/lib/python3.10/site-packages", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/py-setuptools-65.5.0-blre6zj5giygyruqu3g5htuln7lwtb7p/lib/python3.10/site-packages", ":")
setenv("PY_RELION_HELPER_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/py-relion-helper-0.1-l23vucufrldf4dski2e63c3cqgsb2gll")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
