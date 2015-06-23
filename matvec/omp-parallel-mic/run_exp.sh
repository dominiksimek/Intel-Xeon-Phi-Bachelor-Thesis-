#!/usr/bin/env bash

OUT="1024_scaling.txt"

export OMP_NUM_THREADS=1
echo $OMP_NUM_THREADS >> $OUT
./matvec >> $OUT
echo >> $OUT
echo "============================================================" >> $OUT
echo >> $OUT

export OMP_NUM_THREADS=2
echo $OMP_NUM_THREADS >> $OUT
./matvec >> $OUT
echo >> $OUT
echo "============================================================" >> $OUT
echo >> $OUT

export OMP_NUM_THREADS=4
echo $OMP_NUM_THREADS >> $OUT
./matvec >> $OUT
echo >> $OUT
echo "============================================================" >> $OUT
echo >> $OUT

export OMP_NUM_THREADS=8
echo $OMP_NUM_THREADS >> $OUT
./matvec >> $OUT
echo "============================================================" >> $OUT
echo >> $OUT

export OMP_NUM_THREADS=16
echo $OMP_NUM_THREADS >> $OUT
./matvec >> $OUT
echo "============================================================" >> $OUT
echo >> $OUT

export OMP_NUM_THREADS=32
echo $OMP_NUM_THREADS >> $OUT
./matvec >> $OUT
echo "============================================================" >> $OUT
echo >> $OUT

export OMP_NUM_THREADS=60
echo $OMP_NUM_THREADS >> $OUT
./matvec >> $OUT
echo "============================================================" >> $OUT
echo >> $OUT

export OMP_NUM_THREADS=120
echo $OMP_NUM_THREADS >> $OUT
./matvec >> $OUT
echo "============================================================" >> $OUT
echo >> $OUT

export OMP_NUM_THREADS=180
echo $OMP_NUM_THREADS >> $OUT
./matvec >> $OUT
echo "============================================================" >> $OUT
echo >> $OUT

export OMP_NUM_THREADS=240
echo $OMP_NUM_THREADS >> $OUT
./matvec >> $OUT
echo "============================================================" >> $OUT
echo >> $OUT
