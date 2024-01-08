
include $(MAKO_ROOT)/util.mk

define DEPS
	$(REPO_ROOT)/deps/bats
endef

ifeq "$(MAKO_STAGE)" "main"

DEFAULT_TARGETS := all
DEFAULT_PREREQS := 
.PHONY: all
all:
	./core/standard_script
	./core/dedup_colon_separated_string

endif

include $(MAKO_ROOT)/component.mk
