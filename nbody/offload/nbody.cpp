/**
* @file nbody.cpp
*
* N-Body Simulation - Particles system (Offload to MIC)
* Source file of particles_simulate function
* (and read/write/alloc/free/init functions)
*
* Bachelor Thesis FIT VUT 2015
*
* @author: Dominik Simek <xsimek23@stud.fit.vutbr.cz>
*/

#include <cfloat>
#include <cmath>
#include <omp.h>
#include <algorithm>
#include "nbody.h"

__attribute__((target(mic))) const float SML_FLT = 1e-9f;

/**
* Allocate memory for particles
*
* @param size - number of particles to alloc
*
* @return pointer to structure
*/
void particles_alloc(t_particles_DA *p, size_t size)
{
    // allocate memory for pos_x
    p->pos_x = (float*) _mm_malloc(size * sizeof(float), 64);
    if(p->pos_x == NULL)
    {
        fprintf(stderr, "_mm_malloc() error !!!");
        return;
    }

    // allocate memory for pos_y
    p->pos_y = (float*) _mm_malloc(size * sizeof(float), 64);
    if(p->pos_y == NULL)
    {
        particles_free(p);
        fprintf(stderr, "_mm_malloc() error !!!");
        return;
    }

    // allocate memory for pos_z
    p->pos_z = (float*) _mm_malloc(size * sizeof(float), 64);
    if(p->pos_z == NULL)
    {
        particles_free(p);
        fprintf(stderr, "_mm_malloc() error !!!");
        return;
    }

    // allocate memory for vel_x
    p->vel_x = (float*) _mm_malloc(size * sizeof(float), 64);
    if(p->vel_x == NULL)
    {
        particles_free(p);
        fprintf(stderr, "_mm_malloc() error !!!");
        return;
    }

    // allocate memory for vel_y
    p->vel_y = (float*) _mm_malloc(size * sizeof(float), 64);
    if(p->vel_y == NULL)
    {
        particles_free(p);
        fprintf(stderr, "_mm_malloc() error !!!");
        return;
    }

    // allocate memory for vel_z
    p->vel_z = (float*) _mm_malloc(size * sizeof(float), 64);
    if(p->vel_z == NULL)
    {
        particles_free(p);
        fprintf(stderr, "_mm_malloc() error !!!");
        return;
    }

    // allocate memory for weight
    p->weight = (float*) _mm_malloc(size * sizeof(float), 64);
    if(p->weight == NULL)
    {
        particles_free(p);
        fprintf(stderr, "_mm_malloc() error !!!");
        return;
    }

    // allocate memory for fx
    p->fx = (float*) _mm_malloc(size * sizeof(float), 64);
    if(p->fx == NULL)
    {
        particles_free(p);
        fprintf(stderr, "_mm_malloc() error !!!");
        return;
    }

    // allocate memory for fy
    p->fy = (float*) _mm_malloc(size * sizeof(float), 64);
    if(p->fy == NULL)
    {
        particles_free(p);
        fprintf(stderr, "_mm_malloc() error !!!");
        return;
    }

    // allocate memory for fz
    p->fz = (float*) _mm_malloc(size * sizeof(float), 64);
    if(p->fz == NULL)
    {
        particles_free(p);
        fprintf(stderr, "_mm_malloc() error !!!");
        return;
    }

    // allocate memory for ax
    p->ax = (float*) _mm_malloc(size * sizeof(float), 64);
    if(p->ax == NULL)
    {
        particles_free(p);
        fprintf(stderr, "_mm_malloc() error !!!");
        return;
    }

    // allocate memory for ay
    p->ay = (float*) _mm_malloc(size * sizeof(float), 64);
    if(p->ay == NULL)
    {
        particles_free(p);
        fprintf(stderr, "_mm_malloc() error !!!");
        return;
    }

    // allocate memory for az
    p->az = (float*) _mm_malloc(size * sizeof(float), 64);
    if(p->az == NULL)
    {
        particles_free(p);
        fprintf(stderr, "_mm_malloc() error !!!");
        return;
    }

    return;
}

/**
* Free memory
*
* @param p - structure of particles
*/
void particles_free(t_particles_DA *p)
{
    _mm_free(p->pos_x);
    _mm_free(p->pos_y);
    _mm_free(p->pos_z);
    _mm_free(p->vel_x);
    _mm_free(p->vel_y);
    _mm_free(p->vel_z);
    _mm_free(p->weight);
    _mm_free(p->fx);
    _mm_free(p->fy);
    _mm_free(p->fz);
    _mm_free(p->ax);
    _mm_free(p->ay);
    _mm_free(p->az);

    return;
}

/**
* Initialize structure of particles
* NUMA First Touch Policy
*
* @param p - structure of particles
*/
__attribute__((target(mic))) void particles_init(t_particles_DA p)
{
    #pragma omp parallel for
    for(unsigned i = 0; i < N; i++)
    {
        p.pos_x[i] = 0.0f;
        p.pos_y[i] = 0.0f;
        p.pos_z[i] = 0.0f;
        p.vel_x[i] = 0.0f;
        p.vel_y[i] = 0.0f;
        p.vel_z[i] = 0.0f;
        p.weight[i] = 0.0f;
        p.fx[i] = 0.0f;
        p.fy[i] = 0.0f;
        p.fz[i] = 0.0f;
        p.ax[i] = 0.0f;
        p.ay[i] = 0.0f;
        p.az[i] = 0.0f;
    }

    return;
}

/**
* Simulate particle system
*
* @param p - structure of particles
*/
__attribute__((target(mic))) void particles_simulate(t_particles_DA p)
{

    // each step of simulation
    for(unsigned step = 0; step < STEPS; step++)
    {
        #pragma omp parallel for
        //#pragma vector aligned
        #pragma simd
        for(unsigned j = 0; j < N; j++)
        {
            p.fx[j] = 0.0f;
            p.fy[j] = 0.0f;
            p.fz[j] = 0.0f;
        }

        // iterate over all particles
        #pragma omp parallel for
        #pragma vector aligned
        for(unsigned i = 0; i < N; i++)
        {
            float dx, dy, dz;   // distance X, Y, Z
            float dist_sqr;     // distance^2
            float inv_dist;     // inverted distance
            float inv_dist3;    // inverted distance^3

            // calculate force between particle[i] and others
            #pragma vector aligned
            #pragma simd
            for(unsigned j = 0; j < N; j++)
            {
                // compute distance of bodies
                dx = p.pos_x[j] - p.pos_x[i]; // x
                dy = p.pos_y[j] - p.pos_y[i]; // y
                dz = p.pos_z[j] - p.pos_z[i]; // z

                // distance in 3D
                dist_sqr = dx*dx + dy*dy + dz*dz + SML_FLT;

                // inverted distance for better performance
                inv_dist = 1.0f / sqrt(dist_sqr);

                // invertovana vzdialenost^3
                inv_dist3 = inv_dist * inv_dist * inv_dist;

                // calculate increment of force
                p.fx[i] += dx * ((p.weight[i] * p.weight[j] * G) * inv_dist3);
                p.fy[i] += dy * ((p.weight[i] * p.weight[j] * G) * inv_dist3);
                p.fz[i] += dz * ((p.weight[i] * p.weight[j] * G) * inv_dist3);

            }

        }

        // calculate acceleration
        #pragma omp parallel for
        //#pragma vector aligned
        #pragma simd
        for(unsigned i = 0; i < N; i++)
        {
            p.ax[i] = p.fx[i] / p.weight[i];
            p.ay[i] = p.fy[i] / p.weight[i];
            p.az[i] = p.fz[i] / p.weight[i];
        }

        // calculate velocity
        #pragma omp parallel for
        //#pragma vector aligned
        #pragma simd
        for(unsigned i = 0; i < N; i++)
        {
            p.vel_x[i] += DT * p.ax[i];
            p.vel_y[i] += DT * p.ay[i];
            p.vel_z[i] += DT * p.az[i];

        }

        // calculate position
        #pragma omp parallel for
        //#pragma vector aligned
        #pragma simd
        for(unsigned i = 0; i < N; i++)
        {
           p.pos_x[i] += p.vel_x[i] * DT;
           p.pos_y[i] += p.vel_y[i] * DT;
           p.pos_z[i] += p.vel_z[i] * DT;
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
void particles_read(FILE *fp, t_particles_DA p)
{
    for(unsigned i = 0; i < N; i++)
    {
        fscanf(fp, "%f %f %f %f %f %f %f \n",
            &p.pos_x[i], &p.pos_y[i], &p.pos_z[i],
            &p.vel_x[i], &p.vel_y[i], &p.vel_z[i],
            &p.weight[i]);
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
void particles_write(FILE *fp, t_particles_DA p)
{
    for(unsigned i = 0; i < N; i++)
    {
        fprintf(fp, "%10.4f %10.4f %10.4f %10.4f %10.4f %10.4f %10.4f \n",
            p.pos_x[i], p.pos_y[i], p.pos_z[i],
            p.vel_x[i], p.vel_y[i], p.vel_z[i],
            p.weight[i]);
    }

    return;
}
