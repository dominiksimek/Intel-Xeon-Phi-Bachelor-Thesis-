CFLAGS=-mkl -openmp -mmic
OPT=-O2

all:
	icpc $(CFLAGS) $(OPT) c_dgemm.c -o c_dgemm

clean:
	rm -f *.o c_dgemm

run:
	./c_dgemm
