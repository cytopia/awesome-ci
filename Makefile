# Unix Makefile

# Configuration
SHELL = /bin/sh

MKDIR_P = mkdir -p

# Check if './configure' has been run
ifneq ("$(wildcard configure.in)","")
CONFIGURED = 1
include configure.in
else
CONFIGURED = 0
endif


all:

ifeq ($(CONFIGURED),0)
$(error Not configured, run ./configure)
endif


	@echo "Nothing to make."
	@echo "Type 'make install'"


help:
	@echo Options
	@echo "   make install"
	@echo "      Install everthing (requires sudo or root)"
	@echo ""
	@echo "   make clean"
	@echo "      Clean build"
	@echo ""
	@echo "   make help"
	@echo "      Show this help screen"


install:


	@echo "Installing files"
	@echo ""

	@# Create directories
	${MKDIR_P} $(BINDIR)

	@# Install binary
	install -m 0755 dependencies/* $(BINDIR)/
	install -m 0755 bin/* $(BINDIR)/


	@echo "Installation complete:"
	@echo "----------------------------------------------------------------------"
	@echo ""


clean:

	rm -f configure.in
