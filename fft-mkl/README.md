# FFT TEST (MKL) ON THE MIC 

Dominik Simek <xsimek23@fit.vutbr.cz>

Bachelor thesis

FIT VUT 2015


## Basic informations

- all directories have a same structure:

~~~~
-.
 |-fftw-3d-omp.c (source file)
 |-Makefile (make, make run, make clean)
 |-papi_cntr.h (simpler work with PAPI)
 |-run_test.sh (run program for various matrix sizes)
~~~~

- if you are working on the Anselm:
    - create interactive job on a MIC node

        qsub -I -q qmic -A PROJECT-ID

    - load necessary modules

        module load intel

        module load papi

- usage:
    - cd /ffw-mkl/cpu
    - make # create executable file
    - make run # run computation
    - make clean # clean up
    - or

        ./fftw-3d-omp MATRIX_DIMENSION (e.g. $ ./fftw-3d-omp 128)

    - or

        ./run_test.sh # run bash script


## A description of each directories

- cpu:
    - implementation for the cpu
    - set a number of threads

        export OMP_SET_NUM_THREADS=8

    - run for matrixes of size 128

        make run

    - directory contains also bash script run_test.sh
    - run it for various matrix sizes and various number of threads

        ./run_test.sh

- mic:
    - compile program on a host

        [host]$ make

    - and run it on the MIC

        [host]$ ssh mic

        [mic0]$ # MIC shared libraries (it can be different for specific system)

        [mic0]$ export LD_LIBRARY_PATH=/apps/intel/composer_xe_2015.2.164/compiler/lib/mic:$LD_LIBRARY_PATH

        [mic0]$ export LD_LIBRARY_PATH=/apps/intel/composer_xe_2015.2.164/mkl/lib/mic/:$LD_LIBRARY_PATH

        [mic0]$ cd fftw-mkl/mic

        [mic0]$ export OMP_NUM_THREADS=120 # 60, 120, 180, 240 

        [mic0]$ ./fftw-3d-omp 2048

    - directory contains also bash script run_test.sh
    - run it for various matrix sizes and various number of threads

        bash run_test.sh
