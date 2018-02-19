#!/bin/sh
if [ "$(uname)" == "Darwin" ]; then
    NCPU=`sysctl -n hw.logicalcpu`
fi
if [ "$(uname)" == "Linux" ]; then
    NCPU=`grep -c ^processor /proc/cpuinfo`
fi
mkdir build && cd build
cmake -E env CXXFLAGS="-Wno-error=unused-parameter" cmake \
      -DCMAKE_INSTALL_PREFIX=${PREFIX} \
      -DCMAKE_BUILD_TYPE=Release ..
cmake --build . --target install -- -j1
