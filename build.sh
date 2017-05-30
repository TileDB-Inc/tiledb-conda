#!/bin/sh
NCPU=`sysctl -n hw.ncpu`
mkdir build && cd build
cmake -DCMAKE_INSTALL_PREFIX=${PREFIX} \
      -DCMAKE_BUILD_TYPE=Release ..
cmake --build . --target install -- -j${NCPU}
