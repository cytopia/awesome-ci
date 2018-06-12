###
### Variables
###
SHELL = /bin/sh

MKDIR_P = mkdir -p

# If ./configure has been run, include configure.in
ifneq ("$(wildcard configure.in)","")
include configure.in
endif

# 'test' directory exists, therefore force make to run test
.PHONY: test


###
### Help
###
help:
	@echo Options
	@echo "   make test"
	@echo "      Test awesome-ci scripts"
	@echo ""
	@echo "   make install"
	@echo "      Install everthing (requires sudo or root)"
	@echo ""
	@echo "   make clean"
	@echo "      Clean build"
	@echo ""
	@echo "   make docker"
	@echo "      Build docker image"
	@echo ""
	@echo "   make help"
	@echo "      Show this help screen"


###
### Install
###
install:
ifeq ("$(wildcard configure.in)","")
	$(error Not configured, run ./configure)
	false
endif

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


###
### Clean
###
clean:
	rm -f configure.in


###
### Build docker image
###
docker:
	docker build -t cytopia/awesome-ci .


###
###
###
test:
	./test/test.sh



