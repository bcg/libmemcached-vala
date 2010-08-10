PROGRAM = libmemcached_test
 
SRC = libmemcached_test.vala 
 
PKGS =  --pkg libmemcached
 
VALAC = valac
 
VALA_DEBUG_OPTS = -g --save-temps
VALACOPTS = --vapidir=./ $(VALA_DEBUG_OPTS)
 
BUILD_ROOT = 1
 
all:
	@$(VALAC) $(VALACOPTS) $(SRC) -o $(PROGRAM) $(PKGS)
 
release: clean
	@$(VALAC) -X -O2 $(SRC) -o main_release $(PKGS)
 
clean:
	@rm -fr *~ *.c *.dSYM $(PROGRAM)

