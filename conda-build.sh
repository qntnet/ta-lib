#!/bin/bash

#conda install conda-build


conda build purge

rm -rfv qnt-*
rm -rfv src/*.gz
rm -rfv src/*.csv

conda-build .

PKG=`conda-build .  --output`

echo "Ready -> $PKG"

ls -lh $PKG

cp -fv $PKG .

