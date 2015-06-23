/**
* @file nbody.h
*
* N-Body Simulation - Particles system (Naive implementation)
* Header file of particles_simulate function (and read/write functions)
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

// structure of particle
typedef struct
{
    float pos_x;
    float pos_y;
    float pos_z;
    float vel_x;
    float vel_y;
    float vel_z;
    float weight;
} t_particle;

// array of particles (structures)
typedef t_particle t_particles[N];

/**
* Simulate particle system
*
* @param p - structure of particles
*/
void particles_simulate(t_particles p);

/**
* Read particles from file
* Fomat:
*   pos_x pos_y pos_z vel_x vel_y vel_z weight
*
* @param fp - input file descriptor
* @param p - structure of particles
*/  
void particles_read(FILE *fp, t_particles p);

/**
* Write particles to file
* Fomat:
*   pos_x pos_y pos_z vel_x vel_y vel_z weight
*
* @param fp - output file descriptor
* @param p - structure of particles
*/
void particles_write(FILE *fp, t_particles p);

#endif
