# File : Makefile
# Created : <2022-06-18 Sat 16:42:16 BST>
# Modified : <2022-06-20 Mon 21:37:54 BST>

PKGS ?= $(shell grep -r define-public ffab/ | grep -v ';' | cut -d' ' -f2 | sort)
GUIX_BUILD_FLAGS ?= --load-path=./ --keep-failed

.PHONY: all

all: $(PKGS)

$(PKGS):
	guix build  $(GUIX_BUILD_FLAGS) $@

check:
	guix build $(GUIX_BUILD_FLAGS) casacore-data

# End of Makefile
