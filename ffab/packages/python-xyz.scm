;;; GNU Guix --- Functional package management for GNU
;;; Copyright © 2021-2024 Sharlatan Hellseher <sharlatanus@gmail.com>
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
  #:use-module (gnu packages compression)
  #:use-module (gnu packages databases)
  #:use-module (gnu packages fontutils)
  #:use-module (gnu packages freedesktop)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages geo)
  #:use-module (gnu packages image)
  #:use-module (gnu packages image-processing)
  #:use-module (gnu packages libusb)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages python-build)
  #:use-module (gnu packages python-check)
  #:use-module (gnu packages python-compression)
  #:use-module (gnu packages python-crypto)
  #:use-module (gnu packages python-science)
  #:use-module (gnu packages python-web)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages qt)
  #:use-module (gnu packages xorg)
  #:use-module (gnu packages serialization)
  #:use-module (gnu packages sphinx)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages time)
  #:use-module (gnu packages version-control)
  #:use-module (gnu packages video)
  #:use-module (gnu packages xiph)
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
    ;; TODO: This is the latest version supporting current Guix's Python 3.10.
    ;; Update when more fresh Python is available.
    (version "1.4.0")
    (source
     (origin
       ;; There are no tests in the PyPI tarball.
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Fraunhofer-AISEC/gallia")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "09b972ib6r4sd7jg0lmsmffrk7dxlzv3s02g4lr05rvbvfwi48yj"))))
    (build-system pyproject-build-system)
    (arguments
     (list
      #:phases
      #~(modify-phases %standard-phases
          (add-after 'unpack 'relax-requirements
            (lambda _
              (substitute* "pyproject.toml"
                ;; python-aiofiles
                ((">=22.1,<24.0") "<=24.1.0")
                ;; python-msgspec
                ((">=0.11,<0.18") ">=0.18.6")
                ;; python-psutil
                (("5.9.4") "5.9.2")
                ;; python-platformdirs
                ((">=2.6,<4.0") ">=4.3.6")))))))
    (native-inputs
     (list python-poetry-core
           python-pytest
           python-pytest-asyncio))
    (propagated-inputs
     (list python-aiofiles
           python-aiohttp
           python-aiosqlite
           python-argcomplete
           python-can
           python-construct
           python-exitcode
           python-msgpack
           python-msgspec
           python-platformdirs
           python-psutil
           python-pydantic-2
           python-pygit2
           python-tabulate
           python-tomli
           python-zstandard))
    (home-page "https://github.com/Fraunhofer-AISEC/gallia")
    (synopsis "Extendable Pentesting Framework")
    (description
     "Gallia is an extendable pentesting framework with the focus on the
automotive domain.  The scope of the toolchain is conducting penetration tests
from a single ECU up to whole cars.")
    (license license:apsl2)))

;; 20240109T191926+0000
(define-public python-about-time
  ;; No release tags in VCS, no tests in PyPI archive, use the latest commit
  (let ((commit "bcabddd4c864d58b272a1d69b321ca9184ba45ac")
        (revision "0"))
    (package
      (name "python-about-time")
      (version (git-version "4.2.1" revision commit))
      (source
       (origin
         (method git-fetch) ;no tests in PyPi archive
         (uri (git-reference
               (url "https://github.com/rsalmei/about-time")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0gx69ha8vg5xcy09i2fsx0lh3mg9m7xqxr9z2agzz9cp2nl5f2vv"))))
      (build-system pyproject-build-system)
      (arguments
       (list
        #:phases
        #~(modify-phases %standard-phases
            (add-before 'build 'pretend-version
              (lambda _
                (setenv "SETUPTOOLS_SCM_PRETEND_VERSION"
                        #$(package-version this-package)))))))
      (native-inputs
       (list python-pytest))
      (home-page "https://github.com/rsalmei/about-time")
      (synopsis "Measure timing and throughput of code blocks")
      (description
       "@code{about-time} is a helper for tracking time and throughput of code
blocks, with beautiful human friendly renditions.

Key feature are:

@itemize
@item measure the duration of two or more blocks at the same time, including the
whole duration

@item instrument a code to cleanly retrieve durations in one line, to log or
send to time series databases

@item easily see human friendly durations in s (seconds), ms (milliseconds), µs
(microseconds) and even ns (nanoseconds)

@item easily see human friendly counts with SI prefixes like k, M, G, T, etc

@item measure the actual throughput of a block

@item easily see human friendly throughputs in @code{/second}, @code{/minute},
@code{/hour} or even @code{/day}, including SI prefixes
@end itemize")
      (license license:expat))))

;; 20240109T194103+0000
(define-public python-alive-progress
  (package
    (name "python-alive-progress")
    (version "3.1.5")
    (source
     (origin
       (method git-fetch) ;no tests in PyPi archive
       (uri (git-reference
             (url "https://github.com/rsalmei/alive-progress")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1rpjnmhwdgxcba95sw96k56ds3hi80zgrp1047yl876c1b8nb668"))))
    (build-system pyproject-build-system)
    (propagated-inputs
     (list python-about-time python-grapheme))
    (native-inputs
     (list python-click python-pytest))
    (home-page "https://github.com/rsalmei/alive-progress")
    (synopsis "Progress Bar, with real-time throughput, ETA, and animations")
    (description
     "This package provides a new kind of Progress Bar, with real-time throughput,
ETA, and very cool animations!")
    (license license:expat)))

;; 20231022T002437+0100
;; (define-public python-av
;; added-downstram-guix a59922dab6e2b957ca882113a231c1e318ee8269
;; CommitDate: Fri Jan 5 00:31:36 2024 -0500

;; 20231022T014831+0100
;; (define-public python-djitellopy
;; added-downstram-guix 2ef73c6bf5a6885153f2ab0594961878ee0dbf04
;; CommitDate: Fri Jan 5 00:31:36 2024 -0500

;; 20250403T082934+0100
(define-public python-exitcode
  (package
    (name "python-exitcode")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "exitcode" version))
       (sha256
        (base32 "01yybyi4pkvvf4382p28gh4lkxrcyl5vcx2xk95nbsb8011f37mw"))))
    (build-system pyproject-build-system)
    (arguments
     (list #:tests? #f)) ; no tests in PyPI or Git
    (native-inputs
     (list python-poetry-core
           python-setuptools))
    (home-page "https://github.com/rumpelsepp/exitcode")
    (synopsis "Preferred system exit codes as defined by sysexits.h")
    (description
     "This package implements a preferred system exit codes as defined by
@url{https://man.openbsd.org/sysexits, sysexits.h}. This library is inspired by
Rust's @url{https://docs.rs/exitcode, exitcode}.")
    (license license:expat)))

;; 20240104T162509+0000
(define-public python-pfzy
  (package
    (name "python-pfzy")
    (version "0.3.4")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "pfzy" version))
       (sha256
        (base32 "1wdkjkmwwg920ybmr46m1jry06fqxyc2v2r9wwc3ddhhvmjsfzki"))))
    (build-system pyproject-build-system)
    (propagated-inputs
     (list python-myst-parser))
    (native-inputs
     (list python-poetry-core python-pytest))
    (home-page "https://github.com/kazhala/pfzy")
    (synopsis "Python port of the fzy fuzzy string matching algorithm")
    (description
     "This package provides a Python port of the @code{fzy} fuzzy string matching
 algorithm.")
    (license license:expat)))

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

;; 20240606T223134+0100
(define python-pytplot
  (package
    (name "python-pytplot")
    (version "1.7.28")
    ;; pytplot source is dated and released under other name in PyPI, both
    ;; lead to the same GitHub homepage:
    ;; <https://pypi.org/project/pytplot-mpl-temp>
    ;; <https://pypi.org/project/pytplot>
    (source
     (origin
       (method git-fetch) ;no tests in PyPi archive
       (uri (git-reference
             (url "https://github.com/MAVENSDC/pytplot")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1ip1l5l68wf5iq0vrqmniy590v2bdrrrz3lcs9s8k4qwns45pzxl"))))
    (build-system pyproject-build-system)
    (arguments
     (list
      #:test-flags
      #~(list
         ;; E TypeError: 'CDFInfo' object is not subscriptable
         "-k" (string-append "not test_cdf_euv_read"
                        " and not test_cdf_swe_read"
                        " and not test_qt_import"
                        " and not test_math"))))
    (propagated-inputs
     (list python-cdflib
           python-bokeh
           python-dateutil
           python-matplotlib
           python-netcdf4
           python-numpy
           python-pandas
           python-pyqt
           ;; python-pyqtwebengine ; not packed, depens on Qt WebEngine
           python-scipy
           python-xarray))
    (native-inputs
     (list python-astropy
           python-mypy
           python-pytest
           python-pytest-cov))
    (home-page "https://github.com/MAVENSDC/pytplot")
    (synopsis "Implementation of IDL tplot libraries in Python")
    (description
     "Pytplot is an effort by the Laboratory for Atmospheric and Space Physics to
replicate the functionality IDL tplot library. It is a tool for manipulating,
analyzing, and plotting time series data. Primarily, it is focused on handling
lines and spectrograms from satellite data. It can plot using either Qt via
pytqtgraph, or using HTML files via Bokeh.
Featues:

@itemize
@item reads in data from a variety of sources (including netCDF and CDF file
readers)
@item stores data in a common format, alongside all of its metadata and plot
options
@item plots the data in a stacked time series plot with time as the common axis
@item easily add new axes
@item provides a list of simple commands to modify the plots (line styles,
colors, etc), or overplot two different variables
@item provides time series data analysis/manipulation routines
@item provides tools to enable mouse interactions with other python routines
@end itemize")
    (license license:expat)))

;; 20231011T015829+0100
(define-public python-can
  (package
    (name "python-can")
    (version "4.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "python-can" version))
       (sha256
        (base32 "0psrij2rx9jm7zlwr54rjb5nsxqxj342lvbb4x6kr7r82d30zmba"))))
    (build-system pyproject-build-system)
    (arguments
     (list
      #:test-flags
      ;; XXX: Tests requiring root access to configure interfaces.
      ;; See project's CI and test/open_vcan.sch
      #~(list "-k"
              (string-append "not test_dlc_less_than_eight"
                             " and not test_extended_message"
                             " and not test_fd_message"
                             " and not test_fd_message_with_brs"
                             " and not test_fileno"
                             " and not test_multiple_shutdown"
                             " and not test_no_message"
                             " and not test_remote_message"
                             " and not test_standard_message"
                             " and not test_sub_second_timestamp_resolution"
                             " and not test_timestamp"
                             " and not test_timestamp_is_absolute"
                             " and not test_unique_message_instances"
                             " and not test_dlc_less_than_eight"
                             " and not test_extended_message"
                             " and not test_fd_message"
                             " and not test_fd_message_with_brs"
                             " and not test_fileno"
                             " and not test_multiple_shutdown"
                             " and not test_no_message"
                             " and not test_remote_message"
                             " and not test_standard_message"
                             " and not test_sub_second_timestamp_resolution"
                             " and not test_timestamp"
                             " and not test_timestamp_is_absolute"
                             " and not test_unique_message_instances"))))
    (native-inputs
     (list python-canalystii
           python-coveralls
           python-hypothesis
           python-msgpack
           python-parameterized
           python-pyserial
           python-pytest
           python-pytest-timeout
           python-setuptools
           python-wheel))
    (propagated-inputs
     (list python-packaging
           python-msgpack
           python-typing-extensions
           python-wrapt))
    (home-page "https://github.com/hardbyte/python-can")
    (synopsis "Controller Area Network interface module for Python")
    (description
     "The @code{can} package provides controller area network support for Python
developers; providing common abstractions to different hardware devices, and a
suite of utilities for sending and receiving messages on a can bus.

The Controller Area Network is a bus standard designed to allow microcontrollers
and devices to communicate with each other.  It has priority based bus
arbitration and reliable deterministic communication. It is used in cars,
trucks, boats, wheelchairs and more.")
    (license license:gpl3+)))

;; 20231230T184513+0000
(define-public python-fastrlock
  (package
    (name "python-fastrlock")
    (version "0.8.2")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "fastrlock" version))
       (sha256
        (base32 "0sim32hnpp3g3dzy903dw7rim72xl5wi6lfq520dzi7rbhhwjkk4"))))
    (build-system pyproject-build-system)
    (home-page "https://github.com/scoder/fastrlock")
    (synopsis "RLock implementation for CPython")
    (description
     "FastRLock is a C-level implementation of an optimistic lock for CPython
 which can be used as a replacement for @code{threading.RLock}.  It is
implemented in Cython and offers a C-API for direct use from Cython code.  The
lock is 10x faster than @code{threading.RLock} under normal conditions and 10%
faster under congestion, making it a faster option than the revised RLock
implementation in Python 3.2.")
    (license license:expat)))

;; 20240104T162846+0000
(define-public python-inquirerpy
  (package
    (name "python-inquirerpy")
    (version "0.3.4")
    (source
     (origin
       (method git-fetch) ; 0.3.4 is missed in PyPI
       (uri (git-reference
             (url "https://github.com/kazhala/InquirerPy")
             (commit version)))
       (file-name (git-file-name name version))
       (sha256
        (base32 "01s1wpsfsjxd1vpvhrz9b5314fml8kg11a3fiqnrzqqlf5j33782"))))
    (build-system pyproject-build-system)
    (arguments
     ;; XXX: Tests failed a lot and the project looks dorman.
     ;; https://github.com/kazhala/InquirerPy/issues/62
     ;; https://github.com/kazhala/InquirerPy/issues/61
      `(#:tests? #f))
    (propagated-inputs
     (list python-myst-parser
           python-pfzy
           python-prompt-toolkit))
    (native-inputs
     (list python-poetry-core))
    (home-page "https://github.com/kazhala/InquirerPy")
    (synopsis "Python port of Inquirer.js")
    (description
     "This package provides a Python port of Inquirer.js - a collection of common
interactive CLIs.")
    (license license:expat)))

;; 20240308T072854+0000
(define python-mkdocs-material
  (package
    (name "python-mkdocs-material")
    (version "9.5.13")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "mkdocs_material" version))
       (sha256
        (base32 "11xx4ns1ic02hyk6f3c66szcscyj8g7q36v0sa7sh4k3aypcmr6q"))))
    (build-system pyproject-build-system)
    (home-page "https://squidfunk.github.io/mkdocs-material/")
    (synopsis "MkDocs documentation framework")
    (description "Documentation that simply works")
    (license license:expat)))

;; 20220513T200612+0100
;; (define-public python-parsley
;; added-to-downstream-guix 0ce76141bfe52b7c65d6185d036b4eaad2a0f0a3
;; CommitDate: Wed Jun 14 14:52:22 2023 +0300

;; 20220621T191218+0100
;; (define-public python-posix-ipc
;; added-to-downstream-guix b12da85668c40be322204e1ca04fb70b4d709411
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
;; added-to-downstream-guix 95ed62c12bb33f6b64daf2f51df0e610f1abc913
;; CommitDate: Fri Jul 8 23:58:12 2022 +0200

;; 20240109T191355+0000
(define-public python-grapheme
  ;; v0.6.0 has no release tags in VCS, no tests in PyPI archive, use the latest
  ;; commit.
  (let ((commit "66f07ca02fc64a9ea2f9b4ad66593b226d473adb")
        (revision "0"))
    (package
      (name "python-grapheme")
      (version (git-version "0.6.0" revision commit))
      (source
       (origin
         (method git-fetch)               ; no tests in PyPI release
         (uri (git-reference
               (url "https://github.com/alvinlindstam/grapheme")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0fqw6iymg7s8q1pfwijx0awcj1j55jppx7hfa5ci7y0c7x4jc8v9"))))
      (arguments
       (list
        #:phases
        #~(modify-phases %standard-phases
            (add-before 'build 'pretend-version
              (lambda _
                (setenv "SETUPTOOLS_SCM_PRETEND_VERSION"
                        #$(package-version this-package)))))))
      (build-system pyproject-build-system)
      (native-inputs
       (list python-pytest python-twine))
      (home-page "https://github.com/alvinlindstam/grapheme")
      (synopsis "Unicode grapheme helpers")
      (description
       "A Python package for working with user perceived characters.  More
 specifically, string manipulation and calculation functions for working with
grapheme cluster groups (graphemes) as defined by the
@url{http://unicode.org/reports/tr29/,Unicode Standard Annex #29}")
      (license license:expat))))

;; 20220702T095332+0100
;; (define-public python-h5netcdf
;; added-to-downstream-guix 3bd2b1b544c45e5e341010e48bcedcb0ba593480
;; CommitDate: Thu Aug 4 12:05:53 2022 +0200

;; 20221012T205858+0100
;; (define-public python-siosocks
;; added-to-downstream-guix 5ed098095dbabbc93b5a8b6a1f24c61517f87d2d
;; CommitDate: Mon Nov 7 20:29:18 2022 +0100

;; 20240104T155647+0000
(define-public python-types-pyyaml
  (package
    (name "python-types-pyyaml")
    (version "6.0.12.12")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "types-PyYAML" version))
       (sha256
        (base32 "0qjhhphqjql5xf9lbcb7472i1yl531kg3hzmbbwzvq7xjb9p6hrk"))))
    (build-system pyproject-build-system)
    (home-page "https://github.com/python/typeshed")
    (synopsis "Typing stubs for @code{pyyaml}")
    (description
     "This package contains typing stubs for @code{pyyaml}, a
very small subset the Python stubs contained in the complete @code{pyyaml}
collection.")
    (license license:asl2.0)))

;; 20240104T155342+0000
(define-public python-types-simplejson
  (package
    (name "python-types-simplejson")
    (version "3.19.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "types-simplejson" version))
       (sha256
        (base32 "06zfz1wlypj5h7yii3s34rycg2r2la5529n7h1mrvnc9dy41zj7b"))))
    (build-system pyproject-build-system)
    (home-page "https://github.com/python/typeshed")
    (synopsis "Typing stubs for @code{simplejson}")
    (description
     "This package contains typing stubs for @code{simplejson}, a
very small subset the Python stubs contained in the complete @code{simplejson}
collection.")
    (license license:asl2.0)))

;; 20240104T014637+0000
(define-public python-types-tqdm
  (package
    (name "python-types-tqdm")
    (version "4.66.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "types-tqdm" version))
       (sha256
        (base32 "0b0ifiz7pnqa8cb4cwspnpv3c86h2fvsjwhg60b8ihiqj937xgbl"))))
    (build-system pyproject-build-system)
    (arguments
     (list #:tests? #f)) ; no tests provided
    ;; XXX: According to https://pypi.org/project/types-tqdm/ the repository
    ;; contains all contrib packages tqdm is part of them.
    (home-page "https://github.com/python/typeshed")
    (synopsis "Typing stubs for @code{tqdm}")
    (description
     "This package contains typing stubs for @code{tqdm}, a
very small subset the Python stubs contained in the complete @code{tqdm}
collection.")
    (license license:asl2.0)))

;; 20221011T224747+0100
;; (define-public python-aioftp
;; added-to-downstream-guix b0db0b2b2d3c6d5fecb6c7727b3173c21b896540
;; CommitDate: Mon Nov 7 20:29:21 2022 +0100

;; 20221010T225525+0100
;; (define-public parfive
;; added-to-downstream-guix 472917ea6c479b3546ffaea02f755ed9c6e8d46b
;; CommitDate: Mon Nov 7 20:29:21 2022 +0100

;; 20231012T020416+0100
(define-public python-canalystii
  (package
    (name "python-canalystii")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "canalystii" version))
       (sha256
        (base32 "110grwfq0azhpzplnhspragyn577dm7gvq3y9byhgi45vyff0wbl"))))
    (arguments
     (list
      ;; Tests require Canalyst-II USB device.
      #:tests? #f))
    (build-system pyproject-build-system)
    (native-inputs
     (list python-setuptools
           python-wheel))
    (propagated-inputs
     (list python-pyusb))
    (home-page "https://github.com/projectgus/python-canalystii")
    (synopsis "Python userspace driver for Canalyst-II USB CAN analyzer")
    (description
     "This driver is based on black box reverse engineering of the USB behaviour
of the proprietary software, and reading the basic data structure layouts in the
original python-can canalystii source.")
    (license license:bsd-3)))

;; 20240424T233655+0100
;; (define-public python-corner
;; added-downstream-guix c8e4b2740bc1fb9f880ce80a2c7b28c75f1b5022
;; CommitDate: Sun Jun 30 10:11:19 2024 +0100

;; 20240129T120744+0000
;; (define-public python-cmyt
;; added-downstream-guix 0fd36bed26cd82b6b1330d839422ee090b11a37d
;; CommitDate: Fri Mar 29 15:08:11 2024 +0000

;; 20240129T135721+0000
(define-public python-ewah-bool-utils
  (package
    (name "python-ewah-bool-utils")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "ewah_bool_utils" version))
       (sha256
        (base32 "11z9vv9m19370j762z100dqhy2ndjzkxk3w9z02lzwadbyibal3h"))))
    (build-system pyproject-build-system)
    (arguments
     (list
      #:phases
      #~(modify-phases %standard-phases
          (add-before 'check 'build-extensions
            (lambda _
              (invoke "python" "setup.py" "build_ext" "--inplace"))))))
    (native-inputs
     (list python-cython python-pytest))
    (propagated-inputs
     (list python-numpy))
    (home-page "https://github.com/yt-project/ewah_bool_utils")
    (synopsis "EWAH Bool Array compression")
    (description
     "This package provide a Python wrapper to @acronym{EWAH,
 Enhanced Word-Aligned Hybrid} compression bitarray method.")
    (license (list
              ;; LICENSE: for Python code.
              license:bsd-3
              ;; XXX: Check if it's possible to have it as dedicated package
              ;; and link here..
              ;; ewah_bool_utils/cpp/LICENSE: for C++ bundle, sourced from
              ;; <https://github.com/lemire/EWAHBoolArray>.
              license:asl2.0))))

;; 20240710T141942+0100
;; (define-public python-mpl-scatter-density
;; added-downstream-guix c6ecd58a0d3b8c5f77de3583e4c1a9484c19f0d5
;; CommitDate: Tue Jul 30 10:30:48 2024 +0100

;; 20230301T210252+0000
;; (define-public python-czml3
;; added-to-downstream-guix 0689a842710e5831d9de12964ec1fd38b360e022
;; CommitDate: Thu Mar 16 00:10:58 2023 +0100

