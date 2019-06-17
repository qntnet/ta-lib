#!/usr/bin/env bash

TA_PATH=$(realpath build)

cd orig/ta-lib
./configure  --prefix=$TA_PATH
make
make install
cd -

make

TA_INCLUDE_PATH=$TA_PATH/talib/include TA_LIBRARY_PATH=$TA_PATH/talib/lib python3 -m pip install . --no-deps --ignore-installed -vvv

