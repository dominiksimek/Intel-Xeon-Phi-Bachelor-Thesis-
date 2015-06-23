/**
* @file main.cpp
*
* N-Body Simulation - Particles system (Naive implementation)
* Source file of main function
*
* Bachelor Thesis FIT VUT 2015
*
* @author: Dominik Simek <xsimek23@stud.fit.vutbr.cz>
*/

#include <cstdio>
#include <cmath>

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

    // create array of particles
    t_particles particles;

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
    particles_read(fp, particles);
    fclose(fp);

    // print parameters
    printf("N: %d\n", N);
    printf("DT: %f\n", DT);
    printf("Steps: %d\n", STEPS);

    // do the measurement
    papi_routines["nbody"].Start();
    particles_simulate(particles);
    papi_routines["nbody"].Stop();

    // write particles to file
    fp = fopen(argv[2], "w");
    if (fp == NULL)
    {
        fprintf(stderr, "Can't open file %s!\n", argv[2]);
        return EXIT_FAILURE;
    }
    particles_write(fp, particles);
    fclose(fp);

    // print results
    papi_routines.PrintScreen();

    return 0;
}
