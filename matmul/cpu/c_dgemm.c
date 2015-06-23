/**
* @file c_dgemm.c
*
* Source file of dgemm test
* MKL version
* CPU
*
* Bachelor Thesis FIT VUT 2015
*
* @author: Dominik Simek <xsimek23@stud.fit.vutbr.cz>
*/

#include <stdio.h>
#include <stdlib.h>
#include "mkl.h"
#include <omp.h>
#include "papi_cntr.h"

const double ALPHA = 1.0;
const double BETA = 0.0;

int main(int argc, char *argv[])
{
    unsigned K;
    unsigned M;
    unsigned N;
    unsigned ITER = 1;

    if(argc >= 2)
    {
        K = atoi(argv[1]);
        M = K;
        N = K;
    }
    else
    {
        fprintf(stderr, "Usage: ./c_dgemm MATRIX_DIMENSION\n");
        return EXIT_FAILURE;
    }

    //PapiCounterList papi_routines;
    //papi_routines.AddRoutine("mat_mul");

    double *A, *B, *C;
    int n;

    A = (double *)mkl_malloc(M * K * sizeof(double), 64);
    B = (double *)mkl_malloc(K * N * sizeof(double), 64);
    C = (double *)mkl_malloc(M * N * sizeof(double), 64);
    if (A == NULL || B == NULL || C == NULL)
    {
        fprintf(stderr, "ERROR: mkl_malloc()\n");
        mkl_free(A);
        mkl_free(B);
        mkl_free(C);

        return EXIT_FAILURE;
    }

    #pragma omp parallel
    {
        #pragma omp for
        for (unsigned i = 0; i < (M * K); i++)
        {
            A[i] = (double)(i+1);
        }

        #pragma omp for
        for(unsigned i = 0; i < (K * N); i++)
        {
            B[i] = (double)(-i-1);
        }

        #pragma omp for
        for(unsigned i = 0; i < (M * N); i++)
        {
            C[i] = 0.0;
        }
    }

    const double tstart = omp_get_wtime();
    //papi_routines["mat_mul"].Start();
    for(unsigned i = 0; i < ITER; i++)
    {
        cblas_dgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans, M, N, K, ALPHA, A, K, B, N, BETA, C, N);
    }
    //papi_routines["mat_mul"].Stop();
    const double tend = omp_get_wtime();

    //printf("= = = C MKL = = =\n\n");
    printf("cblas_dgemm(%dx%d, %dx%d), %d iterations\n", M, K, K, N, ITER);
    printf("cblas_dgemm(): %f sec\n", tend - tstart);
    //papi_routines.PrintScreen();
    return EXIT_SUCCESS;
}
