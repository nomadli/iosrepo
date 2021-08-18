#!/usr/bin/env bash

base_path=$(cd $(dirname $0); pwd)

pushd ${base_path}
    dpkg-deb --build $1
    if [[ -f "../debs/$1.deb" ]]; then
        rm -rf ../debs/$1.deb
    fi
    mv $1.deb ../debs/
popd
