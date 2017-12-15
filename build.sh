#!/bin/sh
if [ "$(uname)" == "Darwin" ]; then
    NCPU=`sysctl -n hw.logicalcpu`
fi
if [ "$(uname)" == "Linux" ]; then
    NCPU=`grep -c ^processor /proc/cpuinfo`
fi
mkdir build && cd build
cmake -DCMAKE_INSTALL_PREFIX=${PREFIX} \
      -DCMAKE_BUILD_TYPE=Release ..
cmake --build . --target install -- -j${NCPU}
