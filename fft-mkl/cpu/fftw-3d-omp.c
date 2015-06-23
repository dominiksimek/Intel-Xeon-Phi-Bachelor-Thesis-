/**
* @file
*
* Simple FFTW benchmark
* Test FFTW performance on the Intel Xeon processor
* MKL version
*
* @author Dominik Simek <xsimek23@stud.fit.vutbr.cz>
* Bachelor thesis
* FIT VUT 2015
*/

#include <stdlib.h>
#include <fftw3.h>
#include <omp.h>
#include <mkl.h>
#include "papi_cntr.h"

int main(int argc, char **argv)
{
  size_t size;
  fftwf_complex *data;
  fftwf_plan plan;

  if(argc >= 2)
  {
    size = atoi(argv[1]);
    if (size <= 0)
    {
      fprintf(stderr, "ERROR, matrix size <= 0 !\n");
      return EXIT_FAILURE;
    }
  }
  else
  {
    fprintf(stderr, "ERROR, pass matrix size as 1st parameter !\n");
    return EXIT_FAILURE;
  }

  const size_t N = size * size * size;

  data = (fftwf_complex*)_mm_malloc(sizeof(fftw_complex) * N, 64);
  if (data == NULL)
  {
    fprintf(stderr, "ERROR, _mm_malloc() !\n");
    return EXIT_FAILURE;
  }

  PapiCounterList papi_routines;
  papi_routines.AddRoutine("fftw");

  // NUMA First touch
  #pragma omp parallel for
  for (size_t i = 0; i < N; ++i)
    data[i][0] = data[i][1] = 1.0;


  fprintf(stdout, "** FFTW 3D OMP **\n");
  fprintf(stdout, "* OMP_NUM_THREADS: %d\n", omp_get_max_threads());
  fprintf(stdout, "* Size of Matrix: %dx%dx%d\n", (int)size, (int)size, (int)size);

  // fftw threads plan
  fftwf_plan_with_nthreads(omp_get_max_threads());
  // fftw compute plan
  plan = fftwf_plan_dft_3d(size, size, size,
                                      data, data,
                                      FFTW_FORWARD, FFTW_MEASURE);
  papi_routines["fftw"].Start();
  // compute results
  const double tstart = omp_get_wtime();
  fftwf_execute(plan);
  const double tend = omp_get_wtime();
  papi_routines["fftw"].Stop();

  printf("* Wall time: %fs\n\n", tend - tstart);
  papi_routines.PrintScreen();
  // free memory
  _mm_free(data);
  fftwf_destroy_plan(plan);

  return EXIT_SUCCESS;
}

