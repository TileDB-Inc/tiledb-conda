#!/bin/sh
if [ "$(uname)" == "Darwin" ]; then
    NCPU=`sysctl -n hw.logicalcpu`
fi
if [ "$(uname)" == "Linux" ]; then
    NCPU=`nproc --all`
fi
mkdir build && cd build
../bootstrap --prefix=${PREFIX} --enable-debug --enable-verbose
make install -j${NCPU}
