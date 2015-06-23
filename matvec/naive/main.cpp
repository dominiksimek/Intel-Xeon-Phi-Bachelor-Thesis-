/**
* @file main.cpp
*
* Matvec - Matrix and vector multiplication (Naive implementation)
* Source file of main function (and other auxiliary functions)
*
* Bachelor Thesis FIT VUT 2015
*
* @author: Dominik Simek <xsimek23@stud.fit.vutbr.cz>
*/

#include <cstdio>
#include <cmath>

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
void mat_init(int row, int col, float off, float a[][COLS])
{
    for(unsigned i = 0; i < row; i++)
        for (unsigned j = 0; j < col; j++)
            a[i][j] = fmod(i * j + off, 10.0);

    return;
}

/**
* Initialize vector with "random" values
*
* @param length - vector length
* @param off - auxiliary offset
* @param a - vector to initialize 
*/
void vec_init(int length, float off, float a[])
{
    for(unsigned i = 0; i < length; i++)
        a[i] = fmod(i + off, 10.0);

    return;
}

/**
* Compute sum of final vector
*
* @return sum - final vector sum
*/
double vec_sum(int length, float vec[])
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

    // allocate arrays
    float a[ROWS][COLS];
    float b[COLS];
    float c[ROWS] = {0.0f};

    printf("Rows: %d\n", ROWS);
    printf("Cols: %d\n", COLS);
    printf("Runs: %d\n", RUNS);

    // initialize matrix & vector
    mat_init(ROWS, COLS, 1.0, a);
    vec_init(COLS, 3.0, b);

    // do the measurement
    papi_routines["matvec"].Start();
    for (unsigned i = 0; i < RUNS; i++)
        mat_vec_mul(ROWS, COLS, a, b, c);
    papi_routines["matvec"].Stop();

    // print results
    printf("Control sum: %f\n", vec_sum(ROWS, c));
    printf("\n");
    papi_routines.PrintScreen();

    return EXIT_SUCCESS;
}
