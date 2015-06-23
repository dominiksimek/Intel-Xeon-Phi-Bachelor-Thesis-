# N-Body Makefile
# Omp Parallel MIC
# Author: Dominik Simek <xsimek23@stud.fit.vubtr.cz>

CFLAGS=-mmic -wd588 -ansi-alias -openmp
OPT=-O2
REPORT=-vec-report3 -opt-report -opt-report-file opt_report.rpt

N=5000
DT=0.001f
STEPS=100

PARAMS=-DN=$(N) -DDT=$(DT) -DSTEPS=$(STEPS)

INPUT=../input/1m.dat
OUTPUT=../output/omp-mic-out.dat

PAPI_EVENTS=PAPI_FP_OPS|PAPI_SP_OPS|PAPI_L1_DCM|PAPI_L2_DCM

all:
	icpc $(CFLAGS) $(OPT) $(REPORT) $(PARAMS) -c nbody.cpp
	icpc $(CFLAGS) $(OPT) $(PARAMS) -S -fsource-asm -c nbody.cpp
	icpc $(CFLAGS) $(PARAMS) nbody.o main.cpp -o nbody
	icpc $(CFLAGS) gen.cpp -o gen

clean:
	rm -f *.o *.rpt *.s nbody gen

run:
	PAPI_EVENTS='$(PAPI_EVENTS)' ./nbody $(INPUT) $(OUTPUT)
