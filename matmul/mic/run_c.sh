#!/usr/bin/env bash

# MKL test for C version

echo "= = = = = = = = = = = = = = = = = = = ="
echo "= = = = = = C VERSION DGEMM = = = = = ="
echo "= = = = = = = = = = = = = = = = = = = ="
echo

TEST=1

test_mic()
{
    echo "Test $TEST: C version with MKL"
    echo "Test $TEST: (MIC version)"
    echo "Test $TEST: $OMP_NUM_THREADS threads"

    ./c_dgemm $1

    echo "Test $TEST: complete"
    echo -e "\n====================\n"

    TEST=$((TEST + 1))
}


#export MKL_MIC_ENABLE=0
#export OFFLOAD_REPORT=2
export OMP_NUM_THREADS=236
export KMP_AFFINITY=scatter

test_mic 1024

test_mic 2048

test_mic 4096

test_mic 8192

test_mic 16384

echo "* * * * * * * * * * * * * * * * * * * *"
echo "* * * * * * C VERSION END * * * * * * *"
echo "* * * * * * * * * * * * * * * * * * * *"
echo

