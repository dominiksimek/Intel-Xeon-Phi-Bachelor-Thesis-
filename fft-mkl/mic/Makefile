BIN1=fftw-3d-omp
#BIN2=fftw-3d-omp-bpage
CXX=icc -mmic
CXXFLAGS=-O3 -openmp -Wall -I$(MKL_INC_DIR) -I$(MKL_INC_DIR)/fftw -I./
LDFLAGS=-O3 -openmp -Wl,-rpath,:$(FFT_DIR)/lib -mkl=parallel
LIBS=-lm

all: $(BIN1) $(BIN2)

$(BIN1): fftw-3d-omp.o
	$(CXX) $(LDFLAGS) fftw-3d-omp.o $(LIBS) -o $@

$(BIN1).o: $(BIN1).c
	$(CXX) $(CXXFLAGS) -std=c99 -c $(BIN1).c

#$(BIN2): fftw-3d-omp-bpage.o
#	$(CXX) $(LDFLAGS) fftw-3d-omp-bpage.o $(LIBS) -o $@

#$(BIN2).o: $(BIN2).c
#	$(CXX) $(CXXFLAGS) -c $(BIN2).c

run:
	OMP_NUM_THREADS=4 ./fftw-3d-omp 128
#	OMP_NUM_THREADS=4 ./fftw-3d-omp-bpage 128

clean:
	rm -f fftw-3d-omp fftw-3d-omp-bpage *.o

