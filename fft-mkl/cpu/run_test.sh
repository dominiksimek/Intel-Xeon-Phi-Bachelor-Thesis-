#!/usr/bin/env bash

OUT="fftw3dprc.txt"

#
run_t ()
{
    SIZE=$2

    export OMP_NUM_THREADS=$1
    ./fftw-3d-omp $SIZE >> "$OUT"
}

echo "= = = FFTW 3D PROCESSOR VERSION = = =" >> "$OUT"
echo >> "$OUT"
export KMP_AFFINITY=compact
echo "$KMP_AFFINITY" >> "$OUT"

run_t 1 128
run_t 2 128
run_t 4 128
run_t 8 128
run_t 16 128
echo "= = =" >> "$OUT"

run_t 4 256
run_t 8 256
run_t 16 256
echo "= = =" >> "$OUT"

run_t 4 512
run_t 8 512
run_t 16 512
echo "= = =" >> "$OUT"

run_t 4 704
run_t 8 704
run_t 16 704
echo "= = =" >> "$OUT"

export KMP_AFFINITY=scatter
echo "$KMP_AFFINITY" >> "$OUT"

run_t 1 128
run_t 2 128
run_t 4 128
run_t 8 128
run_t 16 128
echo "= = =" >> "$OUT"

run_t 4 256
run_t 8 256
run_t 16 256
echo "= = =" >> "$OUT"

run_t 4 512
run_t 8 512
run_t 16 512
echo "= = =" >> "$OUT"

run_t 4 704
run_t 8 704
run_t 16 704
echo "= = =" >> "$OUT"
