-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-07-19 18:15:50.549332
--
-- py-relion-helper@0.3%gcc@11.3.0 build_system=python_pip arch=linux-ubuntu22.04-x86_64_v3/cicpzca
--

whatis([[Name : py-relion-helper]])
whatis([[Version : 0.3]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Utilities for Relion Cryo-EM data processing on clusters. ]])

help([[Utilities for Relion Cryo-EM data processing on clusters.]])



prepend_path("LD_LIBRARY_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/py-relion-helper-0.3-cicpzcajkqukliz64hdym5o5m3e3ove3/lib", ":")
prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/py-relion-helper-0.3-cicpzcajkqukliz64hdym5o5m3e3ove3/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/py-relion-helper-0.3-cicpzcajkqukliz64hdym5o5m3e3ove3/./", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/py-relion-helper-0.3-cicpzcajkqukliz64hdym5o5m3e3ove3/lib/python3.10/site-packages", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/py-rich-12.5.1-6klb6wpnnc4x4vnhqh7ndmkvjmj3ncgt/lib/python3.10/site-packages", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/py-commonmark-0.9.1-q43sonokttx5v2y624qygkkjypqdt5sn/lib/python3.10/site-packages", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/py-pygments-2.13.0-tatmokbzgy37ffgubvw4rqwjchdxomox/lib/python3.10/site-packages", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/py-setuptools-59.4.0-pg3n2tq4m3walk6iuqr7tip5uyr6lu6l/lib/python3.10/site-packages", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/py-starfile-0.4.12-qrfl77ek3urvymnc273wrhcncu3arhta/lib/python3.10/site-packages", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/py-pandas-1.5.1-4lj6qy6jetaceb6ec7vvmk2zarwss42s/lib/python3.10/site-packages", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/py-bottleneck-1.3.5-hlgy4rgphaj6j6cndmhhp2tkwzre3btt/lib/python3.10/site-packages", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/py-numpy-1.23.4-ecq5abouzerxlnazyq3jc7olzux44rdv/lib/python3.10/site-packages", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/py-numexpr-2.8.3-35exv4lxvyfrlu4jxuizijv57p3ysebp/lib/python3.10/site-packages", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/py-packaging-21.3-7rx6irkjrnm5obnr2iqwis5twxkqvwyh/lib/python3.10/site-packages", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/py-pyparsing-3.0.9-4rmyqqqwkkrowzx3brimzgmelhyj75fz/lib/python3.10/site-packages", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/py-python-dateutil-2.8.2-jmai5w4npatrgbbmyn22vhxut7s22cst/lib/python3.10/site-packages", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/py-six-1.16.0-tb6jt4canmje7ppunzkg5qe5flvlcmvr/lib/python3.10/site-packages", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/py-pytz-2022.2.1-u2lriknvhe2uwhqyl2z3a2kgo6hyucse/lib/python3.10/site-packages", ":")
setenv("PY_RELION_HELPER_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/py-relion-helper-0.3-cicpzcajkqukliz64hdym5o5m3e3ove3")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
