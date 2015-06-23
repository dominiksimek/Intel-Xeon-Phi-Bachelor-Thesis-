/**
* @file matvec.cpp
*
* Matvec - Matrix and vector multiplication (Naive implementation)
* Source file of mat_vec_mul function
*
* Bachelor Thesis FIT VUT 2015
*
* @author: Dominik Simek <xsimek23@stud.fit.vutbr.cz>
*/

#include "matvec.h"

/**
* Compute matrix and vector multiplication
*
* @param rows - matrix rows
* @param cols - matrix cols
* @param a - matrix
* @param b - vector
* @param c - final vector
*/
void mat_vec_mul(int rows, int cols, float a[][cols], float b[cols], float c[rows])
{
    for (unsigned i = 0; i < rows; i++)
    {
        c[i] = 0.0f;
        #pragma nounroll // disable all loop unrolling
        for (unsigned j = 0; j < cols; j++)
        {
            c[i] += a[i][j] * b[j];
        }
    }

    return;
}
