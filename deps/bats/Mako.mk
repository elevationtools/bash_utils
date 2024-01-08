
include $(MAKO_ROOT)/dep.mk

ifeq "$(MAKO_STAGE)" "main"

Linux-x86_64 Darwin-x86_64:
	git clone https://github.com/sstephenson/bats.git genfiles/git_repo
	cd genfiles/git_repo && ./install.sh ../install_dir

endif

