-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-01-19 15:02:50.109033
--
-- sabre@2013-09-27%gcc@9.5.0 build_system=makefile arch=linux-ubuntu22.04-x86_64_v3/v7wzc2e
--

whatis([[Name : sabre]])
whatis([[Version : 2013-09-27]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Sabre is a tool that will demultiplex barcoded reads into separate files. It will work on both single-end and paired-end data in fastq format. It simply compares the provided barcodes with each read and separates the read into its appropriate barcode file, after stripping the barcode from the read (and also stripping the quality values of the barcode bases). If a read does not have a recognized barcode, then it is put into the unknown file. ]])

help([[Sabre is a tool that will demultiplex barcoded reads into separate
files. It will work on both single-end and paired-end data in fastq
format. It simply compares the provided barcodes with each read and
separates the read into its appropriate barcode file, after stripping
the barcode from the read (and also stripping the quality values of the
barcode bases). If a read does not have a recognized barcode, then it is
put into the unknown file.]])



prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/sabre-2013-09-27-v7wzc2ep62r7tbtzm32xvdsukf5kenow/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/sabre-2013-09-27-v7wzc2ep62r7tbtzm32xvdsukf5kenow/./", ":")
setenv("SABRE_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/sabre-2013-09-27-v7wzc2ep62r7tbtzm32xvdsukf5kenow")


local user_email = subprocess([[grep -i "$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", " ")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
