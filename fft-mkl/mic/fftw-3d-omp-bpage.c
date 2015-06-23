/**
* @file
*
* Simple fftwf benchmark
* Test fftwf performance at Intel Xeon Phi
* This use MKL
* Compare with Intel Xeon performance
*/

#include <stdlib.h>
#include <fftw3.h>
#include <omp.h>
#include <mkl.h>
#include <sys/mman.h>

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

  const size_t N = size * size * size * ((sizeof(fftw_complex)+63)/64) * (64/sizeof(fftw_complex));
  //const size_t N = size * size * size;

  data = (fftwf_complex *)mmap(0, N * sizeof(fftw_complex),\
                          PROT_READ|PROT_WRITE,\
                          MAP_ANONYMOUS|MAP_PRIVATE|MAP_HUGETLB, -1, 0);
  if (data == NULL)
  {
    fprintf(stderr, "ERROR, _mm_malloc() !\n");
    return EXIT_FAILURE;
  }
  size_t i;
  // NUMA First touch
  #pragma omp parallel for private(i)
  for (i = 0; i < N; ++i)
    data[i][0] = data[i][1] = 1.0;

  fprintf(stdout, "** fftwf 3D OMP **\n");
  fprintf(stdout, "* OMP_NUM_THREADS: %d\n", omp_get_max_threads());
  fprintf(stdout, "* Size of Matrix: %dx%dx%d\n", (int)size, (int)size, (int)size);

  // fftwf threads plan
  fftwf_plan_with_nthreads(omp_get_max_threads());
  // fftwf compute plan
  plan = fftwf_plan_dft_3d(size, size, size,\
                                      data, data,\
                                      FFTW_FORWARD, FFTW_MEASURE);

  // compute results
  const double tstart = omp_get_wtime();
  fftwf_execute(plan);
  const double tend = omp_get_wtime();

  printf("* Wall time: %fs\n\n", tend - tstart);

  // free memory
  _mm_free(data);
  fftwf_destroy_plan(plan);

  return EXIT_SUCCESS;
}

