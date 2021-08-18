#!/usr/bin/env bash

base_path=$(cd $(dirname $0); pwd)

pushd ${base_path}
    dpkg-deb --build $1
popd
