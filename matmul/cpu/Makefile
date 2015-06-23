CFLAGS=-mkl -openmp -lpapi
OPT=-O2 -xavx

all:
	icpc $(CFLAGS) $(OPT) c_dgemm.c -o c_dgemm

clean:
	rm -f *.o c_dgemm

run:
	./c_dgemm 1024
