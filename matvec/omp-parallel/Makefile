# Matvec Makefile
# Omp-parallel
# Author: Dominik Simek <xsimek23@stud.fit.vubtr.cz>

CFLAGS=-wd588 -ansi-alias -openmp -lpapi
OPT=-O2 -xavx
REPORT=-vec-report3 -opt-report-file opt_report.rpt

ROWS=1024
COLS=1024
PADDING=0
RUNS=10000

PARAMS=-DROWS=$(ROWS) -DCOLS=$(COLS) -DPADDING=$(PADDING) -DRUNS=$(RUNS)

#PAPI_EVENTS=PAPI_FP_OPS|PAPI_SP_OPS|PAPI_L1_DCM|PAPI_L2_DCM
PAPI_EVENTS=PAPI_L1_DCM|PAPI_L2_DCA|PAPI_L2_DCM|PAPI_SP_OPS

all:
	icpc $(CFLAGS) $(OPT) $(REPORT) -c matvec.cpp
	icpc $(CFLAGS) $(OPT) -S -fsource-asm -c matvec.cpp
	icpc $(CFLAGS) $(OPT) $(PARAMS) matvec.o main.cpp -o matvec

clean:
	rm -f *.o *.s *.rpt matvec

run:
	PAPI_EVENTS='perf::L1-DCACHE-LOADS|perf::L1-DCACHE-STORES|$(PAPI_EVENTS)' ./matvec
