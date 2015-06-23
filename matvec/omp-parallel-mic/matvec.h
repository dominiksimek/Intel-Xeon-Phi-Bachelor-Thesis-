/**
* @file matvec.h
*
* Matvec - Matrix and vector multiplication (Vectorization)
* Header file of mat_vec_mul function
*
* Bachelor Thesis FIT VUT 2015
*
* @author: Dominik Simek <xsimek23@stud.fit.vutbr.cz>
*/

#ifndef __MATVEC_H__
#define __MATVEC_H__

/**
* Compute matrix and vector multiplication
*
* @param rows - matrix rows
* @param cols - matrix cols
* @param a - matrix
* @param b - vector
* @param c - final vector
*/
void mat_vec_mul(int rows, int cols, float *a, float *b, float *c);

#endif
