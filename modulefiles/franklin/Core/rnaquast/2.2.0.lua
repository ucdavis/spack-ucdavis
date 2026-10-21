-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2023-08-28 11:34:30.150965
--
-- rnaquast@2.2.0%gcc@9.5.0 build_system=generic arch=linux-ubuntu22.04-x86_64_v3/v7vzs2p
--

whatis([[Name : rnaquast]])
whatis([[Version : 2.2.0]])
whatis([[Target : x86_64_v3]])
whatis([[Short description : Quality assessment of de novo transcriptome assemblies from RNA-Seq data]])

help([[Quality assessment of de novo transcriptome assemblies from RNA-Seq data
rnaQUAST is a tool for evaluating RNA-Seq assemblies using reference
genome and gene database. In addition, rnaQUAST is also capable of
estimating gene database coverage by raw reads and de novo quality
assessment using third-party software.]])


depends_on("blast-plus/2.12.0")

prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/rnaquast-2.2.0-v7vzs2pvycjn5kk4wqaqgokzx2lsuicr/./bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/rnaquast-2.2.0-v7vzs2pvycjn5kk4wqaqgokzx2lsuicr/./", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/py-gffutils-0.10.1-ydlsimo5wvqckeeyel7atcpgzmhyzyxm/lib/python3.9/site-packages", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/py-argcomplete-2.0.0-4cqdja67d2a3hlgvrgrrowkix2qeappp/lib/python3.9/site-packages", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/py-argh-0.26.2-2lb5je5ztskojqbu7m6jdzpg2vkumh7f/lib/python3.9/site-packages", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/py-pyfaidx-0.5.5.2-jmbwptichk4s3atlnz6pktjam6s6eqru/lib/python3.9/site-packages", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/py-setuptools-59.4.0-ip3wvqgn3ziq6rryvl4uedzbyzzdhcqk/lib/python3.9/site-packages", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/py-six-1.16.0-35mlolo5mwpcoks67fk4ghvhjd3jqlxo/lib/python3.9/site-packages", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/py-simplejson-3.17.2-cqm5jmoxvsndvtsyeifwmz5ox3t7iubx/lib/python3.9/site-packages", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/py-joblib-1.2.0-2nfa6qthpdyy463lwy43chle4pv5kwhn/lib/python3.9/site-packages", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/py-matplotlib-3.6.2-ptsfldvfukkmryl35qom3zsyg4c6wfkv/lib/python3.9/site-packages", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/py-contourpy-1.0.5-ltm6blw62v7guxnqyg5rbkuvfzeqwbwl/lib/python3.9/site-packages", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/py-numpy-1.23.4-mt23epmzykv25huffxjmwk25kdqsrsdl/lib/python3.9/site-packages", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/py-cycler-0.11.0-7i6m6eeeefpxdhodgjzjsxjtmg2qusf4/lib/python3.9/site-packages", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/py-fonttools-4.37.3-7uynm3lkvnyepfmk5cwetgab7ceogbbs/lib/python3.9/site-packages", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/py-kiwisolver-1.3.2-y7unxdguox2agzryozouxv6m7vqmnas5/lib/python3.9/site-packages", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/py-packaging-21.3-si7qqwlskhsfqgjtuc4tvk6xgsvsowoo/lib/python3.9/site-packages", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/py-pyparsing-3.0.9-zudkuhicrftbj2ojqeb6bw4hbi2rbr2f/lib/python3.9/site-packages", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/py-pillow-9.2.0-r76szrkvlgi5pcbufz2bpeyjon6ssbhw/lib/python3.9/site-packages", ":")
prepend_path("PYTHONPATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64/gcc-9.5.0/py-python-dateutil-2.8.2-ho5vwk4ngbx7b5perjvw6nr6c4yq6kbd/lib/python3.9/site-packages", ":")
prepend_path("PATH", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/rnaquast-2.2.0-v7vzs2pvycjn5kk4wqaqgokzx2lsuicr/bin", ":")
setenv("RNAQUAST_ROOT", "/share/apps/spack/spack-v0.19/opt/spack/linux-ubuntu22.04-x86_64_v3/gcc-9.5.0/rnaquast-2.2.0-v7vzs2pvycjn5kk4wqaqgokzx2lsuicr")


local user_email = subprocess([[grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)']])
user_email = string.gsub(user_email, "%s+", "")
setenv("USER_EMAIL", user_email)

if (mode() == "load") then
   
   LmodMessage(myModuleFullName() .. ": loaded.")
end

if (mode() == "unload") then
   
   LmodMessage(myModuleFullName() .. ": unloaded.")
end
