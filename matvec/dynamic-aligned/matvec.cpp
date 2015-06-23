/**
* @file matvec.cpp
*
* Matvec - Matrix and vector multiplication (Vectorization)
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
void mat_vec_mul(int rows, int cols, float *a, float *b, float *c)
{
    for (unsigned i = 0; i < rows; i++)
    {
        c[i] = 0.0f;
        #pragma ivdep
	    #pragma vector aligned
	    for (unsigned j = 0; j < cols; j++)
        {
            c[i] += a[j + i * cols] * b[j];
        }
    }
}
