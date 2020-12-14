#!/bin/sh

set -eux

ICE_VERSION=${1:-"3.6.5"}

pip3 install wheel
pip3 download "zeroc-ice==$ICE_VERSION"
tar -zxf "zeroc-ice-$ICE_VERSION.tar.gz"
cd "zeroc-ice-$ICE_VERSION"
python3 setup.py bdist_wheel
