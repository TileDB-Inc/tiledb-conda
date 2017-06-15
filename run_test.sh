#!/bin/sh
g++ test.cc -o test -I${PREFIX}/include -L${PREFIX}/lib -ltiledb -Wl,-rpath,${PREFIX}/lib
./test
