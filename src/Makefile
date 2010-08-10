PROGRAM = libmemcached_test
 
SRC = libmemcached_test.vala 
 
PKGS =  --pkg libmemcached
 
VALAC = valac
 
VALACOPTS = -g -v --vapidir=./ --save-temps
 
BUILD_ROOT = 1
 
all:
	@$(VALAC) $(VALACOPTS) $(SRC) -o $(PROGRAM) $(PKGS)
 
release: clean
	@$(VALAC) -X -O2 $(SRC) -o main_release $(PKGS)
 
clean:
	@rm -v -fr *~ *.c *.dSYM $(PROGRAM)

