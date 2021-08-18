#!/usr/bin/env bash

base_path=$(cd $(dirname $0); pwd)

pushd ${base_path}

    find ./ -iname ".DS_Store" -exec rm {}  \;

    dpkg-scanpackages -m . > Packages
    
    if [[ -f "Packages.bz2" ]]; then
        rm ./Packages.bz2
    fi
    bzip2 -fks Packages

popd
