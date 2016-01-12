PYTHON_MK_FILENAME := $(realpath $(lastword $(MAKEFILE_LIST)))
PYTHON_MK_ROOT := $(patsubst %/,%,$(dir $(PYTHON_MK_FILENAME)))

SHELL = $(PYTHON_MK_ROOT)/python.sh
export SHELL

.SHELLFLAGS =
export .SHELLFLAGS
