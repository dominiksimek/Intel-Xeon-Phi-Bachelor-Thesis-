#!/usr/bin/env python
# SCIPY DGEMM EXAMPLE
# Dominik Simek <xsimek23@stud.fit.vutbr.cz>
# Bachelor thesis
# FIT VUT 2015

import numpy as np
import scipy.linalg.blas as sp
import time
import os
import sys

#env = os.environ

if len(sys.argv) >= 2:
    K = int(sys.argv[1])
    M = K
    N = K
    ITER = 1
else:
    print "usage: python numpy_dgemm.py MATRIX_DIMENSION"
    sys.exit()

a1 = np.array(np.random.random((M, K)), dtype=np.double, order='C', copy=False)
a2 = np.array(np.random.random((K, N)), dtype=np.double, order='C', copy=False)

m1 = np.matrix(a1, dtype=np.double, copy=False)
m2 = np.matrix(a2, dtype=np.double, copy=False)

t_start = time.time()

for i in range(ITER):
    #mf2 = np.dot(m1, m2)
    #print "%d: dot(m1, m2)" % i
    mf2 = sp.dgemm(alpha=1.0, a=m1, b=m2)

t_end = time.time()

#print "= = = PYTHON NUMPY MKL = = ="
#print
print "dgemm(%dx%d, %dx%d), %d iterations" % (M, K, K, N, ITER)
print "dot(m1, m2): %f sec" % (t_end - t_start)
