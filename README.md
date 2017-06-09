# tiledb-conda

[![Build Status](https://travis-ci.com/TileDB-Inc/tiledb-conda.svg?token=8cqpFewn7tk2JbU99Cmn&branch=master)](https://travis-ci.com/TileDB-Inc/tiledb-conda)

### Building the tiledb conda package (Unix)

Build install the `libtiledb` shared library.

* Download and install [conda](https://conda.io/docs/install/quick.html)

* Update conda

  `conda update conda`

* Install `conda-build` the root environment

  `conda install conda-build`

* Create a new tiledb conda environment

  `conda create --name tiledb python=3.6`

* Activate the new tiledb environment

  `source activate tiledb`

* Clone the tiledb recipe

  `git clone https://github.com/TileDB-Inc/tiledb-conda`

* Add the conda-forge channel

  `conda config --add channels conda-forge`

* Build the local conda package

  `cd tiledb-conda && conda build .`

* Install the built package locally

  `conda install --use-local tiledb`

### Complete documentation for conda
[http://conda-test.pydata.org/docs/intro.html](http://conda-test.pydata.org/docs/intro.html)
