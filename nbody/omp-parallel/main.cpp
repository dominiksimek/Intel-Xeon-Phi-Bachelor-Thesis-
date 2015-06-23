/**
* @file main.cpp
*
* N-Body Simulation - Particles system (Omp Parallel)
* Source file of main function
*
* Bachelor Thesis FIT VUT 2015
*
* @author: Dominik Simek <xsimek23@stud.fit.vutbr.cz>
*/

#include <cstdio>
#include <cmath>
#include <omp.h>

#include "nbody.h"
#include "papi_cntr.h"

/**
* Main function
*
* @param argc
* @param argv
*/
int main(int argc, char **argv)
{
    // file descriptor
    FILE *fp;
    
    // create papi routines
    PapiCounterList papi_routines;
    papi_routines.AddRoutine("nbody");

    // create particles structure
    t_particles_DA *p_DA = particles_alloc(N);
    particles_init(*p_DA);

    if(argc != 3)
    {
        fprintf(stderr, "Usage: ./nbody <input> <output>\n");
        return EXIT_FAILURE;
    }

    // read particles from file
    fp = fopen(argv[1], "r");
    if (fp == NULL)
    {
        fprintf(stderr, "Can't open input file %s!\n", argv[1]);
        return EXIT_FAILURE;
    }
    const double tstart = omp_get_wtime();
    particles_read(fp, *p_DA);
    const double tread = omp_get_wtime();
    fclose(fp);

    // print parameters
    printf("N: %d\n", N);
    printf("DT: %f\n", DT);
    printf("Steps: %d\n", STEPS);

    // do the measurement
    papi_routines["nbody"].Start();
    particles_simulate(*p_DA);
    papi_routines["nbody"].Stop();
    const double tcomp = omp_get_wtime();

    // write particles to file
    fp = fopen(argv[2], "w");
    if (fp == NULL)
    {
        printf("Can't open file %s!\n", argv[2]);
        exit(1);
    }

    // write particles to file
    fp = fopen(argv[2], "w");
    if (fp == NULL)
    {
        fprintf(stderr, "Can't open file %s!\n", argv[2]);
        return EXIT_FAILURE;
    }
    particles_write(fp, *p_DA);
    const double twrite = omp_get_wtime();
    fclose(fp);

    // print results
    papi_routines.PrintScreen();
    printf("Time Reading: %0.3f\n", tread - tstart);
    printf("Time Computing: %0.3f\n", tcomp - tread);
    printf("Time Writing: %0.3f\n", twrite - tcomp);
    printf("Time Total: %0.3f\n", twrite - tstart); 

    return EXIT_SUCCESS;
}
