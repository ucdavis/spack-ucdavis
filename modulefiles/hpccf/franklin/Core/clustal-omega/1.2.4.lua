-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-19 15:02:43.475889
--
-- clustal-omega@1.2.4%gcc@11.3.0 build_system=autotools arch=linux-ubuntu22.04-x86_64_v3/4rrfln3
--

whatis([[Name : clustal-omega]])
whatis([[Version : 1.2.4]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Clustal Omega: the last alignment program you'll ever need.]])

help([[Clustal Omega: the last alignment program you'll ever need.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/clustal-omega-1.2.4-4rrfln3ipf3k4d62ql2mp7t4pay4cng4/./bin", ":")
prepend_path("PKG_CONFIG_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/clustal-omega-1.2.4-4rrfln3ipf3k4d62ql2mp7t4pay4cng4/./lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/clustal-omega-1.2.4-4rrfln3ipf3k4d62ql2mp7t4pay4cng4/./", ":")
setenv("CLUSTAL_OMEGA_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/clustal-omega-1.2.4-4rrfln3ipf3k4d62ql2mp7t4pay4cng4")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
