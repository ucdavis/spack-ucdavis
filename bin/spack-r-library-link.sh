#! /bin/zsh

set -eu

PROGRAM=${0:t}

base="${SPACK_ROOT}/opt/spack/linux-ubuntu18.04-x86_64/gcc-11.2.0"

echo -n "Finding R libraries, "
typeset -a r_packages=( $(find $base/ -type d -name library | egrep -o '.*/rlib/R/library' | sort | uniq ) )
echo "done."

cd $base

for package in $r_packages; do
    if [[ -e $package/../../../bin/R ]]; then
        rlang_name=$package:h:h:h:t
        # This is an actual R installation, make sure the corresponding modules directory exists.
        if [[ ! -e ${rlang_name}-modules ]]; then
            mkdir ${rlang_name}-modules
        fi
        continue
    fi

    spec="$package/../../../.spack/spec.json"
    r_version=$(jq '.spec[] | .r | .version | values' $spec 2>/dev/null || jq '.spec | .nodes[] | select(.name == "r") | .version' $spec)
    r_hash=$(jq '.spec[] | .r | .hash | values' $spec 2>/dev/null || jq '.spec | .nodes[] | select(.name == "r") | .hash' $spec)

    libraries_dir="r-${(Q)r_version}-${(Q)r_hash}-modules"
    
    typeset -a lib=( $(ls -1d $package/*) )

    library_name=$lib[1]:t
    if [[ -L $libraries_dir/$library_name ]]; then
        #echo "$library_name: exists, skipping"
    elif [[ -e $libraries_dir/$library_name ]]; then
        echo "$library_name: exists, but it not a symlink."
    else
        (
            cd $libraries_dir
            echo "$library_name ${(Q)r_version}-${(Q)r_hash}: linking"

            rel_path=$(realpath --relative-to=$PWD $lib)
            ln -s $rel_path .
        )
    fi
done
