# N-BODY SIMULATION

Dominik Simek <xsimek23@fit.vutbr.cz>

Bachelor thesis

FIT VUT 2015


## Basic informations

- all directories have a same structure:

~~~~
- .
  |-gen.cpp (generate input file)
  |-main.cpp (main function)
  |-Makefile (make, make run, make clean)
  |-nbody.cpp (nbody kernel)
  |-nbody.h (nbody header file)
  |-papi_cntr.h (simpler work with PAPI)
~~~~

- if you are working on the Anselm:
    - create interactive job on a MIC node

        qsub -I -q qmic -A PROJECT-ID

    - load necessary modules

        module load intel

        module load papi

- in the Makefile you can set:
    - N (number of particles)
    - STEPS (number of simulation steps)
    - DT (time between steps)
    - PAPI_EVENTS (set PAPI counters to monitoring of HW events)

- usage:
    - cd naive # e.g.
    - make # create executable file
    - make run # run computation
    - make clean # clean up

- Makefile generate also executable file 'gen':
    - you can generate own input file (with "random" particle attributes)

        ./gen N input.dat # N is number of particles


## A description of each directories

- naive:
    - naive implementation of algorithm
    - bad structure of loop

- no-jump-auto-opt:
    - enhanced loop structure
    - no branches
    - dynamic allocation
    - data aligned to 64B
    - compiler optimizations

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
   
        [mic0]$ ./nbody ../input/1m.dat ../output/omp-mic-out.dat

    - directory contains also bash script run_exp.sh
        - compile the program with your favourite matrix size at first
        - run the script

            bash run_exp.sh

        - this will run the program gradually on 1, 2, 4, 8, 16, 30, 60, 120, 180 and 240 threads

- cache-block-mic:
    - effort to better cache utilization
    - you gave to set a correct number of particles and a correct block size
        - the block size have to be set in the file nbody.cpp, constant BLOCK
        - e.g.
            - const int BLOCK = 2048; (nbody.cpp)
            - N=1208320 (in Makefile)
            - now there are lot of bodies - data are bigger than caches
            - 1208320/2048=590 (590 blocks of particles, it must be integer !)
    - to compile and run use process from omp-parallel-mic paragraph
    - make; ssh mic0; ...

- offload:
    - offload mode
    - you can set number of a MIC threads directly on the source code (main.cpp)

        const int mic_threads = 120;

    - or by enviroment variable

        export MIC_ENV_PREFIX=MIC
   
        export MIC_OMP_NUM_THREADS=120

    - compile and run on the host

        [host]$ make
        [host]$ make run

- input:
    - input files with particles attributes

- output:
    - output files are created here (after make run)
