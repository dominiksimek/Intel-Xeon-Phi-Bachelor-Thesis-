# MATRIX VECTOR MULTIPLICATION

Dominik Simek <xsimek23@fit.vutbr.cz>

Bachelor thesis

FIT VUT 2015


## Basic informations

- all directories have a same structure:

~~~~
- .
  |-main.cpp (main function)
  |-Makefile (make, make run, make clean)
  |-matvec.cpp (matvec kernel)
  |-matvec.h (matvec header file)
  |-papi_cntr.h (simpler work with PAPI)
~~~~

- if you are working on the Anselm:
    - create interactive job on a MIC node

        qsub -I -q qmic -A PROJECT-ID

    - load necessary modules

        module load intel

        module load papi

- in the Makefile you can set:
    - ROWS, COLS (matrix size)
    - RUNS (number of repetitions)
    - PADDING (implemented only in the vec-padding version !)
    - PAPI_EVENTS (set PAPI counters to monitoring of HW events)

- usage:
    - cd naive # e.g.
    - make # create executable file
    - make run # run computation
    - make clean # clean up


## A description of each directories

- naive:
    - naive implementation of algorithm
    - no vectorization, no optimizations

- vec-padding:
    - vectorization, compiler optimizations

- dyn-aligned:
    - dynamic allocation
    - data aligned to 64B

- omp-parallel:
    - parallel version (OpenMP)
    - set number of threads

        export OMP_NUM_THREADS=N

    - you can also set binding of threads

        export KMP_AFFINITY=compact|scatter

    - make run
    - directory contains also bash script run_exp.sh
        - compile the program with your favourite matrix size at first
        - run the script

            ./run_exp.sh

        - this will run the program gradually on 1, 2, 4, 8 and 16 threads

- omp-parallel-mic:
    - parallel version (OpenMP) for the MIC
    - compile program on a host

        [host]$ make

    - and run it on the MIC

        [host]$ ssh mic

        [mic0]$ # MIC shared libraries (it can be different for specific system)

        [mic0]$ export LD_LIBRARY_PATH=/apps/intel/composer_xe_2015.2.164/compiler/lib/mic:$LD_LIBRARY_PATH

        [mic0]$ export LD_LIBRARY_PATH=/apps/intel/composer_xe_2015.2.164/mkl/lib/mic/:$LD_LIBRARY_PATH

        [mic0]$ cd naive

        [mic0]$ export OMP_NUM_THREADS=120 # 60, 120, 180, 240 

        [mic0]$ ./matvec

    - directory contains also bash script run_exp.sh
        - compile the program with your favourite matrix size at first
        - run the script
 
            bash run_exp.sh
 
        - this will run the program gradually on 1, 2, 4, 8, 16, 30, 60, 120, 180 and 240 threads
