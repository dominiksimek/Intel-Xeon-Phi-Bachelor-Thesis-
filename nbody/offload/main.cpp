/**
* @file main.cpp
*
* N-Body Simulation - Particles system (Offload to MIC)
* Source file of main function
*
* Bachelor Thesis FIT VUT 2015
*
* @author: Dominik Simek <xsimek23@stud.fit.vutbr.cz>
*/

#include <cstdio>
#include <cmath>
#include <omp.h>
#include <offload.h>

#include "nbody.h"

//__attribute__((target(mic))) t_particles_DA p;

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
    
    // we want to allocate structure on MIC
    __attribute__((target(mic))) t_particles_DA p;
    particles_alloc(&p, N);

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
    particles_read(fp, p);
    const double tread = omp_get_wtime();
    fclose(fp);

    // print parameters
    printf("N: %d\n", N);
    printf("DT: %f\n", DT);
    printf("Steps: %d\n", STEPS);

    // preprare data to transfer
    // set number of threads
    // do the measurement
    const int mic_threads = 236;
    omp_set_num_threads_target(TARGET_MIC, 0, mic_threads);

    // auxiliary arrays
    float *px = p.pos_x;
    float *py = p.pos_y;
    float *pz = p.pos_z;
    float *vx = p.vel_x;
    float *vy = p.vel_y;
    float *vz = p.vel_z;
    float *w = p.weight;
    float *fx = p.fx;
    float *fy = p.fy;
    float *fz = p.fz;
    float *ax = p.ax;
    float *ay = p.ay;
    float *az = p.az;

    // data transfer && computation
    #pragma offload target(mic)\
    inout(px: length(N) alloc_if(1) free_if(1))\
    inout(py: length(N) alloc_if(1) free_if(1))\
    inout(pz: length(N) alloc_if(1) free_if(1))\
    inout(vx: length(N) alloc_if(1) free_if(1))\
    inout(vy: length(N) alloc_if(1) free_if(1))\
    inout(vz: length(N) alloc_if(1) free_if(1))\
    inout(w: length(N) alloc_if(1) free_if(1))\
    nocopy(fx: length(N) alloc_if(1) free_if(1))\
    nocopy(fy: length(N) alloc_if(1) free_if(1))\
    nocopy(fz: length(N) alloc_if(1) free_if(1))\
    nocopy(ax: length(N) alloc_if(1) free_if(1))\
    nocopy(ay: length(N) alloc_if(1) free_if(1))\
    nocopy(az: length(N) alloc_if(1) free_if(1))\
    nocopy(p)
    {
        // copy data back to the structure
        p.pos_x = px;
        p.pos_y = py;
        p.pos_z = pz;
        p.vel_x = vx;
        p.vel_y = vy;
        p.vel_z = vz;
        p.weight = w;
        p.fx = fx;
        p.fy = fy;
        p.fz = fz;
        p.ax = ax;
        p.ay = ay;
        p.az = az;

        // run simulation
        particles_simulate(p);
    }

    const double tcomp = omp_get_wtime();

    // write particles to file
    fp = fopen(argv[2], "w");
    if (fp == NULL)
    {
        printf("Can't open file %s!\n", argv[2]);
        exit(1);
    }
    particles_write(fp, p);
    const double twrite = omp_get_wtime();

    // free memory
    particles_free(&p);
    fclose(fp);

    // print results
    printf("Time Reading: %0.3f\n", tread - tstart);
    printf("Time Computing: %0.3f\n", tcomp - tread);
    printf("Time Writing: %0.3f\n", twrite - tcomp);
    printf("Time Total: %0.3f\n", twrite - tstart); 

    return EXIT_SUCCESS;
}
