# File : Makefile
# Created : <2022-06-18 Sat 16:42:16 BST>
# Modified : <2022-07-02 Sat 17:05:42 BST>

PKGS_ALL ?= $(shell grep -r define-public ffab/ | grep -v ';' | cut -d' ' -f2)
PKGS_PYTHON ?= $(shell grep -r define-public ffab/ | grep -v ';' | grep "python-" cut -d' ' -f2)

GUIX_FLAGS ?= --load-path=./
GUIX_BUILD_FLAGS ?= $(GUIX_FLAGS) --keep-failed --rounds=2
GUIX_LINT_FLAGS ?= $(GUIX_FLAGS)

.PHONY: all
all: list-pkgs $(PKGS)-lint

.PHONY: list-pkgs
list-pkgs:
	$(info packages-count: $(words $(PKGS)))
	$(info $(sort $(PKGS)))

$(PKGS)-lint:
	guix lint $(GUIX_LINT_FLAGS) $@

check:
	guix build $(GUIX_BUILD_FLAGS) casacore-data

# End of Makefile
