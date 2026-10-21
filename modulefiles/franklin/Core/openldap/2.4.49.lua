-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-09-12 14:17:17.890209
--
-- openldap@2.4.49%gcc@11.3.0+client_only+dynamic~icu~perl+sasl+shared~static build_system=autotools tls=gnutls arch=linux-ubuntu22.04-x86_64_v3/uwqsms4
--

whatis([[Name : openldap]])
whatis([[Version : 2.4.49]])
whatis([[Target : x86_64_v3]])
whatis([[Short description :  OpenLDAP Software is an open source implementation of the Lightweight Directory Access Protocol. The suite includes:]])
whatis([[Configure options : CPPFLAGS=-D_GNU_SOURCE --disable-debug --disable-slapd --with-cyrus-sasl --disable-static --enable-shared --enable-dynamic]])

help([[ OpenLDAP Software is an open source implementation of the Lightweight
Directory Access Protocol. The suite includes: slapd - stand-alone LDAP
daemon (server) libraries implementing the LDAP protocol, and utilities,
tools, and sample clients.]])



prepend_path("LD_LIBRARY_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openldap-2.4.49-uwqsms4oh7ppsyr5ngjijbrnmnkvfpml/lib", ":")
prepend_path("CPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openldap-2.4.49-uwqsms4oh7ppsyr5ngjijbrnmnkvfpml/include", ":")
prepend_path("C_INCLUDE_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openldap-2.4.49-uwqsms4oh7ppsyr5ngjijbrnmnkvfpml/include", ":")
prepend_path("CPLUS_INCLUDE_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openldap-2.4.49-uwqsms4oh7ppsyr5ngjijbrnmnkvfpml/include", ":")
prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openldap-2.4.49-uwqsms4oh7ppsyr5ngjijbrnmnkvfpml/./bin", ":")
prepend_path("MANPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openldap-2.4.49-uwqsms4oh7ppsyr5ngjijbrnmnkvfpml/./share/man", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openldap-2.4.49-uwqsms4oh7ppsyr5ngjijbrnmnkvfpml/./", ":")
setenv("OPENLDAP_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-11.3.0/openldap-2.4.49-uwqsms4oh7ppsyr5ngjijbrnmnkvfpml")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
