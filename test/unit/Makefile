PROGRAM = libmemcached_test
 
SRC = libmemcached_test.vala 
 
PKGS =  --pkg libmemcached
 
VALAC = valac
 
VALACOPTS = --vapidir=../../src 
 
BUILD_ROOT = 1

all: clean build run
test: clean build run
 
build:
	@$(VALAC) $(VALACOPTS) $(SRC) -o $(PROGRAM) $(PKGS)

run:
	@exec ./libmemcached_test

clean:
	@rm -v -fr *~ *.c *.dSYM $(PROGRAM)

