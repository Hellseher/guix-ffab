# File : Makefile
# Created : <2022-06-18 Sat 16:42:16 BST>
# Modified : <2022-07-06 Wed 21:49:46 BST>

PKGS_ALL ?= $(shell grep -r "^.define-public" ffab | cut -d' ' -f2)

ASTRONOMY_PKGS ?= $(shell grep "^.define-public" ffab/packages/astronomy.scm | cut -d' ' -f2)
LISP_PKGS ?= $(shell grep "^.define-public" ffab/packages/lisp*.scm | cut -d' ' -f2)
PYTHON_PKGS ?= $(shell grep "^.define-public" ffab/packages/python-*.scm | cut -d' ' -f2)

GUIX_FLAGS ?= --load-path=./
GUIX_BUILD_FLAGS ?= $(GUIX_FLAGS) --rounds=2 --cores=0
GUIX_LINT_FLAGS ?= $(GUIX_FLAGS)
GUIX_REFRESH_FLAGS ?= $(GUIX_FLAGS)

ifdef CI_BUILD
$(info :status ci-environemt)
GUIX_BUILD_FLAGS += --keep-going --quiet
else
GUIX_BUILD_FLAGS += --check --no-substitutes --keep-failed
endif

.PHONY: all
all: list lint build

.PHONY: buld
build: python-build

.PHONY: lint
lint: python-lint

.PHONY: list
list:
	$(info --- python-packages-count: $(words $(PYTHON_PKGS)) ---)
	$(info $(sort $(PYTHON_PKGS)))
	$(info --- astronomy-packages-count: $(words $(ASTRONOMY_PKGS)) ---)
	$(info $(sort $(ASTRONOMY_PKGS)))
	$(info --- lisp-packages-count: $(words $(LISP_PKGS)) ---)
	$(info $(sort $(LISP_PKGS)))

.PHONY: python-lint
python-lint:
	guix lint $(GUIX_LINT_FLAGS) $(PYTHON_PKGS)

.PHONY: python-build
python-build:
	guix build $(GUIX_BUILD_FLAGS) $(PYTHON_PKGS)

.PHONY: astronomy-lint
astronomy-lint:
	guix lint $(GUIX_LINT_FLAGS) $(ASTRONOMY_PKGS)

.PHONY: astronomy-build
astronomy-build:
	guix build $(GUIX_BUILD_FLAGS) $(ASTRONOMY_PKGS)

.PHONY: lisp-lint
lisp-lint:
	guix lint $(GUIX_LINT_FLAGS) $(LISP_PKGS)

.PHONY: lisp-build
lisp-build:
	guix build $(GUIX_BUILD_FLAGS) $(LISP_PKGS)

# End of Makefile
