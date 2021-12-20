# The compiler
FC = ifort

FCFLAGS2 = -g -fbacktrace -fbounds-check 
FCFLAGS = -O2 
OBFLAGS = -c


interpolate_age: interpolate_age.f90
	$(FC) -o interpolate_age $(FCFLAGS) interpolate_age.f90

