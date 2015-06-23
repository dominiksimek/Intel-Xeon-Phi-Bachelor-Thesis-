BIN1=fftw-3d-omp
CXX=icpc
CXXFLAGS=-O3 -std=c11 -openmp -lpapi -Wall -I$(MKL_INC_DIR) -I$(MKL_INC_DIR)/fftw -I./
LDFLAGS=-O3 -openmp -Wl,-rpath,:$(FFT_DIR)/lib -mkl=parallel -lpapi
LIBS=-lm -lpapi

all: $(BIN1) $(BIN2)

$(BIN1): fftw-3d-omp.o
	$(CXX) $(LDFLAGS) fftw-3d-omp.o $(LIBS) -o $@

$(BIN1).o: $(BIN1).c
	$(CXX) $(CXXFLAGS) -c $(BIN1).c

run:
	OMP_NUM_THREADS=4 ./fftw-3d-omp 128

clean:
	rm -f fftw-3d-omp *.o

