# File : Makefile
# Created : <2022-06-18 Sat 16:42:16 BST>
# Modified : <2022-06-18 Sat 17:05:21 BST>

FFAB_PACKAGES := $(shell grep -r define-public ffab/ | grep -v ';' | cut -d' ' -f2 | sort)

.PHONY: all

all: check

${FFAB_PACKAGES}:
	guix build  -L . $@

check:
	guix build -L . casacore-data

# End of Makefile
