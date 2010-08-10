SUBDIRS = src test

.PHONY: all $(SUBDIRS)

all: $(SUBDIRS)
clean: $(SUBDIRS)

src:
	@$(MAKE) -C src $(MAKECMDGOALS)

test:
	@$(MAKE) -C test $(MAKECMDGOALS)

.DEFAULT: all
