-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-03-02 16:30:05.321505
--
-- libevent@2.1.12%gcc@11.3.0+openssl build_system=autotools arch=linux-ubuntu22.04-x86_64_v3/7d5va7m
--

whatis([[Name : libevent]])
whatis([[Version : 2.1.12]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : The libevent API provides a mechanism to execute a callback function when a specific event occurs on a file descriptor or after a timeout has been reached. Furthermore, libevent also support callbacks due to signals or regular timeouts.]])
whatis([[Configure options : --enable-openssl]])

help([[The libevent API provides a mechanism to execute a callback function
when a specific event occurs on a file descriptor or after a timeout has
been reached. Furthermore, libevent also support callbacks due to
signals or regular timeouts.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/libevent-2.1.12-7d5va7mlpbbhekswhmbmslxgvvxm7c5i/./bin", ":")
prepend_path("PKG_CONFIG_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/libevent-2.1.12-7d5va7mlpbbhekswhmbmslxgvvxm7c5i/./lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/libevent-2.1.12-7d5va7mlpbbhekswhmbmslxgvvxm7c5i/./", ":")
setenv("LIBEVENT_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/libevent-2.1.12-7d5va7mlpbbhekswhmbmslxgvvxm7c5i")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
