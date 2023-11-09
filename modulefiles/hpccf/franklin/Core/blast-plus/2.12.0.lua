-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-08-28 11:34:17.361673
--
-- blast-plus@2.12.0%gcc@9.5.0+bzip2+freetype+gnutls+jpeg+lzo+openssl+pcre+perl+png+python~static+zlib build_system=autotools arch=linux-ubuntu22.04-x86_64_v3/27hs6fe
--

whatis([[Name : blast-plus]])
whatis([[Version : 2.12.0]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Basic Local Alignment Search Tool.]])
whatis([[Configure options : --with-bin-release --without-debug --with-mt --without-boost --with-64 --with-dll --without-static --without-static-exe --with-jpeg=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/libjpeg-turbo-2.1.3-75cncfdlp6wqnthfaqker56jkvb42le5 --with-png=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/libpng-1.6.37-ncnpwm44rmfsd6lsld774qvaa5feddev --with-freetype=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/freetype-2.11.1-tjqkqcbo5pczn5rfrbyoi2mgve26gypk --without-hdf5 --with-z=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/zlib-1.2.13-jhjncirksfm27mp7aty6dktgbh2nklve --with-bz2=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/bzip2-1.0.8-iykeckbs6fv3ar23ykrhsctxivbnlmjp --with-lzo=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/lzo-2.10-xeuotm5tptr6q7ghh6i6uhemreuxnsgq --with-gnutls=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/gnutls-3.7.8-d3zj5d7ewnchmcryf6dkpkr3pmdrghh7 --with-openssl=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/openssl-1.1.0l-phit6nuomidi35dbqflyoyb2anvqshsl --with-pcre=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/pcre-8.45-dtdhhe3zajztisbophk2sluyqenxycvr --with-python=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/python-3.9.15-rrljdtdxmzyer4vt66h44erpm6cjefwb --with-perl=/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/perl-5.36.0-td2gdmeiklmtns44wbfq7gdlx43pgiza]])

help([[Basic Local Alignment Search Tool.]])



prepend_path("LD_LIBRARY_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/blast-plus-2.12.0-27hs6fen67knhfqodwkca2gxyeth3ttb/lib", ":")
prepend_path("CPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/blast-plus-2.12.0-27hs6fen67knhfqodwkca2gxyeth3ttb/include", ":")
prepend_path("C_INCLUDE_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/blast-plus-2.12.0-27hs6fen67knhfqodwkca2gxyeth3ttb/include", ":")
prepend_path("CPLUS_INCLUDE_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/blast-plus-2.12.0-27hs6fen67knhfqodwkca2gxyeth3ttb/include", ":")
prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/blast-plus-2.12.0-27hs6fen67knhfqodwkca2gxyeth3ttb/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/blast-plus-2.12.0-27hs6fen67knhfqodwkca2gxyeth3ttb/./", ":")
setenv("BLAST_PLUS_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/blast-plus-2.12.0-27hs6fen67knhfqodwkca2gxyeth3ttb")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
