#!/usr/bin/env bash

# MKL test for C version

echo "= = = = = = = = = = = = = = = = = = = ="
echo "= = = = = = C VERSION DGEMM = = = = = ="
echo "= = = = = = = = = = = = = = = = = = = ="
echo

TEST=1

test_prc()
{
    echo "Test $TEST: C version with MKL"
    echo "Test $TEST: (processor version)"
    echo "Test $TEST: $OMP_NUM_THREADS threads"

    ./c_dgemm $1

    echo "Test $TEST: complete"
    echo -e "\n====================\n"

    TEST=$((TEST + 1))
}

export MKL_MIC_ENABLE=0
export OFFLOAD_REPORT=2
export OMP_NUM_THREADS=8
export KMP_AFFINITY=compact

test_prc 1024

test_prc 2048

test_prc 4096

test_prc 8192

test_prc 16384

echo "* * * * * * * * * * * * * * * * * * * *"
echo "* * * * * * C VERSION END * * * * * * *"
echo "* * * * * * * * * * * * * * * * * * * *"
echo

