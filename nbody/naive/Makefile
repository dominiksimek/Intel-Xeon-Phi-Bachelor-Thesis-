# N-Body Makefile
# Naive implementation
# Author: Dominik Simek <xsimek23@stud.fit.vubtr.cz>

CFLAGS=-lpapi -wd588 -ansi-alias
OPT=-O2 -xavx
REPORT=-vec-report3 -opt-report -opt-report-file opt_report.rpt

N=1000
DT=0.001f
STEPS=1000

PARAMS=-DN=$(N) -DDT=$(DT) -DSTEPS=$(STEPS)

INPUT=../input/10k.dat
OUTPUT=../output/naive-out.dat

#PAPI_EVENTS=PAPI_FP_OPS|PAPI_SP_OPS|PAPI_L1_DCM|PAPI_L2_DCM
PAPI_EVENTS=PAPI_L1_DCM|PAPI_L2_DCA|PAPI_L2_DCM|PAPI_SP_OPS

all:
	icpc $(CFLAGS) $(OPT) $(REPORT) $(PARAMS) -c nbody.cpp
	icpc $(CFLAGS) $(OPT) $(PARAMS) -S -fsource-asm -c nbody.cpp
	icpc $(CFLAGS) $(PARAMS) nbody.o main.cpp -o nbody
	icpc $(CFLAGS) gen.cpp -o gen

clean:
	rm -f *.o *.rpt *.s nbody gen

run:
	PAPI_EVENTS='perf::L1-DCACHE-LOADS|perf::L1-DCACHE-STORES|$(PAPI_EVENTS)' ./nbody $(INPUT) $(OUTPUT)
