SUBDIRS = unit integration
     
.PHONY: clean subdirs $(SUBDIRS)
     
subdirs: $(SUBDIRS)
     
$(SUBDIRS):
	@$(MAKE) -C $@ $(MAKECMDGOALS)

test: $(SUBDIRS)
clean: $(SUBDIRS)
