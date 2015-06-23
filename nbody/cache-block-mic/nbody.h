/**
* @file nbody.h
*
* N-Body Simulation - Particles system (Cache Blocking MIC)
* Header file of particles_simulate function
* (and read/write/alloc/free/init functions)
*
* Bachelor Thesis FIT VUT 2015
*
* @author: Dominik Simek <xsimek23@stud.fit.vutbr.cz>
*/

#ifndef __NBODY_H__
#define __NBODY_H__

#include <cstdlib>
#include <cstdio>

// gravitational constant
#define G 6.67384e-11f

// structure of particle (structure of pointers)
typedef struct
{
    float *pos_x;
    float *pos_y;
    float *pos_z;
    float *vel_x;
    float *vel_y;
    float *vel_z;
    float *weight;
    float *fx;
    float *fy;
    float *fz;
    float *ax;
    float *ay;
    float *az;
} t_particles_DA;

/**
* Allocate memory for particles
*
* @param size - number of particles to alloc
*
* @return pointer to structure
*/
t_particles_DA *particles_alloc(size_t size);

/**
* Free memory
*
* @param p - structure of particles
*/
void particles_free(t_particles_DA *p);

/**
* Initialize structure of particles
*
* @param p - structure of particles
*/
void particles_init(t_particles_DA p);

/**
* Simulate particle system
*
* @param p - structure of particles
*/
void particles_simulate(t_particles_DA p);

/**
* Read particles from file
* Fomat:
*   pos_x pos_y pos_z vel_x vel_y vel_z weight
*
* @param fp - input file descriptor
* @param p - structure of particles
*/  
void particles_read(FILE *fp, t_particles_DA p);

/**
* Write particles to file
* Fomat:
*   pos_x pos_y pos_z vel_x vel_y vel_z weight
*
* @param fp - output file descriptor
* @param p - structure of particles
*/
void particles_write(FILE *fp, t_particles_DA p);

#endif
