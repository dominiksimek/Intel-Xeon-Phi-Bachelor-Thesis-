#!/usr/bin/env bash

OUT="1024_scaling_results2.txt"

export OMP_NUM_THREADS=1
echo $OMP_NUM_THREADS >> $OUT
make run >> $OUT
echo >> $OUT
echo "============================================================" >> $OUT
echo >> $OUT

export OMP_NUM_THREADS=2
echo $OMP_NUM_THREADS >> $OUT
make run >> $OUT
echo >> $OUT
echo "============================================================" >> $OUT
echo >> $OUT

export OMP_NUM_THREADS=4
echo $OMP_NUM_THREADS >> $OUT
make run >> $OUT
echo >> $OUT
echo "============================================================" >> $OUT
echo >> $OUT

export OMP_NUM_THREADS=8
echo $OMP_NUM_THREADS >> $OUT
make run >> $OUT
echo >> $OUT
echo "============================================================" >> $OUT
echo >> $OUT

export OMP_NUM_THREADS=16
echo $OMP_NUM_THREADS >> $OUT
make run >> $OUT
