/**
* @file main.cpp
*
* Matvec - Matrix and vector multiplication (Vectorization)
* Source file of main function (and other auxiliary functions)
*
* Bachelor Thesis FIT VUT 2015
*
* @author: Dominik Simek <xsimek23@stud.fit.vutbr.cz>
*/

#include <cstdio>
#include <cmath>
#include <omp.h>

#include "matvec.h"
#include "papi_cntr.h"

/**
* Initialize matrix with "random" values
*
* @param row - matrix rows
* @param col - matrix col
* @param off - auxiliary offset
* @param a - matrix to initialize
*/
void mat_init(int row, int col, float off, float *a)
{
    // NUMA First Touch policy
    #pragma omp parallel for
    for(unsigned i = 0; i < row; i++)
        for(unsigned j = 0; j < col; j++)
            a[j + i * col] = fmod(i * j + off, 10.0);

    return;
}

/**
* Initialize vector with "random" values
*
* @param length - vector length
* @param off - auxiliary offset
* @param a - vector to initialize
*/
void vec_init(int length, float off, float *a)
{
    // NUMA First Touch policy
    #pragma omp parallel for
    for(unsigned i = 0; i < length; i++)
        a[i] = fmod(i + off, 10.0);

    return;
}

/**
* Compute sum of final vector
*
* @return sum - final vector sum
*/
double vec_sum(int length, float *vec)
{
    double sum = 0.0;

    for(unsigned i = 0; i < length; i++)
        sum += vec[i];

    return sum;
}

/**
* Main function
*
* @param argc
* @param argv
*/
int main(int argc, char **argv)
{
    // create PAPI routines
    PapiCounterList papi_routines;
    papi_routines.AddRoutine("matvec");

    // allocate matrix
    float *A = (float*)_mm_malloc(ROWS * COLS * sizeof(float), 64);
    if(A == NULL)
    {
        fprintf(stderr, "_mm_malloc error !\n");
        return EXIT_FAILURE;
    }

    // allocate vectors
    float *B = (float*)_mm_malloc(COLS * sizeof(float), 64);
    if(A == NULL)
    {
        fprintf(stderr, "_mm_malloc error !\n");
        _mm_free(A);
        return EXIT_FAILURE;
    }

    float *C = (float*)_mm_malloc(ROWS * sizeof(float), 64);
    if(A == NULL)
    {
        fprintf(stderr, "_mm_malloc error !\n");
        _mm_free(A);
        _mm_free(B);
        return EXIT_FAILURE;
    }

    printf("Rows: %d\n", ROWS);
    printf("Cols: %d\n", COLS);
    printf("Runs: %d\n", RUNS);

    // initialize matrix & vector
    mat_init(ROWS, COLS, 1.0, A);
    vec_init(COLS, 3.0, B);

    // do the measurement
    papi_routines["matvec"].Start();
    for (unsigned i = 0; i < RUNS; i++)
        mat_vec_mul(ROWS, COLS, A, B, C);
    papi_routines["matvec"].Stop();

    // print results
    printf("Control sum: %f\n", vec_sum(ROWS, C));
    printf("\n");
    papi_routines.PrintScreen();

    // free memory
    _mm_free(A);
    _mm_free(B);
    _mm_free(C);

    return EXIT_SUCCESS;
}
