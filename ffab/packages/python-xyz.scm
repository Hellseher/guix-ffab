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
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages image)
  #:use-module (gnu packages python-build)
  #:use-module (gnu packages python-check)
  #:use-module (gnu packages python-compression)
  #:use-module (gnu packages python-crypto)
  #:use-module (gnu packages python-web)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages sphinx)
  #:use-module (gnu packages xml)
  #:use-module (gnu packages)
  #:use-module (guix build-system python)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix utils)
  #:use-module (guix build utils)
  #:use-module (guix packages))

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

;; 20220702T165531+0100
(define-public python-mpl-animators
  (package
    (name "python-mpl-animators")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "mpl_animators" version))
       (sha256
        (base32 "12kjmj7rn3pk9ly82h5s5hn0kl3kxkr7bgkz9zr9k59pir8z1r8b"))))
    (build-system python-build-system)
    (arguments
     (list #:phases
           #~(modify-phases %standard-phases
               (replace 'check
                 (lambda* (#:key tests? #:allow-other-keys)
                   (when tests?
                     (invoke "pytest" "-vv" "mpl_animators/tests")))))))
    (native-inputs
     (list python-pytest
           python-pytest-mpl
           python-setuptools-scm))
    (propagated-inputs
     (list python-astropy
           python-matplotlib
           python-numpy))
    (home-page "https://sunpy.org")
    (synopsis "Interactive animations with matplotlib")
    (description
     "The @code{mpl_animators} package provides a set of classes which allow the
easy construction of interactive matplotlib widget based animations.")
    (license license:bsd-3)))

;; 20221012T205858+0100
(define-public python-siosocks
  (package
    (name "python-siosocks")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "siosocks" version))
              (sha256
               (base32
                "0qqxy8wl5mrmlkblzjq9nsg0cbm5jwgj409mhnhq6gd1ypvbndms"))))
    (build-system python-build-system)
    (arguments
     (list #:phases #~(modify-phases %standard-phases
                        (replace 'check
                          (lambda* (#:key tests? #:allow-other-keys)
                            (when tests?
                              (invoke "pytest" "-vvv")))))))
    (native-inputs (list python-pytest python-pytest-asyncio-ffab python-pytest-cov
                         python-pytest-trio))
    (propagated-inputs (list python-trio))
    (home-page "https://github.com/pohmelie/siosocks")
    (synopsis "SOCKSv4 & SOCKSv5 TCP proxy protocol implementation in Python")
    (description
     "This package provides a Python module and framework for sans-io socks proxy
client/server with couple io backends.

Features:
@itemize
@item Only TCP connect (no BIND, no UDP)
@item Both client and server
@item SOCKS versions: 4, 4a, 5
@item SOCKSv5 auth: no auth, username/password
@item Couple io backends: @code{asyncio}, @code{trio}, @code{socketserver}
@item One-shot socks server (@code{python -m siosocks})
@end itemize")
    (license license:expat)))

;; 20221011T224747+0100
(define-public python-aioftp
  (package
    (name "python-aioftp")
    (version "0.21.4")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "aioftp" version))
              (sha256
               (base32
                "1f8vql2j2b3ykqyh5bxzsp8x5f2if2c1ya232ld3hz3cc7a2dfr8"))))
    (build-system python-build-system)
    (arguments
     (list #:phases #~(modify-phases %standard-phases
                        (replace 'check
                          (lambda* (#:key tests? #:allow-other-keys)
                            (when tests?
                              (invoke "pytest" "-vvv")))))))
    (native-inputs (list python-async-timeout
                         python-pytest
                         python-pytest-asyncio-ffab
                         python-pytest-cov
                         python-trustme))
    (propagated-inputs (list python-siosocks))
    (home-page "https://aioftp.readthedocs.io/")
    (synopsis "FTP client/server for asyncio in Python")
    (description
     "FTP client and server for asyncio (Python 3) Library implementing FTP
protocol, both client and server for Python asyncio module.

 Supported commands as client: USER, PASS, ACCT, PWD, CWD, CDUP, MKD, RMD,
 MLSD, MLST, RNFR, RNTO, DELE, STOR, APPE, RETR, TYPE, PASV, ABOR, QUIT,
 REST, LIST (as fallback).

 Supported commands as server: USER, PASS, QUIT, PWD, CWD, CDUP, MKD, RMD,
 MLSD, LIST (non-standard), MLST, RNFR, RNTO, DELE, STOR, RETR,
 TYPE (\"I\" and \"A\"), PASV, ABOR, APPE, REST.")
    (license license:asl2.0)))

;; 20221010T225525+0100
(define-public parfive
  (package
    (name "parfive")
    (version "2.0.1")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "parfive" version))
              (sha256
               (base32
                "19dcbb6g56l5s3ih0bhs3p4acgc0gf4zdzpj4w87m69li2nhmgpx"))))
    (build-system python-build-system)
    (arguments
     (list #:phases #~(modify-phases %standard-phases
                        (add-before 'check 'disable-test-requiring-network
                          (lambda _
                            (substitute* "parfive/tests/test_downloader.py"
                              (("def test_ftp")
                               "def __off_test_ftp"))))
                        (replace 'check
                          (lambda* (#:key tests? #:allow-other-keys)
                            (when tests?
                              (invoke "python" "-m" "pytest" "-vvv" "parfive")))))))
    (propagated-inputs (list python-aiofiles python-aioftp python-aiohttp python-tqdm))
    (native-inputs (list python-pytest
                         python-pytest-asyncio
                         python-pytest-cov
                         python-pytest-localserver
                         python-pytest-socket
                         python-setuptools-scm))
    (home-page "https://parfive.readthedocs.io/")
    (synopsis "HTTP and FTP parallel file downloader")
    (description
     "This package provides CLI tool and Python library @code{parallel} file
downloader using asyncio. parfive can handle downloading multiple files in
parallel as well as downloading each file in a number of chunks.

asciicast demo of parfive parfive works by creating a downloader object,
appending files to it and then running the download. parfive has a synchronous
API, but uses asyncio to paralellise downloading the files.")
    (license license:expat)))
