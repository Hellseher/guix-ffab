# File : Makefile
# Created : <2022-06-18 Sat 16:42:16 BST>
# Modified : <2024-04-14 Sun 22:27:46 BST>

GET_PUBLIC := grep "define-public"
FILTER_FLAVORS := | sed -e '/.*\..*/d' -e '/.*-next/d' -e '/.*-ffab/d'
FILTER_ACCEPTED := | grep ";;" | cut -d' ' -f3 $(FILTER_FLAVORS)
FILTER_PENDING := | grep -v ";;" | cut -d' ' -f2 $(FILTER_FLAVORS)

fp := ;;% %-next %-ffab

ASTRONOMY :=	\
ffab/packages/astronomy.scm

JULIA :=			\
ffab/packages/julia-xyz.scm	\
ffab/packages/julia-jll.scm	\

GOLANG :=					\
ffab/packages/docker.scm			\
ffab/packages/golang.scm			\
ffab/packages/golang-web.scm		\
ffab/packages/terraform.scm

LISP :=						\
ffab/packages/game-development.scm	\
ffab/packages/lisp-check.scm		\
ffab/packages/lisp-xyz.scm			\
ffab/packages/lisp.scm

PYTHON :=				\
ffab/packages/python-xyz.scm	\
ffab/packages/python-web.scm	\
ffab/packages/python-check.scm	\
ffab/packages/sphinx.scm

CATEGORIES := $(ASTRONOMY) $(JULIA) $(GOLANG) $(LISP) $(PYTHON)

MISC :=	$(filter-out $(CATEGORIES), $(wildcard ffab/packages/*.scm))

MODULES := $(CATEGORIES) $(MISC)

# TODO: (Sharlatan-20221026T202843+0100): Find the way how to re-build versioned
# package e.g. python-pytest-7.1, exclude them for now.
PKGS_ACCEPTED ?= $(shell $(GET_PUBLIC) $(MODULES) $(FILTER_ACCEPTED))
PKGS_PENDING ?= $(shell $(GET_PUBLIC) $(MODULES) $(FILTER_PENDING)))

PKGS_ASTRONOMY ?= $(shell $(GET_PUBLIC) $(ASTRONOMY) $(FILTER_PENDING))
PKGS_GOLANG ?= $(shell $(GET_PUBLIC) $(GOLANG) $(FILTER_PENDING))
PKGS_JULIA ?= $(shell $(GET_PUBLIC) $(JULIA) $(FILTER_PENDING))
PKGS_LISP ?= $(shell $(GET_PUBLIC) $(LISP) $(FILTER_PENDING))
PKGS_PYTHON ?= $(shell $(GET_PUBLIC) $(PYTHON) $(FILTER_PENDING))

PKGS_MISC ?= $(shell $(GET_PUBLIC) $(MISC) $(FILTER_PENDING))

# Add each group of packages to this macros when all pending changes are
# completed in corresponded WIP branch.
PKGS := $(PKGS_PYTHON) $(PKGS_ASTRONOMY) $(PKGS_LISP) $(PKGS_GOLANG)

GUIX_FLAGS ?= --load-path=./
GUIX_BUILD_FLAGS ?= $(GUIX_FLAGS)
GUIX_LINT_FLAGS ?= $(GUIX_FLAGS)

# Make sure we have reproducible build process pinned to the upstream Guix
# commit, update on any major changes as seen in `guix describe`.
GUIX_COMMIT ?= 42b4580f6bfcaab009a56e679bd6f3c408ef03c9
GUIX := guix time-machine --commit=$(GUIX_COMMIT) --

ifdef CI_BUILD
$(info :status ci-environemt)
GUIX_BUILD_FLAGS += --keep-going --quiet
else
GUIX_BUILD_FLAGS += --keep-failed --rounds=2 --cores=0
endif

GUIX_BUILD_PROBE_FLAGS ?=	\
$(GUIX_FLAGS) 				\
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
	$(info :accepted $(words $(PKGS_ACCEPTED)))
	$(info :pending $(words $(PKGS_PENDING)))
	$(info )
	$(info :astronomy $(words $(PKGS_ASTRONOMY)))
	$(info :golang $(words $(PKGS_GOLANG)))
	$(info :lisp $(words $(PKGS_LISP)))
	$(info :python $(words $(PKGS_PYTHON)))
	$(info :misc $(words $(PKGS_MISC)))
	$(info )
	@date

.PHONY: lint
lint:
	$(GUIX) lint $(GUIX_LINT_FLAGS) $(PKGS)

.PHONY: build
build:
	$(GUIX) build $(GUIX_BUILD_FLAGS) $(PKGS)

# Try to lint and rebuild accepted packages to make sure they are still in good
# state and whether update is required
.PHONY: probe
probe:
	$(GUIX) refresh $(PKGS_ACCEPTED) 2>&1 | grep "would be upgraded"
	$(GUIX) lint $(GUIX_LINT_FLAGS) $(PKGS_ACCEPTED)
	$(GUIX) build $(GUIX_BUILD_PROBE_FLAGS) $(PKGS_ACCEPTED)

# End of Makefile
