#!/bin/bash

pushd library
./configure --prefix=$PREFIX
make
make install
popd

pushd wrapper
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$PREFIX/lib
export TA_INCLUDE_PATH=$PREFIX/include
export TA_LIBRARY_PATH=$PREFIX/lib
python setup.py build
python setup.py install --prefix=$PREFIX
popd