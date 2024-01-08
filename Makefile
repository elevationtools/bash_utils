
.PHONY: test
test: submodules
	. ./activate.sh && mako -C test

.PHONY: submodules
submodules:
	git submodule update --init --recursive

