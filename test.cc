#include "tiledb/tiledb.h"
#include <cassert>

int main(void) {

    int major = -1;
    int minor = -1;
    int rev   = -1; 

    tiledb_version(&major, &minor, &rev);

    assert(major >= 0);
    assert(minor >= 0);
    assert(rev   >= 0);

    return 0;
}
