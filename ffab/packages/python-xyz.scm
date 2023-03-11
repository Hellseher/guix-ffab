;;; GNU Guix --- Functional package management for GNU
;;; Copyright © 2021-2022 Sharlatan Hellseher <sharlatanus@gmail.com>
;;;
;;; This file is NOT part of GNU Guix.
;;;
;;; This program is free software: you can redistribute it and/or modify
;;; it under the terms of the GNU General Public License as published by
;;; the Free Software Foundation, either version 3 of the License, or
;;; (at your option) any later version.
;;;
;;; This program is distributed in the hope that it will be useful,
;;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;; GNU General Public License for more details.
;;;
;;; You should have received a copy of the GNU General Public License
;;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

(define-module (ffab packages python-xyz)
  #:use-module (ffab packages check)
  #:use-module (ffab packages python-check)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages astronomy)
  #:use-module (gnu packages base)
  #:use-module (gnu packages check)
  #:use-module (gnu packages commencement)
  #:use-module (gnu packages databases)
  #:use-module (gnu packages freedesktop)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages geo)
  #:use-module (gnu packages image)
  #:use-module (gnu packages python-build)
  #:use-module (gnu packages python-check)
  #:use-module (gnu packages python-compression)
  #:use-module (gnu packages python-crypto)
  #:use-module (gnu packages python-science)
  #:use-module (gnu packages python-web)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages serialization)
  #:use-module (gnu packages sphinx)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages time)
  #:use-module (gnu packages version-control)
  #:use-module (gnu packages xml)
  #:use-module (gnu packages)
  #:use-module (guix build-system python)
  #:use-module (guix build-system pyproject)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix utils)
  #:use-module (guix build utils)
  #:use-module (guix packages))

;; 20230212T194438+0000
(define-public python-gallia
  (package
    (name "python-gallia")
    ;; TODO: This is the latest version supporting current Guix's Python 3.9.
    ;; Update when more fresh Python is available.
    (version "1.0.3")
    (source
     (origin
       ;; There are no tests in the PyPI tarball.
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Fraunhofer-AISEC/gallia")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0nkzpy3cybpxbcm1hvnki7mnzpnb111p61i29cd3f4mf46g7g1ha"))))
    (build-system pyproject-build-system)
    (arguments
     (list #:phases
           #~(modify-phases %standard-phases
               ;; NOTE: Test steps are sourced from GitHub Actions attached to
               ;; the project. This is a minimal test suite, more precise tests
               ;; require setting up local service.
               (replace 'check
                 (lambda* (#:key tests? #:allow-other-keys)
                   (when tests?
                     (invoke "python" "-m" "pytest" "-v" "tests/python")))))))
    (native-inputs
     (list python-poetry-core
           python-pytest
           python-pytest-asyncio))
    (propagated-inputs
     (list python-aiohttp
           python-aiofiles-0.8
           python-aiosqlite
           python-argcomplete-next
           python-can
           python-construct
           python-tabulate
           python-zstandard-0.17
           ))
    (home-page "https://github.com/Fraunhofer-AISEC/gallia")
    (synopsis "Extendable Pentesting Framework")
    (description
     "Gallia is an extendable pentesting framework with the focus on the
automotive domain.  The scope of the toolchain is conducting penetration tests
from a single ECU up to whole cars.")
    (license license:apsl2)))

;; 20230212T200910+0000
;; For python-gallia@1.0.3
(define-public python-zstandard-0.17
  (package
    (inherit python-zstandard)
    (name "python-zstandard")
    (version "0.17.0")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "zstandard" version))
       (sha256
        (base32 "1dmzmx5k6zw8fhv9gp8hrdv8iqsb335w9pd358jgf7a4j75r94gs"))))))

;; 20230212T201907+0000
(define-public python-argcomplete-next
  (package
    (inherit python-argcomplete)
    (name "python-argcomplete")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "argcomplete" version))
       (sha256
        (base32 "082v88i9s6rglm7fkksm2wwmni386qjsw60l20sj0rlxr1waswk3"))))))

;; 20230212T202602+0000
;; For python-gallia@1.0.3
(define-public python-aiofiles-0.8
  (package
    (inherit python-aiofiles)
    (name "python-aiofiles")
    (version "0.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "aiofiles" version))
       (sha256
        (base32 "0n8yj2d4srlkrhk72fcnkfb3jkv74a5aghxjhcp3p2i46lrg4d43"))))))

;; 20221104T210916+0000
(define-public python-portalocker
  (package
    (name "python-portalocker")
    (version "2.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "portalocker" version))
       (sha256
        (base32
         "0fbvx46nix49vpriipsdskbw2243gp9rxsdw69flp9s2zcq6hkwn"))))
    (build-system python-build-system)
    (arguments
     (list
      #:phases
      #~(modify-phases %standard-phases
          (replace 'check
            (lambda* (#:key tests? #:allow-other-keys)
              (when tests?
                (invoke "pytest" "-vv")))))))
    (native-inputs
     (list python-pytest
           python-pytest-cov
           python-pytest-flake8
           python-pytest-mypy
           python-redis
           python-sphinx))
    (home-page "https://github.com/WoLpH/portalocker")
    (synopsis "Python library to provide an API to file locking")
    (description
     "This package provides POSIX file locking with support of Redis to
distibute locks across multiple computers.")
    (license license:psfl)))

;; 20221104T210922+0000
(define-public python-py3amf
  (package
    (name "python-py3amf")
    (version "0.8.10")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "Py3AMF" version))
       (sha256
        (base32 "0b4m94qjncl4rk6ig329vfk60dbb0b1wvs2lwr8m7bwxl0s2vb3d"))))
    (build-system python-build-system)
    (propagated-inputs (list python-defusedxml))
    (home-page "https://github.com/StdCarrot/Py3AMF")
    (synopsis "AMF support for Python3")
    (description
     "This package provides a Python module Py3AMF which is a fork of PyAMF
with support of Python v3+.")
    (license license:expat)))

;; 20220513T200612+0100
(define-public python-parsley
  (package
    (name "python-parsley")
    (version "1.3")
    (source
     (origin
       ;; The source distributed on PyPI is outdated.
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/pyga/parsley")
             (commit version)))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0550rw65ygqzbjc8a66hs355pzbx727kbn20dssdb6ls846gw2qs"))))
    (build-system python-build-system)
    (arguments
     (list
      #:phases
      #~(modify-phases %standard-phases
          ;; Examples directorie has outdated tests which break after main tests
          ;; have been passed. Removing them before run tests.
          (add-before 'check 'drop-examples-from-tests
            (lambda _
              (delete-file-recursively "examples")
              #t))
          (replace 'check
            (lambda* (#:key tests? #:allow-other-keys)
              (when tests?
                (invoke "pytest" "-vv")))))))
    (native-inputs
     (list python-pytest
           python-twisted))
    (home-page "https://launchpad.net/parsley")
    (synopsis "Parsing and pattern matching Python library")
    (description
     "Parsley is an implementation of OMeta, an object-oriented pattern-matching
language developed by Alessandro Warth at http://tinlizzie.org/ometa/")
    (license license:expat)))

;; 20220621T191218+0100
;; (define-public python-posix-ipc
;; added-to-upstream b12da85668c40be322204e1ca04fb70b4d709411
;; CommitDate: Fri Aug 5 21:08:49 2022 +0300

;; 20220621T222117+0100
(define-public python-progressbar
  (package
    (name "python-progressbar")
    (version "2.5")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "progressbar" version))
       (sha256
        (base32 "0qvckfpkdk7a35r9lc201rkwc18grb4ddbv276sj7qm2km9cp0ax"))))
    (build-system python-build-system)
    (home-page "https://github.com/niltonvolpato/python-progressbar")
    (synopsis "Text progress bar library for Python")
    (description "Text progress bar library for Python with auto-resizing feature.")
    ;; python-progressbar/LICENSE.txt
    ;; You can redistribute and/or modify this library under the terms of the
    ;; GNU LGPL license or BSD license (or both).
    (license (list license:lgpl2.0+ license:bsd-3))))

;; 20220627T220024+0100
;; (define-public python-glymur
;; added-to-upstream 95ed62c12bb33f6b64daf2f51df0e610f1abc913
;; CommitDate: Fri Jul 8 23:58:12 2022 +0200

;; 20220702T095332+0100
;; (define-public python-h5netcdf
;; added-to-upstream 3bd2b1b544c45e5e341010e48bcedcb0ba593480
;; CommitDate: Thu Aug 4 12:05:53 2022 +0200

;; 20221012T205858+0100
;; (define-public python-siosocks
;; added-to-upstream 5ed098095dbabbc93b5a8b6a1f24c61517f87d2d
;; CommitDate: Mon Nov 7 20:29:18 2022 +0100

;; 20221011T224747+0100
;; (define-public python-aioftp
;; added-to-upstream b0db0b2b2d3c6d5fecb6c7727b3173c21b896540
;; CommitDate: Mon Nov 7 20:29:21 2022 +0100

;; 20221010T225525+0100
;; (define-public parfive
;; added-to-upstream 472917ea6c479b3546ffaea02f755ed9c6e8d46b
;; CommitDate: Mon Nov 7 20:29:21 2022 +0100

;; 20221109T101311+0000
(define-public python-towncrier
  (package
    (name "python-towncrier")
    (version "22.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "towncrier" version))
       (sha256
        (base32 "0k83cisk139v28mjsa819b8qz733q45lr45f0bm9lsk4bzkxfjcw"))))
    (build-system pyproject-build-system)
    (arguments
     (list
      #:phases
      #~(modify-phases %standard-phases
          ;; FIXME: (Sharlatan-20221109T225359+0000): Failing test
          ;;
          ;; E   twisted.trial.unittest.FailTest: False is not true
          ;;
          (add-before 'check 'disable-failing-tests
            (lambda _
              (substitute* "src/towncrier/test/test_project.py"
                (("def test_version")  "def __off_test_version")))))))
    (propagated-inputs
     (list python-click
           python-click-default-group
           python-incremental
           python-jinja2
           python-tomli))
    (native-inputs (list python-packaging python-twisted python-pytest-7.1 git))
    (home-page "https://github.com/twisted/towncrier")
    (synopsis "Manage the release notes for your project")
    (description
     "@code{towncrier} is a utility to produce useful, summarized news files
(also known as changelogs) for your project.

Rather than reading the Git history, or having one single file which developers
all write to and produce merge conflicts, @code{towncrier} reads \"news
fragments\" which contain information useful to end users.")
    (license license:expat)))

;; 20230301T210252+0000
(define-public python-czml3
  (package
    (name "python-czml3")
    (version "0.7.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/poliastro/czml3")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0pbwcsmc9nw591rck586ca9hwwhmm54rjjmp8gflhzq8b7f48lkc"))))
    (build-system pyproject-build-system)
    (propagated-inputs
     (list python-attrs
           python-dateutil
           python-w3lib))
    (native-inputs
     (list python-astropy
           python-pytest
           python-pytest-cov
           python-pytest-mypy))
    (home-page "https://github.com/poliastro/czml3")
    (synopsis "Python library to write CZML")
    (description
     "Python 3 library to write CZML, a JSON format for describing a
time-dynamic graphical scene, primarily for display in a web browser running
Cesium.")
    (license license:expat)))

;; 20230308T213240+0000
(define-public python-plotly-ffab
  (package
    (name "python-plotly-ffab")
    (version "5.6.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/plotly/plotly.py")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0kc9v5ampq2paw6sls6zdchvqvis7b1z8xhdvlhz5xxdr1vj5xnn"))))
    (build-system pyproject-build-system)
    (arguments
     (list
      #:phases
      #~(modify-phases %standard-phases
          (add-before 'build 'skip-npm
            ;; npm is not packaged so build without it
            (lambda _
              (setenv "SKIP_NPM" "T")))
          (add-after 'unpack 'fix-version
            ;; Versioneer is useless when there is no git metadata.
            (lambda _
              (substitute* "packages/python/plotly/setup.py"
                (("version=versioneer.get_version\\(),")
                 (format #f "version=~s," #$version)))))
          (add-after 'fix-version 'chdir
            (lambda _
              (chdir "packages/python/plotly")))
          (replace 'check
            (lambda* (#:key tests? #:allow-other-keys)
              (when tests?
                (invoke "pytest" "-x" "plotly/tests/test_core")
                (invoke "pytest" "-x" "plotly/tests/test_io")
                ;; FIXME: Add optional dependencies and enable their tests.
                ;; (invoke "pytest" "-x" "plotly/tests/test_optional")
                (invoke "pytest" "_plotly_utils/tests")))))))
    (native-inputs
     (list python-ipywidgets python-pytest python-xarray))
    (propagated-inputs
     (list python-ipython
           python-pandas
           python-pillow
           python-requests
           python-retrying
           python-six
           python-tenacity
           python-statsmodels))
    (home-page "https://plotly.com/python/")
    (synopsis "Interactive plotting library for Python")
    (description "Plotly's Python graphing library makes interactive,
publication-quality graphs online.  Examples of how to make line plots, scatter
plots, area charts, bar charts, error bars, box plots, histograms, heatmaps,
subplots, multiple-axes, polar charts, and bubble charts.")
    (license license:expat)))
