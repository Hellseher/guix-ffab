# File : Makefile
# Created : <2022-06-18 Sat 16:42:16 BST>
# Modified : <2022-10-27 Thu 10:11:55 BST>

# TODO: (Sharlatan-20221026T202843+0100): Find the way how to re-build versioned
# package e.g. python-pytest-7.1, exclude them for now.
PKGS_ACCEPTED ?= $(shell grep -r ";.*define-public" ffab | cut -d' ' -f3 | sed -e '/.*\..*/d')
PKGS_PENDING ?= $(shell grep -r "^.define-public" ffab | cut -d' ' -f2)

PKGS_ASTRONOMY ?= $(shell grep "^.define-public" ffab/packages/astronomy.scm | cut -d' ' -f2 | sed -e '/.*\..*/d')
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
#
# As seen in `guix describe`:
# Generation 348  Oct 27 2022 10:07:53    (current)
# guix 95d44c0
#   repository URL: https://git.savannah.gnu.org/git/guix.git
#   branch: master
#   commit: 95d44c0586873d79e897e1f84f7644bdd4696a58
GUIX_COMMIT ?= 95d44c0586873d79e897e1f84f7644bdd4696a58
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
	$(info :accepted $(words $(PKGS_ACCEPTED)))
	$(info :pending $(words $(PKGS_PENDING)))
	$(info )
	$(info :astronomy $(words $(PKGS_ASTRONOMY)))
	$(info :golang $(words $(PKGS_GOLANG)))
	$(info :lisp $(words $(PKGS_LISP)))
	$(info :python $(words $(PKGS_PYTHON)))

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
	$(GUIX) lint $(GUIX_LINT_FLAGS) $(PKGS_ACCEPTED)
	$(GUIX) build $(GUIX_BUILD_PROBE_FLAGS) $(PKGS_ACCEPTED)

# End of Makefile
