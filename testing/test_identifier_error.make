HOST = gcc
#HOST = gcc-openmp

PROJECT = int2-test-identifier-error

# FC - fortran compiler
# FFLAGS - fortran compiler flags

ifeq ($(HOST),gcc)
    FC=gfortran -w
    FFLAGS=-fPIC -O3 -funroll-loops -march=native -std=legacy 
endif

ifeq ($(HOST),gcc-openmp)
    FC = gfortran 
    FFLAGS=-fPIC -O3 -funroll-loops -march=native -fopenmp -std=legacy
endif

# Test objects
#

.PHONY: all clean

default: identifier_error.o identifier_error.c mexfile

identifier_error.o: identifier_error.f
	$(FC) $(FFLAGS) -c -o identifier_error.o identifier_error.f

# mex Laplace routine for debugging
MWRAP = ~/mwrap/mwrap
FDIR=$$(dirname `gfortran --print-file-name libgfortran.dylib`)
MFLAGS += -L${FDIR}
MEX = $(shell ls -d /Applications/MATLAB_R20**.app)/bin/mex
identifier_error.c: identifier_error.mw
	$(MWRAP) -c99complex -mex identifier_error -mb -list identifier_error.mw
	$(MWRAP) -c99complex -mex identifier_error -c identifier_error.c identifier_error.mw
mexfile: identifier_error.c identifier_error.o 
	$(MEX) identifier_error.c identifier_error.o -largeArrayDims $(MFLAGS) -lgfortran -lm -lstdc++

# implicit rules for objects (note -o ensures writes to correct dir)
%.o: %.f %.h
	$(FC) -c $(FFLAGS) $< -o $@

clean: 
	rm -f identifier_error.o identifier_error.c *.mex* identifier_error_mex.m
