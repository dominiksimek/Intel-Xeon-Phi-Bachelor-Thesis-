# NUMPY & SCIPY DGEMM TEST

Dominik Simek <xsimek23@fit.vutbr.cz>

Bachelor thesis

FIT VUT 2015


## Basic informations

- test DGEMM from numpy/scipy modules (on the CPU)
- for best perfomance, numpy/scipy module have to be linked with Intel MKL
- usage:
    - set number of threads

        export OMP_NUM_THREADS=8

    - run python script

        python numpy_dgemm.py MATRIX_DIMENSION
   
        python numpy_dgemm.py MATRIX_DIMENSION

    - e.g.

        python numpy_dgemm.py 2048

