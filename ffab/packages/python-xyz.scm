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
  #:use-module (ffab packages python-check)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages python-compression)
  #:use-module (gnu packages xml)
  #:use-module (gnu packages check)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages base)
  #:use-module (gnu packages commencement)
  #:use-module (gnu packages python-build)
  #:use-module (gnu packages python-check)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages sphinx)
  #:use-module (gnu packages databases)
  #:use-module (gnu packages image)
  #:use-module (guix build-system python)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages))

(define-public python-portalocker
  (package
    (name "python-portalocker")
    (version "2.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "portalocker" version))
       (sha256
        (base32
         "1x1pyqyid3y2kiffv4r11n17p06d480ka5arrdq778lf3dvasj56"))))
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
    (home-page "http://launchpad.net/parsley")
    (synopsis "Parsing and pattern matching Python library")
    (description
     "Parsley is an implementation of OMeta, an object-oriented pattern-matching
language developed by Alessandro Warth at http://tinlizzie.org/ometa/")
    (license license:expat)))

;; 20220621T191218+0100
(define-public python-posix-ipc
  (package
    (name "python-posix-ipc")
    (version "1.0.5")
    (source
     (origin
       ;; The source distributed on PyPI is prebuild.
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/osvenskan/posix_ipc")
             (commit (string-append "rel" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "17y4d0pmvp199c5hbs602ailhlh9f9zv89kmpbd8jhyl6rgaxsvs"))))
    (build-system python-build-system)
    (native-inputs
     (list gcc python-setuptools python-unittest2))
    (home-page "http://semanchuk.com/philip/posix_ipc/")
    (synopsis "POSIX IPC primitives (semaphores, shared memory and message queues) for Python")
    (description
     "POSIX IPC primitives (semaphores, shared memory and message queues) for Python")
    (license #f)))

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
    (home-page "http://code.google.com/p/python-progressbar")
    (synopsis "Text progress bar library for Python.")
    (description "Text progress bar library for Python.")
    (license #f)))

;; 20220627T220024+0100
(define-public python-glymur
  (package
    (name "python-glymur")
    (version "0.10.0")
    (source
     (origin
       (method git-fetch) ;; no tests data in PyPi package
       (uri (git-reference
             (url "https://github.com/quintusdias/glymur")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0ifjirxr99b0ylc7vf46m244gjdh2v2qm9iglbsnh9218hsvvdqz"))))
    (build-system python-build-system)
    (arguments
     (list #:phases
           #~(modify-phases %standard-phases
               (add-after 'unpack 'patch-library-locations
                 (lambda _
                   ;; XXX: It's a workaround for Python inability to find the
                   ;; .so libraries with ctypes.util.find_library()
                   (substitute* '("glymur/config.py")
                     (("path = find_library\\(libname\\)")
                      (string-append "if libname == \"openjp2\":\n"
                                     "        path = \"" #$(this-package-input "openjpeg") "/lib/libopenjp2.so\"\n"
                                     "    elif libname == \"tiff\":\n"
                                     "        path = \"" #$(this-package-input "libtiff") "/lib/libtiff.so\"\n"
                                     "    elif libname == \"c\":\n"
                                     "        path = \"" #$(this-package-input "glibc") "/lib/libc.so.6\"\n")))))
               ;; TODO: implement as a feature of python-build-system (PEP-621,
               ;; PEP-631, PEP-660)
               (replace 'build
                 (lambda _
                   (setenv "SETUPTOOLS_SCM_PRETEND_VERSION" #$version)
                   ;; ZIP does not support timestamps before 1980.
                   (setenv "SOURCE_DATE_EPOCH" "315532800")
                   (invoke "python" "-m" "build" "--wheel" "--no-isolation" ".")))
               (replace 'install
                 (lambda* (#:key outputs #:allow-other-keys)
                   (let ((whl (car (find-files "dist" "\\.whl$"))))
                     (invoke "pip" "--no-cache-dir" "--no-input"
                             "install" "--no-deps" "--prefix" #$output whl))))
               (replace 'check
                 (lambda* (#:key tests? #:allow-other-keys)
                   (when tests?
                     ;; Failing test due to inability of
                     ;; ctypes.util.find_library() to determine library path,
                     ;; which is patched above.
                     (delete-file "tests/test_config.py")
                     (invoke "python" "-m" "pytest" "-vv" "tests")))))))
    (native-inputs
     (list python-pypa-build python-pytest))
    (inputs
     (list openjpeg  ; glymur/lib/openjp2.py
           libtiff   ; glymur/lib/tiff.py
           glibc))
    (propagated-inputs
     (list python-lxml
           python-numpy
           python-packaging
           python-setuptools))
     (home-page "https://github.com/quintusdias/glymur")
     (synopsis "Python interface to the OpenJPEG")
     (description
      "This package provides Python interface to the OpenJPEG library which
allows one to read and write JPEG 2000 files")
     (license license:expat)))

;; 20220702T095332+0100(package
(define-public python-h5netcdf
  (package
    (name "python-h5netcdf")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "h5netcdf" version))
       (sha256
        (base32 "1b2dcgf5rwy7pb7hr4prkc5vgcw9qc2was20dmnj90lbrpx08rvp"))))
    (build-system python-build-system)
    (arguments
     (list #:phases
           #~(modify-phases %standard-phases
               (replace 'check
                 (lambda* (#:key tests? #:allow-other-keys)
                   (when tests?
                     (invoke "pytest" "-vv" "h5netcdf/tests")))))))
    (native-inputs
     (list python-setuptools-scm
           python-pytest
           python-netcdf4))
    (propagated-inputs
     (list python-h5py python-packaging python-numpy))
    (home-page "https://h5netcdf.org")
    (synopsis "Python interface for the netCDF4 file-format based on h5py")
    (description "netCDF4 via h5py")
    (license license:bsd-3)))
