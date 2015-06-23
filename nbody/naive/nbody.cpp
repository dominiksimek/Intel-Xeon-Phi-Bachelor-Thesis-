/**
* @file nbody.cpp
*
* N-Body Simulation - Particles system (Naive implementation)
* Source file of particles_simulate function (and read/write functions)
*
* Bachelor Thesis FIT VUT 2015
*
* @author: Dominik Simek <xsimek23@stud.fit.vutbr.cz>
*/

#include <cfloat>
#include <cmath>
#include "nbody.h"

/**
* Simulate particle system
*
* @param p - structure of particles
*/
void particles_simulate(t_particles p)
{
    float A[3];         // acceleration vector
    float R;            // distance vector
    float F_dir[3];     // force vector (direction)
    float F_vec[3];     // force vector (final)

    // each step of simulation
    for(unsigned step = 0; step < STEPS; step++)
    {
        // iterate over all particles
        for(unsigned i = 0; i < N; i++)
        {
            // reset force vector
            F_vec[0] = 0.0;
            F_vec[1] = 0.0;
            F_vec[2] = 0.0;

            // calculate force between particle[i] and others
            for(unsigned j = 0; j < N; j++)
            {
                // skip equal particles
                if(i != j)
                {
                    // compute distance of bodies
                    F_dir[0] = p[i].pos_x - p[j].pos_x; // x
                    F_dir[1] = p[i].pos_y - p[j].pos_y; // y
                    F_dir[2] = p[i].pos_z - p[j].pos_z; // z

                    // distance in 3D
                    R = sqrt(pow(F_dir[0], 2.0) + pow(F_dir[1], 2.0) + pow(F_dir[2], 2.0));

                    // if distance is not 0
                    if(R > 0.0)
                    {
                        // calculate force vector
                        F_vec[0] = F_vec[0] + F_dir[0] * ((p[i].weight * p[j].weight * G) / pow(R, 3.0));
                        F_vec[1] = F_vec[0] + F_dir[1] * ((p[i].weight * p[j].weight * G) / pow(R, 3.0));
                        F_vec[2] = F_vec[0] + F_dir[2] * ((p[i].weight * p[j].weight * G) / pow(R, 3.0));
                    }
                }
            }

            // calculate acceleration
            A[0] = F_vec[0] / p[i].weight;
            A[1] = F_vec[1] / p[i].weight;
            A[2] = F_vec[2] / p[i].weight;

            // calculate velocity
            p[i].vel_x = p[i].vel_x + A[0] * DT;
            p[i].vel_y = p[i].vel_y + A[1] * DT;
            p[i].vel_z = p[i].vel_z + A[2] * DT;

            // calculate position
            p[i].pos_x = p[i].pos_x + p[i].vel_x * DT;
            p[i].pos_y = p[i].pos_y + p[i].vel_y * DT;
            p[i].pos_z = p[i].pos_z + p[i].vel_z * DT;
        }
    }

    return;
}

/**
* Read particles from file
* Fomat:
*   pos_x pos_y pos_z vel_x vel_y vel_z weight
*
* @param fp - input file descriptor
* @param p - structure of particles
*/
void particles_read(FILE *fp, t_particles p)
{
    for(unsigned i = 0; i < N; i++)
    {
        fscanf(fp, "%f %f %f %f %f %f %f \n",
            &p[i].pos_x, &p[i].pos_y, &p[i].pos_z,
            &p[i].vel_x, &p[i].vel_y, &p[i].vel_z,
            &p[i].weight);
    }

    return;
}

/**
* Write particles to file
* Fomat:
*   pos_x pos_y pos_z vel_x vel_y vel_z weight
*
* @param fp - output file descriptor
* @param p - structure of particles
*/
void particles_write(FILE *fp, t_particles p)
{
    for(unsigned i = 0; i < N; i++)
    {
        fprintf(fp, "%10.4f %10.4f %10.4f %10.4f %10.4f %10.4f %10.4f \n",
            p[i].pos_x, p[i].pos_y, p[i].pos_z,
            p[i].vel_x, p[i].vel_y, p[i].vel_z,
            p[i].weight);
    }

    return;
}
