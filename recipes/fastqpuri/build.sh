#!/bin/bash

Rscript -e 'install.packages(c("rmarkdown", "pheatmap"), repos="https://stat.ethz.ch/CRAN")'
cmake -H. -Bbuild -DCMAKE_INSTALL_PREFIX=${PREFIX} -DCMAKE_C_COMPILER=${CC}
cd build
make
make install
