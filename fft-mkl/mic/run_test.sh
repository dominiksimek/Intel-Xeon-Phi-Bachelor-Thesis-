#!/usr/bin/env bash

OUT="fftw3dprc.txt"

#
run_t ()
{
    SIZE=$2

    export OMP_NUM_THREADS=$1
    ./fftw-3d-omp $SIZE >> "$OUT"
}

echo "= = = FFTW 3D XEON PHI VERSION = = =" >> "$OUT"
echo >> "$OUT"
export KMP_AFFINITY=compact
echo "$KMP_AFFINITY" >> "$OUT"
run_t 1 128
run_t 2 128
run_t 4 128
run_t 8 128
run_t 16 128
run_t 32 128
run_t 64 128
run_t 128 128
echo "= = =" >> "$OUT"

run_t 4 256
run_t 8 256
run_t 16 256
run_t 32 256
run_t 64 256
run_t 128 256
run_t 180 256
run_t 240 256
echo "= = =" >> "$OUT"

run_t 4 512
run_t 8 512
run_t 16 512
run_t 32 512
run_t 64 512
run_t 128 512
run_t 180 512
run_t 240 512
echo "= = =" >> "$OUT"

run_t 4 704
run_t 8 704
run_t 16 704
run_t 32 704
run_t 64 704
run_t 128 704
run_t 180 704
run_t 240 704
echo "= = =" >> "$OUT"

export KMP_AFFINITY=scatter
echo "$KMP_AFFINITY" >> "$OUT"
run_t 1 128
run_t 2 128
run_t 4 128
run_t 8 128
run_t 16 128
run_t 32 128
run_t 64 128
run_t 128 128
echo "= = =" >> "$OUT"

run_t 4 256
run_t 8 256
run_t 16 256
run_t 32 256
run_t 64 256
run_t 128 256
run_t 180 256
run_t 240 256
echo "= = =" >> "$OUT"

run_t 4 512
run_t 8 512
run_t 16 512
run_t 32 512
run_t 64 512
run_t 128 512
run_t 180 512
run_t 240 512
echo "= = =" >> "$OUT"

run_t 4 704
run_t 8 704
run_t 16 704
run_t 32 704
run_t 64 704
run_t 128 704
run_t 180 704
run_t 240 704
echo "= = =" >> "$OUT"
