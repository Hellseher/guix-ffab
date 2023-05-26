# File : Makefile
# Created : <2022-06-18 Sat 16:42:16 BST>
# Modified : <2023-05-26 Fri 20:50:23 BST>

GET_MODULES := grep "^.define-public"
FILTER_MODULES := | cut -d' ' -f2 | sed -e '/.*\..*/d' -e '/.*-next/d' -e '/.*-ffab/d'

MODULES_ASTRO :=	\
ffab/packages/astronomy.scm

MODULES_JULIA :=			\
ffab/packages/julia-xyz.scm	\
ffab/packages/julia-jll.scm	\

MODULES_PYTHON :=				\
ffab/packages/python-xyz.scm	\
ffab/packages/python-web.scm	\
ffab/packages/python-check.scm	\
ffab/packages/sphinx.scm

MODULES_GOLANG :=					\
ffab/packages/docker.scm			\
ffab/packages/golang.scm			\
ffab/packages/terraform.scm

MODULES_LISP :=						\
ffab/packages/game-development.scm	\
ffab/packages/lisp-check.scm		\
ffab/packages/lisp-xyz.scm			\
ffab/packages/lisp.scm

MODULES_MISC :=						\
ffab/packages/check.scm				\
ffab/packages/cinnamon.scm			\
ffab/packages/cran.scm				\
ffab/packages/cxx.scm				\
ffab/packages/databases.scm			\
ffab/packages/engineering.scm		\
ffab/packages/geo.scm				\
ffab/packages/gradle.scm			\
ffab/packages/high-availability.scm \
ffab/packages/image.scm				\
ffab/packages/java-xyz.scm			\
ffab/packages/maths.scm				\
ffab/packages/maven.scm				\
ffab/packages/ocaml-xyz.scm			\
ffab/packages/pascal.scm			\
ffab/packages/photo.scm				\
ffab/packages/rabbitmq.scm			\
ffab/packages/rust-app.scm			\
ffab/packages/tls.scm				\
ffab/packages/web.scm

# TODO: (Sharlatan-20221026T202843+0100): Find the way how to re-build versioned
# package e.g. python-pytest-7.1, exclude them for now.
PKGS_ACCEPTED ?= $(shell grep -r ";;..define-public" ffab | cut -d' ' -f3 | sed -e '/.*\..*/d')
PKGS_PENDING ?= $(shell grep -r "^.define-public" ffab | cut -d' ' -f2)

PKGS_ASTRONOMY ?= $(shell $(GET_MODULES) $(MODULES_ASTRO) $(FILTER_MODULES))
PKGS_GOLANG ?= $(shell $(GET_MODULES) $(MODULES_GOLANG) $(FILTER_MODULES))
PKGS_JULIA ?= $(shell $(GET_MODULES) $(MODULES_JULIA) $(FILTER_MODULES))
PKGS_LISP ?= $(shell $(GET_MODULES) $(MODULES_LISP) $(FILTER_MODULES))
PKGS_PYTHON ?= $(shell $(GET_MODULES) $(MODULES_PYTHON) $(FILTER_MODULES))

PKGS_MISC ?= $(shell $(GET_MODULES) $(MODULES_MISC) $(FILTER_MODULES))

# Add each group of packages to this macros when all pending changes are
# completed in corresponded WIP branch.
#PKGS := $(PKGS_PYTHON) $(PKGS_ASTRONOMY) $(PKGS_LISP) $(PKGS_GOLANG)
PKGS :=  $(PKGS_ASTRONOMY)

GUIX_FLAGS ?= --load-path=./
GUIX_BUILD_FLAGS ?= $(GUIX_FLAGS)
GUIX_LINT_FLAGS ?= $(GUIX_FLAGS)

# Make sure we have reproducible build process pinned to the upstream Guix
# commit, update on any major changes as seen in `guix describe`.
GUIX_COMMIT ?= b96b82bcd4bc24529941ff74a91432481f1a71b5
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
	@echo
	@echo :date $$(date)

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
