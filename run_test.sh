#!/bin/sh
g++ test.cc -o test -I${PREFIX}/include -L${PREFIX}/lib -ltiledb -Wl,-rpath,${PREFIX}/lib
if [ "$(uname)" == "Darwin" ]; then
    DYLD_LIBRARY_PATH=${PREFIX}/lib ./test
fi
if [ "$(uname)" == "Linux" ]; then
    LD_LIBRARY_PATH=${PREFIX}/lib ./test
fi
