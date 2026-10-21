-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-18 10:54:06.203033
--
-- mash@2.3%gcc@9.5.0 build_system=autotools arch=linux-ubuntu22.04-x86_64_v3/zdeesqy
--

whatis([[Name : mash]])
whatis([[Version : 2.3]])
whatis([[Target : x86_64_v3]])
whatis([[Short description :  Fast genome and metagenome distance estimation using MinHash. ]])
whatis([[Configure options : --with-capnp=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/capnproto-0.8.0-s6nwcld4khdjpi6ribv7olmip4jrfea5 --with-gsl=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/gsl-2.7.1-gf5ae2cceyrvyp6ohrp533vpeugzi5v5]])

help([[ Fast genome and metagenome distance estimation using MinHash.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/mash-2.3-zdeesqyeu75pj7xpmvhg6nbbjwl5zcrq/./bin", ":")
prepend_path("MANPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/mash-2.3-zdeesqyeu75pj7xpmvhg6nbbjwl5zcrq/./share/man", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/mash-2.3-zdeesqyeu75pj7xpmvhg6nbbjwl5zcrq/./", ":")
setenv("MASH_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/mash-2.3-zdeesqyeu75pj7xpmvhg6nbbjwl5zcrq")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
