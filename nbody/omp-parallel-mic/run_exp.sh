#!/usr/bin/env bash

INPUT="../3m.dat"
OUTPUT="../step0.dat"
RESULT="5k_scaling.txt"

unset KMP_AFFINITY

export OMP_NUM_THREADS=1
echo $OMP_NUM_THREADS >> $RESULT
./nbody $INPUT $OUTPUT >> $RESULT
echo >> $RESULT

export OMP_NUM_THREADS=2
echo $OMP_NUM_THREADS >> $RESULT
./nbody $INPUT $OUTPUT >> $RESULT
echo >> $RESULT

export OMP_NUM_THREADS=4
echo $OMP_NUM_THREADS >> $RESULT
./nbody $INPUT $OUTPUT >> $RESULT
echo >> $RESULT

export OMP_NUM_THREADS=8
echo $OMP_NUM_THREADS >> $RESULT
./nbody $INPUT $OUTPUT >> $RESULT
echo >> $RESULT

export OMP_NUM_THREADS=16
echo $OMP_NUM_THREADS >> $RESULT
./nbody $INPUT $OUTPUT >> $RESULT
echo >> $RESULT

export OMP_NUM_THREADS=30
echo $OMP_NUM_THREADS >> $RESULT
./nbody $INPUT $OUTPUT >> $RESULT
echo >> $RESULT

export OMP_NUM_THREADS=60
echo $OMP_NUM_THREADS >> $RESULT
./nbody $INPUT $OUTPUT >> $RESULT
echo >> $RESULT

export OMP_NUM_THREADS=120
echo $OMP_NUM_THREADS >> $RESULT
./nbody $INPUT $OUTPUT >> $RESULT
echo >> $RESULT

export OMP_NUM_THREADS=180
echo $OMP_NUM_THREADS >> $RESULT
./nbody $INPUT $OUTPUT >> $RESULT
echo >> $RESULT

export OMP_NUM_THREADS=240
echo $OMP_NUM_THREADS >> $RESULT
./nbody $INPUT $OUTPUT >> $RESULT
echo >> $RESULT
