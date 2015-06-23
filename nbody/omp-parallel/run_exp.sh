#!/usr/bin/env bash

INPUT="../3m.dat"
OUTPUT="../step0.dat"
RESULT="10k_miss.txt"

unset KMP_AFFINITY

export OMP_NUM_THREADS=1
echo $OMP_NUM_THREADS >> $RESULT
make run >> $RESULT
echo >> $RESULT

export OMP_NUM_THREADS=2
echo $OMP_NUM_THREADS >> $RESULT
make run >> $RESULT
echo >> $RESULT

export OMP_NUM_THREADS=4
echo $OMP_NUM_THREADS >> $RESULT
make run >> $RESULT
echo >> $RESULT

export OMP_NUM_THREADS=8
echo $OMP_NUM_THREADS >> $RESULT
make run >> $RESULT
echo >> $RESULT

export OMP_NUM_THREADS=16
echo $OMP_NUM_THREADS >> $RESULT
make run >> $RESULT
echo >> $RESULT
