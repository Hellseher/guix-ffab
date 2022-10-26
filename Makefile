# File : Makefile
# Created : <2022-06-18 Sat 16:42:16 BST>
# Modified : <2022-10-26 Wed 22:36:37 BST>

# TODO: (Sharlatan-20221026T202843+0100): Find the way how to re-build versioned
# package e.g. python-pytest-7.1, exclude them for now.
PKGS_ACCEPTED_TOTAL ?= $(shell grep -r ";.*define-public" ffab | cut -d' ' -f3 | sed -e '/.*\..*/d')
PKGS_TOTAL ?= $(shell grep -r "^.define-public" ffab | cut -d' ' -f2)

PKGS_ASTRONOMY ?= $(shell grep "^.define-public" ffab/packages/astronomy.scm | cut -d' ' -f2)
PKGS_LISP ?= $(shell grep "^.define-public" ffab/packages/lisp*.scm | cut -d' ' -f2)
PKGS_PYTHON ?= $(shell grep "^.define-public" ffab/packages/python-*.scm | cut -d' ' -f2)
PKGS_GOLANG ?= $(shell grep "^.define-public" ffab/packages/golang*.scm | cut -d' ' -f2)

# Add each group of packages to this macros when all pending changes are
# completed in corresponded WIP branch.
PKGS := $(PKGS_PYTHON)

GUIX_FLAGS ?= --load-path=./
GUIX_BUILD_FLAGS ?= $(GUIX_FLAGS) --rounds=2 --cores=0
GUIX_LINT_FLAGS ?= $(GUIX_FLAGS)
GUIX_REFRESH_FLAGS ?= $(GUIX_FLAGS)

# Make sure we have reproducible build process pinned to the upstream Guix
# commit, update on any major changes.
GUIX_COMMIT ?= 1f734a6f0a7db5b0e12091a0c869c5c4810ac80e
GUIX := guix time-machine --commit=$(GUIX_COMMIT) --

ifdef CI_BUILD
$(info :status ci-environemt)
GUIX_BUILD_FLAGS += --keep-going --quiet
else
GUIX_BUILD_FLAGS += --keep-failed
endif

GUIX_BUILD_PROBE_FLAGS ?=	\
--check						\
--cores=0					\
--keep-going				\
--max-jobs=6				\
--no-substitutes			\
--rounds=2

.PHONY: all
all: list lint build

.PHONY: list
list:
	$(info :guix-commit $(GUIX_COMMIT))
	$(info :accepted-packages $(words $(PKGS_ACCEPTED_TOTAL)))
	$(info :pending-packages $(words $(PKGS_TOTAL)))
	$(info )
	$(info :astronomy-packages $(words $(PKGS_ASTRONOMY)))
	$(info :golang-packages $(words $(PKGS_GOLANG)))
	$(info :lisp-packages $(words $(PKGS_LISP)))
	$(info :python-packages $(words $(PKGS_PYTHON)))

.PHONY: lint
lint:
	$(GUIX) lint $(GUIX_LINT_FLAGS) $(PKGS)

.PHONY: build
build:
	$(GUIX) build $(GUIX_BUILD_FLAGS) $(PKGS)

# Try to lint and rebuild accepted packages to make sure they are in good state
# and whether update is required
PHONY: probe
probe:
	$(GUIX) lint $(GUIX_LINT_FLAGS) $(PKGS)
	$(GUIX) build $(GUIX_BUILD_PROBE_FLAGS) $(PKGS_ACCEPTED_TOTAL)

# End of Makefile
