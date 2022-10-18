;;; GNU Guix --- Functional package management for GNU
;;; Copyright © 2022 Sharlatan Hellseher <sharlatanus@gmail.com>
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

(define-module (ffab packages astronomy)
  #:use-module (ffab packages check)
  #:use-module (ffab packages maths)
  #:use-module (ffab packages python-xyz)
  #:use-module (ffab packages python-web)
  #:use-module (ffab packages python-check)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages)
  #:use-module (gnu packages algebra)
  #:use-module (gnu packages astronomy)
  #:use-module (gnu packages autotools)
  #:use-module (gnu packages bison)
  #:use-module (gnu packages boost)
  #:use-module (gnu packages check)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages curl)
  #:use-module (gnu packages databases)
  #:use-module (gnu packages flex)
  #:use-module (gnu packages gawk)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages gl)
  #:use-module (gnu packages glib)
  #:use-module (gnu packages graphviz)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages image)
  #:use-module (gnu packages libusb)
  #:use-module (gnu packages lua)
  #:use-module (gnu packages machine-learning)
  #:use-module (gnu packages maths)
  #:use-module (gnu packages multiprecision)
  #:use-module (gnu packages multiprecision)
  #:use-module (gnu packages ncurses)
  #:use-module (gnu packages netpbm)
  #:use-module (gnu packages openstack)
  #:use-module (gnu packages pascal)
  #:use-module (gnu packages perl)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages python)
  #:use-module (gnu packages python-build)
  #:use-module (gnu packages python-check)
  #:use-module (gnu packages python-crypto)
  #:use-module (gnu packages python-science)
  #:use-module (gnu packages python-web)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages readline)
  #:use-module (gnu packages swig)
  #:use-module (gnu packages tcl)
  #:use-module (gnu packages time)
  #:use-module (gnu packages version-control)
  #:use-module (gnu packages wxwidgets)
  #:use-module (gnu packages xml)
  #:use-module (guix build-system cmake)
  #:use-module (guix build-system copy)
  #:use-module (guix build-system gnu)
  #:use-module (guix build-system python)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages)
  #:use-module (guix utils)
  #:use-module (ice-9 match))

;; 20220626T221017+0100
(define-public splash
  (package
    (name "splash")
    (version "3.5.1")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/danieljprice/splash")
                    (commit (string-append "v" version))))
              (sha256
               (base32
                "12s3w96wzd4zpxw4adzhalkr57fgdk7cjp6bj596jnd87pz3rhyd"))
              (file-name (git-file-name name version))))
    (build-system gnu-build-system)
    (arguments
     ;; FIXME: Tests failed
     ;; Issue submited upstream https://github.com/danieljprice/splash/issues/67
     ;;
     ;; make: *** No rule to make target 'test_interpolate3D.o', needed by 'test1'.  Stop.
     ;;
     (list #:tests? #f
           #:parallel-build? #f ;parallel build fails
           #:make-flags #~(list "SYSTEM=gfortran" "PREFIX="
                                (string-append "GIZA_DIR="
                                               #$(this-package-input "giza"))
                                (string-append "DESTDIR="
                                               #$output))
           #:phases #~(modify-phases %standard-phases
                        (delete 'configure)
                        (add-before 'install 'create-install-dirrectories
                          (lambda _
                            (mkdir-p (string-append #$output "/bin")))))))
    (native-inputs (list gfortran pkg-config perl python-wrapper))
    (inputs (list cairo cfitsio giza))
    (home-page "https://users.monash.edu.au/~dprice/splash/")
    (synopsis
     "Astrophysical visualisation tool for smoothed particle hydrodynamics")
    (description
     "SPLASH is a free and open source visualisation tool for Smoothed Particle
Hydrodynamics (SPH) simulations in one, two and three dimensions, developed
mainly for astrophysics.  It uses a command-line menu but data can be manipulated
interactively in the plotting window.")
    (license license:gpl2+)))

;; 20220619T144120+0100
(define-public funtools
  (package
    (name "funtools")
    (version "1.4.8")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/ericmandel/funtools")
                    (commit (string-append "v" version))))
              (sha256
               (base32
                "1217gfac89j7m3yqsql6f941c7a0bxpk8cgg4bi421i1h3cr23zy"))
              (file-name (git-file-name name version))))
    (build-system gnu-build-system)
    (arguments
     (list #:tests? #f ;No tests
           #:parallel-build? #f
           #:configure-flags #~(list "--enable-dl" "--enable-shared"
                                     "--with-zlib"
                                     (string-append "--with-wcslib="
                                                    #$wcslib)
                                     (string-append "--with-tcl="
                                                    #$tcl "/lib"))
           #:make-flags #~(list "all" "shtclfun")
           #:phases #~(modify-phases %standard-phases
                        (replace 'bootstrap
                          (lambda _
                            (substitute* "mkconfigure"
                              (("#!/bin/bash")
                               (string-append "#!"
                                              (which "bash"))))
                            (invoke "./mkconfigure") #t)))))
    (native-inputs (list autoconf zlib perl))
    (inputs (list tcl wcslib))
    (home-page "https://github.com/ericmandel/funtools")
    (synopsis "Astronomical minimal buy-in FITS libray")
    (description
     "Funtools is a \"minimal buy-in\" FITS library and utility
package originally developed at the the High Energy Astrophysics Division of
SAO. Although no longer actively supported at SAO, it is still widely used
within the astronomical community, especially among X-ray astronomers.")
    (license license:lgpl2.0+)))


;; http://starlink.eao.hawaii.edu/starlink
;;+begin-Starlink

;; 20220619T140953+0100
(define-public starlink
  (package
    (name "starlink")
    (version "2021A")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/Starlink/starlink")
                    (commit version)))
              (sha256
               (base32
                "1snd03h40327hm4xz2359w7gw2j9symp9357pl8j2mprbzk1ai09"))
              (file-name (git-file-name name version))))
    (build-system gnu-build-system)
    (native-inputs (list autoconf))
    (home-page "https://github.com/Starlink/pal")
    (synopsis "Starlink Software Collection")
    (description "")
    (license (list license:gpl3 ;applications/atools/astviewer/LICENSE
                   ;; applications/smurf/LICENCE
                   license:gpl2 ;applications/obsolete/sgmlkit/lib/texml/license.txt
                   ;; applications/gaia/gaia/tkhtml/COPYING
                   ;; libraries/ref/LICENCE
                   ;; libraries/trn/LICENCE
                   ;; libraries/agi/LICENCE
                   ;; libraries/kaplibs/LICENCE
                   ;; ... and more
                   ))))

;; 20220618T223938+0100
;; starting phase `bootstrap'
;; running './bootstrap'
;; patch-shebang: ./bootstrap: changing `/bin/sh' to `/gnu/store/4y5m9lb8k3qkb1y9m02sw9w9a6hacd16-bash-minimal-5.1.8/bin/sh'
;; Bootstrapping /tmp/guix-build-starlink-pal-0.9.8.drv-0/source ...
;; bootstrap error: The starconf application is not in your path
(define-public starlink-pal
  (package
    (name "starlink-pal")
    (version "0.9.8")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/Starlink/pal")
                    (commit (string-append "v" version))))
              (sha256
               (base32
                "1snd03h40327hm4xz2359w7gw2j9symp9357pl8j2mprbzk1ai09"))
              (file-name (git-file-name name version))))
    (build-system gnu-build-system)
    (arguments
     (list #:configure-flags #~(list "--without-starlink"
                                     (string-append "--prefix="
                                                    #$output))
           #:phases #~(modify-phases %standard-phases
                        (add-after 'unpack 'patch-boostrap
                          (lambda _
                            (substitute* "bootstrap"
                              (("exec /bin/sh")
                               (format #f "exec ~a"
                                       (which "sh")))) #t)))))
    (native-inputs (list autoconf))
    (home-page "https://github.com/Starlink/pal")
    (synopsis "Positional Astronomy Library")
    (description
     "The PAL library is a partial re-implementation of Pat
Wallace's popular SLALIB library written in C using a Gnu GPL license and
layered on top of the IAU's SOFA library (or the BSD-licensed ERFA) where
appropriate.")
    (license license:gpl3)))

;;+end-Starlink

;; https://github.com/casacore
;;+begin-casacore

;; 20220613T235347+0100
(define-public casacore-data
  (package
    (name "casacore-data")
    (version "20220614-160001")
    (source (origin
              (method url-fetch)
              ;; NOTE: (Sharlatan-20220614T002807+0100): Meeasures data is updated
              ;; daily and distributed via Westerbork Synthesis Radio Telescope (WSRT)
              ;; FTP server.
              (uri (string-append
                    "ftp://ftp.astron.nl/outgoing/Measures/WSRT_Measures_"
                    version ".ztar"))
              (sha256
               (base32
                "1jsf237k6amkvh2lp3zm9f4jdk3zplgdmv5mfpwicqaw60fs4m88"))))
    (build-system copy-build-system)
    (arguments
     (list #:patch-shebangs? #f
           #:strip-binaries? #f
           #:validate-runpath? #f
           #:phases #~(modify-phases %standard-phases
                        (add-before 'install 'unpack-measures
                          (lambda _
                            (invoke "tar" "xvzf"
                                    (string-append "WSRT_Measures_"
                                                   #$version ".ztar"))
                            (invoke "rm" "-vf"
                                    (string-append "WSRT_Measures_"
                                                   #$version ".ztar")))))))
    (home-page "https://astron.nl")
    (synopsis "Measures data for Casacore")
    (description "Westerbork Synthesis Radio Telescope (WSRT) measures data.")
    (license license:public-domain)))

;; 20220608T193453+0100
;; The following tests FAILED:
;;  59 - tFile (Failed)
;;  66 - tPath (Failed)
;; 189 - tExprNode (Failed)
;; NOTE: (Sharlatan-20220624T202307+0100): working on tests
(define ffab-casacore
  (package
    (name "ffab-casacore")
    (version "3.4.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/casacore/casacore")
                    (commit (string-append "v" version))))
              (sha256
               (base32
                "05ar5gykgh4dm826xplj5ri5rw7znhxrvin2l67a3mjwfys7r2a0"))
              (file-name (git-file-name name version))))
    (build-system cmake-build-system)
    (arguments
     (list
           ;; NOTE: (Sharlatan-20220611T213043+0100): There are multiple fails in
           ;; tests which require additional measures data. They are
           ;; distributed via FTP without any license:
           ;; ftp://ftp.astron.nl/outgoing/Measures/
           #:parallel-build? #t
           #:configure-flags #~(list "-DBUILD_PYTHON3=ON"
                                     "-DBUILD_PYTHON=OFF"
                                     "-DBUILD_TESTING=TRUE"
                                     "-DUSE_HDF5=ON"
                                     "-DUSE_OPENMP=OFF"
                                     "-DUSE_THREADS=ON"
                                     (string-append "-DDATA_DIR="
                                                    #$casacore-data)
                                     (string-append "-DPYTHON3_EXECUTABLE="
                                                    #$python "/bin")
                                     (string-append "-DPYTHON3_INCLUDE_DIR="
                                                    #$python "/include")
                                     (string-append "-DPYTHON3_LIBRARY="
                                                    #$python "/lib"))
           #:phases #~(modify-phases %standard-phases
                        (add-after 'unpack 'set-env
                          (lambda _
                            (setenv "HOME" "/tmp")))
                        (add-after 'unpack 'use-absolute-rm
                          (lambda _
                            (substitute* "casa/OS/test/tFile.run"
                              (("/bin/rm")
                               (which "rm"))) #t))
                        (add-after 'unpack 'use-absolute-python3
                          (lambda _
                            (substitute* "build-tools/casacore_floatcheck"
                              (("#!/usr/bin/env python")
                               (string-append "#!"
                                              #$python "/bin/python3"))) #t))
                        (add-after 'unpack 'patch-pre-test-checks
                          (lambda _
                            (substitute* "build-tools/casacore_assay"
                              (("QSUBP=.*$")
                               "QSUBP=\n")
                              (("YODP=.*$")
                               "YODP=\n")) #t)))))
    (native-inputs (list bison boost flex casacore-data readline))
    (inputs (list cfitsio
                  fftw
                  fftwf
                  gfortran
                  hdf5
                  lapack
                  ncurses
                  openblas
                  python
                  python-numpy
                  wcslib))
    (home-page "http://casacore.github.io/casacore/")
    (synopsis "Suite of C++ libraries for radio astronomy data processing")
    (description
     "The casacore package contains the core libraries of the old
@code{AIPS++/CASA} (Common Astronomy Software Application) package.  This split
was made to get a better separation of core libraries and applications.
(CASA @url{https://casa.nrao.edu/}) is now built on top of Casacore.")
    (license license:gpl2)))

;; 20220621T222748+0100
(define-public python-casacore
  (package
    (name "python-casacore")
    (version "3.4.0")
    (source (origin
              (method git-fetch)
              ;; No tests in PyPi package
              (uri (git-reference
                    (url "https://github.com/casacore/python-casacore")
                    (commit (string-append "v" version))))
              (sha256
               (base32
                "12ygijs1xwb5yd9y7wsxz5bw2c2z0yyv0hr72b3sg4simplm61nh"))
              (file-name (git-file-name name version))))
    (build-system python-build-system)
    (arguments
     (list #:phases #~(modify-phases %standard-phases
                        (add-after 'unpack 'set-ld-library-path-env
                          (lambda _
                            (setenv "LD_LIBRARY_PATH"
                                    (string-append #$(this-package-input
                                                      "casacore") "/lib" ":"
                                                   #$(this-package-input
                                                      "boost") "/lib"))))
                        (replace 'check
                          (lambda* (#:key tests? #:allow-other-keys)
                            (when tests?
                              (invoke "pytest" "-vv"))))
                        (delete 'sanity-check))))
    (native-inputs (list python-pytest))
    (inputs (list boost casacore cfitsio wcslib))
    (propagated-inputs (list python-future python-numpy python-six))
    (home-page "https://github.com/casacore/python-casacore")
    (synopsis "Python wrapper for casacore")
    (description
     "Python-casacore is a set of Python bindings for @code{casacore}, a c++ library used in
radio astronomy.")
    (license license:gpl3)))

;;+end-casacore

;; 20220608T191316+0100
(define-public aoflagger
  (package
    (name "aoflagger")
    (version "3.2.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://gitlab.com/aroffringa/aoflagger")
                    (commit (string-append "v" version))))
              (sha256
               (base32
                "1dcbfrbiybhpbypna2xhddx1wk7yifh38ha2r6p5rzsikzwlsin1"))
              (patches (search-patches
                        "aoflagger-use-system-provided-pybind11.patch"))
              (file-name (git-file-name name version))))
    (build-system cmake-build-system)
    (arguments
     (list
           ;; NOTE: (Sharlatan-20220626T175728+0100): Tests require external files
           ;; download from https://www.astron.nl/citt/ci_data/aoflagger/
           ;; FIXME: runtest is not found
           #:tests? #f
           #:configure-flags #~(list (string-append "-DCASACORE_ROOT_DIR="
                                                    #$(this-package-input
                                                       "casacore")))
           #:phases #~(modify-phases %standard-phases
                        (add-after 'unpack 'link-submodule-package
                          (lambda _
                            (rmdir "external/aocommon")
                            (symlink #$(this-package-native-input "aocommon")
                                     (string-append (getcwd)
                                                    "/external/aocommon")))))))
    (native-inputs (list aocommon boost pkg-config python pybind11))
    (inputs (list casacore
                  cfitsio
                  fftw
                  gsl
                  gtkmm-3
                  hdf5
                  lapack
                  libpng
                  libsigc++
                  libxml2
                  lua
                  openblas
                  zlib))
    (home-page "https://gitlab.com/aroffringa/aoflagger")
    (synopsis
     "Astronomical tool that can find and remove radio-frequency interference")
    (description
     "AOFlagger is a tool that can find and remove radio-frequency
interference (RFI) in radio astronomical observations.  It can make use of Lua
scripts to make flagging strategies flexible, and the tools are applicable to a
wide set of telescopes.")
    (license license:gpl3+)))

;; 20220614T105114+0100
(define-public aocommon
  (let ((commit "7329a075271edab8f6264db649e81e62b2b6ae5e")
        (revision "1"))
    (package
      (name "aocommon")
      (version (git-version "0.0.0" revision commit))
      (source (origin
                (method git-fetch)
                (uri (git-reference
                      (url "https://gitlab.com/aroffringa/aocommon")
                      (commit commit)))
                (sha256
                 (base32
                  "0qcfax6pbzs0yigy0x8xibrkk539wm2pbvjsb4lh50fybir02nix"))
                (file-name (git-file-name name version))))
      (build-system copy-build-system)
      (arguments
       (list #:install-plan #~'(("include/aocommon" "include/aocommon"))))
      (home-page "https://gitlab.com/aroffringa/aocommon")
      (synopsis
       "Collection of functionality that is reused in astronomical applications")
      (description
       "This package provides source-only AOCommon collection of functionality that is
reused in several astronomical applications, such as @code{wsclean},
@code{aoflagger}, @code{DP3} and @code{everybeam}.")
      (license license:gpl3))))

;; 20210415T214924+0100
;; NOTE: (Sharlatan-20220704T211255+0100): Needs more love
(define astrometry
  (package
    (name "astrometry")
    (version "0.90")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/dstndstn/astrometry.net")
                    (commit version)))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0dwq48skf1fc9vrmxswnr9gjjvi9xzfmgm6hzm41iggc3v1f1g1g"))))
    (build-system gnu-build-system)
    (arguments
     (list #:make-flags #~(list (string-append "RELEASE_VER="
                                               #$version)
                                (string-append "INSTALL_DIR="
                                               #$output))
           #:phases #~(modify-phases %standard-phases
                        (delete 'configure)
                        (replace 'check
                          (lambda* (#:key tests? #:allow-other-keys)
                            (when tests?
                              (invoke "make" "test"))))
                        (replace 'build
                          (lambda _
                            (invoke "make")
                            (invoke "make" "py") #t)))))
    (native-inputs (list pkg-config swig python-wrapper git))
    (inputs (list cairo
                  bzip2
                  cfitsio
                  libjpeg-turbo
                  libpng
                  netpbm
                  python-fitsio
                  python-numpy
                  zlib))
    (home-page "https://astrometry.net/")
    (synopsis "Automatic recognition of astronomical images")
    (description "")
    (license license:gpl3+)))

;; 20220607T220301+0100
(define-public python-astrometry
  (package
    (name "python-astrometry")
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "astrometry" version))
              (sha256
               (base32
                "0vcp2k5d2grq45860qxllsypqa712rcvd93rngdk4bwg445nzk7c"))))
    (build-system python-build-system)
    (native-inputs (list python-requests))
    (home-page "https://github.com/neuromorphicsystems/astrometry")
    (synopsis "Astrometry.net solver interface")
    (description "Astrometry.net solver interface")
    (license #f)))

;; (define-public eye
;; added-to-upstream: 51418c32d95d8188d8877616829f26479f1135c6

;; (define-public indi
;; added-to-upstream: ae416e852ad6b305ffaf67343d7192bd7c4c89aa

;; (define-public libpasastro
;; added-to-upstream: 906155e437c9513462f19baac6e88b976f42b358

;; 20220724T204740+0100
(define-public libsep
  (package
    (name "libsep")
    (version "1.2.1")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/kbarbary/sep")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0sag96am6r1ffh9860yq40js874362v3132ahlm6sq7padczkicf"))))
    (build-system cmake-build-system)
    (arguments
     (list #:make-flags #~(list (string-append "CC="
                                               #$(cc-for-target))
                                (string-append "PREFIX="
                                               #$output))
           #:phases #~(modify-phases %standard-phases
                        (replace 'check
                          (lambda* (#:key tests? #:allow-other-keys)
                            (when tests?
                              (chdir "../source")
                              (invoke "make"
                                      (string-append "CC="
                                                     #$(cc-for-target)) "test")))))))
    (native-inputs (list python-wrapper))
    (home-page "https://github.com/kbarbary/sep")
    (synopsis "Astronomical source extraction and photometry library")
    (description
     "SEP makes the core algorithms of
@url{https://www.astromatic.net/software/sextractor/, sextractor} available as a
library of stand-alone functions and classes.  These operate directly on
in-memory arrays (no FITS files or configuration files).  The code is derived
from the Source Extractor code base (written in C) and aims to produce results
compatible with Source Extractor whenever possible.  SEP consists of a C library
with no dependencies outside the standard library, and a Python module that
wraps the C library in a Pythonic API.  The Python wrapper operates on NumPy
arrays with NumPy as its only dependency.")
    (license (list license:expat license:lgpl3+ license:bsd-3))))

(define-public python-sep
  (package
    (inherit libsep)
    (name "python-sep")
    (build-system python-build-system)
    (arguments
     (strip-keyword-arguments '(#:make-flags)
                              (package-arguments libsep)))
    (native-inputs (modify-inputs (package-inputs libsep)
                     (prepend python-cython)))
    (propagated-inputs (modify-inputs (package-inputs libsep)
                         (prepend python-numpy)))))

;; (define-public missfits
;; added-to-upstream: 1aee32a26e1a96dd457fcf62f97f514c7a562475

;; TODO: (Sharlatan-20210415T225235+0100):
(define-public psfex
  (package
    (name "psfex")
    (version "3.17.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "https://www.astromatic.net/download/"
                                  name
                                  "/"
                                  name
                                  "-"
                                  version
                                  ".tar.gz"))
              (sha256
               (base32
                "12dgakvpxv5iicvv9kkhhbqchljzi211pi49m7hfd9vxmd4v9wak"))))
    (build-system gnu-build-system)
    (arguments
     (list #:configure-flags #~(list (string-append "--with-fftw-libdir="
                                                    #$(this-package-input
                                                       "fftwf") "/lib")
                                     (string-append "--with-fftw-incdir="
                                                    #$(this-package-input
                                                       "fftwf") "/include")
                                     (string-append "--with-atlas-libdir="
                                                    #$(this-package-input
                                                       "atlas") "/lib")
                                     (string-append "--with-atlas-incdir="
                                                    #$(this-package-input
                                                       "atlas") "/include")
                                     (string-append "--with-plplot-libdir="
                                                    #$(this-package-input
                                                       "plplot") "/lib")
                                     (string-append "--with-plplot-incdir="
                                                    #$(this-package-input
                                                       "plplot") "/include"))))
    (inputs (list fftwf plplot atlas))
    (home-page "https://www.astromatic.net/software/psfex")
    (synopsis "")
    (description "
")
    (license license:gpl3+)))

;; (define-public weightwatcher
;; added-to-upstream: a80d489227738dffea24713555c9d940f5ffcce0
;; CommitDate: Fri Jan 29 11:11:13 2021 +0100

;; (define-public stuff
;; added-to-upstream: c21ad767d4368dbd9ff37a6fd5cdea8aa37fec57
;; CommitDate: Fri Jan 29 10:54:17 2021 +0100

;; (define-public skymaker
;; added-to-upstream: 33648567dd229b1302d2258e76d8b30593fedce6
;; CommitDate: Thu Jan 28 13:43:49 2021 +0100

(define-public skychart
  (let ((version-major "4")
        (version-minor "2"))
    (package
      (name "skychart")
      (version (string-append version-major "." version-minor))
      (source (origin
                (method git-fetch)
                (uri (git-reference
                      (url "https://github.com/pchev/skychart")
                      (commit (string-append "V" version-major version-minor))))
                (file-name (git-file-name name version))
                (sha256
                 (base32
                  "1nb3ilw8swz9q9qjd8s1na3g7k7apb2yrpyl89cq2dfcly9c75mi"))))
      (build-system gnu-build-system)
      (native-inputs `(("fpc" ,fpc)))
      (home-page "https://www.ap-i.net/skychart//en/start")
      (synopsis "Free software to draw sky charts")
      (description
       "This program enables you to draw sky charts, making use of the data in
many catalogs of stars and nebulae.  In addition the position of planets,
asteroids and comets are shown.

The purpose of this program is to prepare different sky maps for a particular
observation.  A large number of parameters help you to choose specifically or
automatically which catalogs to use, the colour and the dimension of stars and
nebulae, the representation of planets, the display of labels and coordinate
grids, the superposition of pictures, the condition of visibility and more.  All
these features make this celestial atlas more complete than a conventional
planetarium.")
      (license license:gpl3+))))

;; (define-public sextractor
;; added-to-upstream: b2d6f127c24787df00bffd918fa879842f933817
;; CommitDate: Mon Jan 25 17:59:02 2021 +0100

;; (define-public python-sep
;; added-to-upstream: d1bd22b9fb17e94931b7ebe23c6d9735b195442a
;; CommitDate: Fri Feb 19 11:05:33 2021 +0100

;; (define-public python-jplephem
;; added-to-upstream: 35d13a9099cad3326f0961760bb4ee2ceb692fa9
;; CommitDate: Sun Feb 7 10:20:52 2021 +0100

;; (define-public python-asdf
;; added-to-upstream: f498823e7843379499d35ae397c38dc879fb9844
;; CommitDate: Sun Feb 21 01:07:41 2021 +0100

;; (define-public python-astroalign
;; added-to-upstream: d6996fa05277f240b70b18c227419c371cfc737f
;; CommitDate: Fri Feb 19 11:05:34 2021 +0100

;;  http://www.astropy.org https://github.com/astropy
;;+begin-astropy

;; (define-public python-astropy
;; added-to-upstream 9371cf2138711ea7305951d82c5cf0b36ac4d6f1

;; 20221017T224702+0100
(define-public python-astropy-5.1
  (package
    (inherit python-astropy)
    (version "5.1")
    (name "python-astropy")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "astropy" version))
       (sha256
        (base32 "0zkv3ddzlxx21i796azfbqxrqnsxn83vsczscv577iyzxp3v5c8x"))))
    (native-inputs
     (modify-inputs (package-native-inputs python-astropy)
       (replace "python-pytest" python-pytest-7.1)
       (replace "python-pytest-astropy" python-pytest-astropy-0.10)))))

;; (define-public python-asdf-astropy
;; added-to-upstream: 7b2747c81d52dd4727cc642df2ebbce485c7e204
;; CommitDate: Sun Jan 30 11:46:18 2022 -0300

;;+end-astropy

;; (define-public imppg
;; added-to-upstream: bf9a1dfd591d5e166581919ac92e67f47219f0eb
;; CommitDate: Sun Dec 5 12:35:55 2021 +0100

;; (define-public python-asdf-wcs-schemas
;; added-to-upstream: 007495210d41bcb8dc3ddcf8e04f2d85c75ba990
;; CommitDate: Sun Jan 30 11:46:19 2022 -0300

;; (define-public python-asdf-coordinates-schemas
;; added-to-upastream: 527ee1bdc82d608dc41438c4f3c6e86260aecb85
;; CommitDate: Sun Jan 30 11:46:18 2022 -0300

;; (define-public python-asdf-transform-schemas
;; added-to-upstram: 89a5c53f382eec3dc4e2b60d819b39ada003df44
;; CommitDate: Sun Jan 30 11:46:17 2022 -0300

;; https://github.com/jobovy
;;+begin-jobovy

;;20220615T234403+0100
(define-public python-galpy
  (package
    (name "python-galpy")
    (version "1.8.0")
    (source (origin
              (method git-fetch) ;PyPi has not tests
              (uri (git-reference
                    (url "https://github.com/jobovy/galpy")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "168bba4xpyzrcj8kh7yzy6jrsnf94dm928qiy4v859nbrdq4x7yw"))))
    (build-system python-build-system)
    (arguments
     ;; NOTE: (Sharlatan-20220727T204455+0100): Tests require few not packed yet
     ;; Python packages: Jax, Amuse
     (list #:tests? #f
           #:phases #~(modify-phases %standard-phases
                        (add-after 'unpack 'patch-gsl-config-bin-path
                          (lambda* (#:key inputs #:allow-other-keys)
                            (substitute* "setup.py"
                              (("'gsl-config'")
                               (format #f "'~a'"
                                       (search-input-file inputs
                                                          "/bin/gsl-config"))))))
                        (replace 'check
                          (lambda* (#:key tests? #:allow-other-keys)
                            (when tests?
                              (setenv "HOME"
                                      (getcwd))
                              (invoke "touch" ".galpyrc")
                              (make-file-writable ".galpyrc")
                              (invoke "pytest" "-vv" "tests")))))))
    (native-inputs (list python-pytest))
    (inputs (list gsl))
    (propagated-inputs (list python-astroquery
                             python-astropy
                             python-future
                             python-matplotlib
                             python-numba
                             python-numexpr
                             python-numpy
                             python-pynbody
                             python-scipy
                             python-six
                             python-tqdm))
    (home-page "https://www.galpy.org/")
    (synopsis "Galactic Dynamics in python")
    (description
     "@code{galpy} is a Python package for galactic dynamics.
It supports orbit integration in a variety of potentials, evaluating and
sampling various distribution functions, and the calculation of action-angle
coordinates for all static potentials. @code{galpy} is an @code{astropy}
affiliated package and provides full support for astropy’s Quantity framework
for variables with units.")
    (license license:bsd-3)))

;;+end-jobovy

;; https://github.com/spacetelescope
;;+begin-spacetelescope

;; (define-public python-gwcs
;; added-to-upstream: 3e497b3a4c8146b4e67807f64bea3d986df9894a
;; CommitDate: Sun Jan 30 11:46:19 2022 -0300

;; 20220131T235042+0000
(define-public python-jwst
  (package
    (name "python-jwst")
    ;; NOTE: (Sharlatan-20220716T143923+0100): The maximum compatible version
    ;; with currently packed inputs. Any other higher versions require large
    ;; chane of packages to be upgraded first.
    (version "1.4.5")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "jwst" version))
              (sha256
               (base32
                "0vgligv27px7cgk5jjqmcckjm7fb9phmczgghak3n5l8xdr85cgm"))))
    (build-system python-build-system)
    (arguments
     (list #:phases #~(modify-phases %standard-phases
                        (replace 'check
                          (lambda _
                            (invoke "pytest" "-vv"))))))
    (propagated-inputs (list python-asdf
                             python-asdf-astropy
                             python-astropy
                             python-bayesicfitting
                             python-crds
                             python-drizzle
                             python-gwcs
                             python-jsonschema
                             python-numpy
                             python-photutils
                             python-poppy
                             python-psutil
                             python-pyparsing
                             python-requests
                             python-scikit-image
                             python-scipy
                             python-spherical-geometry
                             python-stcal
                             python-stdatamodels
                             python-stpipe
                             python-stsci-imagestats
                             python-stsci.image
                             python-tweakwcs))
    (native-inputs (list python-codecov
                         python-colorama
                         python-flake8
                         python-pytest
                         python-pytest-cov
                         python-pytest-doctestplus
                         python-pytest-openfiles
                         python-requests-mock))
    (home-page "https://jwst-pipeline.readthedocs.io/en/latest/")
    (synopsis
     "Python library for science observations from the James Webb Space Telescope")
    (description
     "Library for calibration of science observations from the @acronym{JWST, James
Webb Space Telescope}")
    (license license:bsd-3)))

;; 20220513T211720+0100
(define-public python-pysynphot
  (package
    (name "python-pysynphot")
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "pysynphot" version))
              (sha256
               (base32
                "1rr29m63bnj47f6gvbvg3pm1296x14ad29c6qd0sdj4f4ilrzhj5"))))
    (build-system python-build-system)
    (arguments
     (list #:phases #~(modify-phases %standard-phases
                        (replace 'check
                          (lambda* (#:key tests? #:allow-other-keys)
                            (when tests?
                              (setenv "PYSYN_CDBS"
                                      (string-append #$output "/crds"))
                              (invoke "pytest" "pysynphot" "-vv")))))))
    (propagated-inputs (list python-astropy python-beautifulsoup4 python-numpy
                             python-pytest-astropy-header python-six))
    (native-inputs (list python-pytest python-pytest-remotedata
                         python-setuptools-scm))
    (home-page "https://github.com/spacetelescope/pysynphot")
    (synopsis "Python Synthetic Photometry Utilities")
    (description "Python Synthetic Photometry Utilities")
    (license license:bsd-3)))

;; 20220513T215637+0100
(define-public python-roman-datamodels
  (package
    (name "python-roman-datamodels")
    (version "0.12.2")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "roman_datamodels" version))
              (sha256
               (base32
                "0ncmdnz9zz0w1g5n3a3c73x3apzbvxabckymbgqpd8xng7ybjrxb"))))
    (build-system python-build-system)
    (propagated-inputs (list python-asdf
                             python-asdf-astropy
                             python-astropy
                             python-jsonschema
                             python-numpy
                             python-psutil
                             python-rad))
    (native-inputs (list python-pytest python-pytest-doctestplus
                         python-pytest-openfiles))
    (home-page "https://github.com/spacetelescope/roman_datamodels")
    (synopsis "Roman Datamodels")
    (description "Roman Datamodels")
    (license #f)))

;; 20220513T220144+0100
(define-public python-rad
  (package
    (name "python-rad")
    (version "0.13.0")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "rad" version))
              (sha256
               (base32
                "1bwbqj7wfb3fhp1w7rm4qv4hrwwilpdhgkghcwrgjnbr5bj4s6xa"))))
    (build-system python-build-system)
    (arguments
     (list #:phases #~(modify-phases %standard-phases
                        (replace 'check
                          (lambda* (#:key tests? #:allow-other-keys)
                            (when tests?
                              (invoke "pytest" "-vv")))))))
    (propagated-inputs (list python-asdf))
    (native-inputs (list python-pytest python-pytest-doctestplus
                         python-pytest-openfiles python-semantic-version
                         python-setuptools-scm))
    (home-page "https://github.com/spacetelescope/rad")
    (synopsis "Roman Attribute Dictionary")
    (description "Roman Attribute Dictionary")
    (license #f)))

;; 20220523T215048+0100
(define-public python-tweakwcs
  (package
    (name "python-tweakwcs")
    (version "0.7.4")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "tweakwcs" version))
              (sha256
               (base32
                "0569xpd5q6fj4k7y3ib6rjqps0q94irnmsxa1hykvmjj1ymclwnf"))))
    (build-system python-build-system)
    (arguments
     (list #:phases #~(modify-phases %standard-phases
                        (add-after 'unpack 'relax-requirements
                          (lambda _
                            (substitute* "setup.py"
                              (("astropy>=5.0.4")
                               "astropy>=5.0.1"))))
                        (replace 'check
                          (lambda* (#:key tests? inputs outputs
                                    #:allow-other-keys)
                            (when tests?
                              (add-installed-pythonpath inputs outputs)
                              (invoke "pytest" "-vv"))))
                        (delete 'sanity-check))))
    (propagated-inputs (list python-astropy
                             python-gwcs
                             python-numpy
                             python-packaging
                             python-spherical-geometry
                             python-stsci-imagestats
                             python-stsci-stimage))
    (native-inputs (list python-codecov python-pytest python-pytest-cov
                         python-setuptools-scm python-scipy))
    (home-page "https://tweakwcs.readthedocs.io/en/latest/")
    (synopsis
     "Algorithms for matching and aligning catalogs and for tweaking the WCS")
    (description
     "@code{tweakwcs} is a package that provides core algorithms for computing and
applying corrections to @code{WCS} objects such as to minimize mismatch between
image and reference catalogs. Currently only aligning images with @code{FITS
WCS} and @code{JWST gWCS} are supported.")
    (license license:bsd-3)))

;;20220523T215603+0100
(define-public python-spherical-geometry
  (package
    (name "python-spherical-geometry")
    (version "1.2.22")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url
                     "https://github.com/spacetelescope/spherical_geometry")
                    (commit version)))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0kzcncqir4v7nhk9lxj9gxr32p3krkaqa58y2i4kksgxxy24qw4z"))))
    (build-system python-build-system)
    (arguments
     (list
           ;; NOTE: (Sharlatan-20220523T231348+0100): Tests depends on old Python2
           ;; libarry `sphere'
           #:tests? #f
           #:phases #~(modify-phases %standard-phases
                        (add-after 'unpack 'preparations
                          (lambda _
                            (substitute* "setup.py"
                              (("use_scm_version=True")
                               (format #f "version=~s"
                                       #$version))
                              (("setup_requires=\\['setuptools_scm'\\],.*")
                               ""))
                            (setenv "USE_SYSTEM_QD" "1"))))))
    (native-inputs (list python-pytest python-setuptools-scm))
    (inputs (list qd))
    (propagated-inputs (list python-astropy python-numpy))
    (home-page "https://github.com/spacetelescope/tweakwcs")
    (synopsis "Python astronimical package for handling spherical polygons")
    (description
     "The @code{spherical_geometry} library is a Python package for handling
spherical polygons that represent arbitrary regions of the sky.")
    ;; LICENSE.rst Association of Universities for Research in Astronomy (AURA)
    ;; QD_LIBRARY_LICENSE.rst for bandeled QD source
    (license license:bsd-3)))

;; 20220705T162506+0100
(define-public python-drizzle
  (package
    (name "python-drizzle")
    (version "1.13.4")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "drizzle" version))
              (sha256
               (base32
                "1py3i4c8fka2hjqnpn132gmdmnb6vh5f614fx1bfjy0xw32n24hj"))))
    (build-system python-build-system)
    (arguments
     (list
           ;; NOTE: (Sharlatan-20220705T212541+0100): Failing for now
           ;;
           ;; ImportError: cannot import name 'cdrizzle' from 'drizzle'
           ;;
           #:tests? #f
           #:phases #~(modify-phases %standard-phases
                        (replace 'check
                          (lambda* (#:key tests? inputs outputs
                                    #:allow-other-keys)
                            (when tests?
                              (add-installed-pythonpath inputs outputs)
                              (invoke "pytest" "-vv" "drizzle/tests")))))))
    (propagated-inputs (list python-astropy python-numpy))
    (native-inputs (list python-coverage python-flake8 python-pytest
                         python-pytest-cov python-setuptools-scm))
    (home-page "https://github.com/spacetelescope/drizzle")
    (synopsis
     "Astronomical tool for combining dithered images into a single image")
    (description
     "This package provides a package for combining dithered images into a single
image")
    (license license:bsd-3)))

;; 20220706T114426+0100
(define-public python-poppy
  (package
    (name "python-poppy")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "poppy" version))
              (sha256
               (base32
                "050cn6aabd1dxbi7zihbqnkl79hz6q6d5n6g25zmrpvc4sii171m"))))
    (build-system python-build-system)
    (arguments
     (list #:phases #~(modify-phases %standard-phases
                        (replace 'check
                          (lambda* (#:key tests? inputs outputs
                                    #:allow-other-keys)
                            (when tests?
                              (add-installed-pythonpath inputs outputs)
                              (invoke "pytest" "-vv" "poppy/tests")))))))
    (propagated-inputs (list python-astropy
                             python-matplotlib
                             python-numpy
                             python-scipy
                             ;; With this package enabled it tries to download from remote host
                             ;; during tests and failes
                             ;; python-synphot
                             ))
    (native-inputs (list python-h5py python-pytest python-pytest-astropy
                         python-setuptools-scm))
    (home-page "https://poppy-optics.readthedocs.io/")
    (synopsis "Physical Optics Propagation in Python")
    (description
     "@acronym{POPPY, Physical Optics Propagation in Python} is a Python package that
simulates physical optical propagation including diffraction.  It implements a
flexible framework for modeling Fraunhofer and Fresnel diffraction and point
spread function formation, particularly in the context of astronomical
telescopes.")
    (license license:bsd-3)))

;; 20220706T135507+0100
(define-public python-synphot
  (package
    (name "python-synphot")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "synphot" version))
              (sha256
               (base32
                "0xhfavsgwpxzqg1w6pm43c9mribxfj2c2p0wd8iq19b3ip4yhx84"))))
    (build-system python-build-system)
    (arguments
     (list #:tests? #f
           #:phases #~(modify-phases %standard-phases
                        (replace 'check
                          (lambda* (#:key tests? inputs outputs
                                    #:allow-other-keys)
                            (when tests?
                              (add-installed-pythonpath inputs outputs)
                              (invoke "pytest" "-vv")))))))
    (propagated-inputs (list python-astropy python-numpy python-scipy))
    (native-inputs (list python-pytest python-pytest-astropy
                         python-setuptools-scm))
    (home-page "https://www.github.com/spacetelescope/synphot_refactor")
    (synopsis "Synthetic photometry")
    (description "Synthetic photometry")
    (license license:bsd-3)))

;; 20220706T213133+0100
(define-public python-stsynphot
  (package
    (name "python-stsynphot")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "stsynphot" version))
              (sha256
               (base32
                "1dcgfhypq4sf174zv1cml85irqa8s27fzs527sknww4x2dqsqd51"))))
    (build-system python-build-system)
    (arguments
     (list #:phases #~(modify-phases %standard-phases
                        (replace 'check
                          (lambda* (#:key tests? inputs outputs
                                    #:allow-other-keys)
                            (when tests?
                              (add-installed-pythonpath inputs outputs)
                              (setenv "HOME"
                                      (getcwd))
                              (invoke "pytest" "-vv")))))))
    (propagated-inputs (list python-astropy
                             python-beautifulsoup4
                             python-matplotlib
                             python-numpy
                             python-scipy
                             python-synphot))
    (native-inputs (list python-pytest python-pytest-astropy
                         python-setuptools-scm))
    (home-page "https://github.com/spacetelescope/stsynphot_refactor")
    (synopsis "Synthetic photometry for HST")
    (description "Synthetic photometry for HST")
    (license license:bsd-3)))

;; 20220706T215537+0100
(define-public python-stsci-imagestats
  (package
    (name "python-stsci-imagestats")
    (version "1.6.3")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "stsci.imagestats" version))
              (sha256
               (base32
                "14457izlbnks84dyza75ib3nvx2w8nhlqm9vc1zb7hbhknb5gjvw"))))
    (build-system python-build-system)
    (arguments
     (list #:tests? #f)) ;No teests
    (propagated-inputs (list python-numpy))
    (native-inputs (list python-setuptools-scm))
    (home-page "https://github.com/spacetelescope/stsci.imagestats")
    (synopsis "Compute sigma-clipped statistics on data arrays")
    (description
     "@code{stsci.imagestats} is a package designed to compute various statistics on
image data using sigma-clipping iterations.  It is designed to replicate core
behaviour of the IRAF's")
    (license license:bsd-3)))

;; 20220706T225216+0100
(define-public python-stsci-stimage
  (package
    (name "python-stsci-stimage")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "stsci.stimage" version))
              (sha256
               (base32
                "14iiwr0mgrn5r0r41mk7fyqrr39f95agb4hpl2li4gl88knvy9ck"))))
    (build-system python-build-system)
    (arguments
     (list
           ;; TODO: (Sharlatan-20220706T230732+0100): Tests fail
           ;;
           ;; _____________ ERROR collecting stsci/stimage/tests/test_geomap.py ______________
           ;; import file mismatch:
           ;; imported module 'stsci.stimage.tests.test_geomap' has this __file__ attribute:
           ;; /gnu/store/mh6sw4nqyjzbspwa8hxc3r6fn49ghnyj-python-stsci-stimage-0.2.5/lib/python3.9/site-packages/stsci/stimage/tests/test_geomap.py
           ;; which is not the same as the test file we want to collect:
           ;; /tmp/guix-build-python-stsci-stimage-0.2.5.drv-0/stsci.stimage-0.2.5/stsci/stimage/tests/test_geomap.py
           ;; HINT: remove __pycache__ / .pyc files and/or use a unique basename for your test file modules
           ;;
           #:tests? #f
           #:phases #~(modify-phases %standard-phases
                        (replace 'check
                          (lambda* (#:key tests? inputs outputs
                                    #:allow-other-keys)
                            (when tests?
                              (add-installed-pythonpath inputs outputs)
                              (invoke "pytest" "-rsv" "--cov=./")))))))
    (propagated-inputs (list python-numpy))
    (native-inputs (list python-codecov python-pytest python-pytest-cov
                         python-setuptools-scm))
    (home-page "https://stscistimage.readthedocs.io/en/latest/")
    (synopsis "Various image processing functions")
    (description
     "This package provides astronomical Python package with various
 image processing functions.")
    (license license:bsd-3)))

;; 20220710T122747+0100
(define-public python-stcal
  (package
    (name "python-stcal")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "stcal" version))
              (sha256
               (base32
                "1i8lr8w3jf4y4ss3zimkakk3a18vpdxxgl68fsmnj86innzj6g70"))))
    (build-system python-build-system)
    (propagated-inputs (list python-astropy python-numpy python-scipy))
    (native-inputs (list python-psutil python-pytest python-pytest-cov
                         python-pytest-doctestplus python-pytest-openfiles))
    (home-page "https://github.com/spacetelescope/stcal")
    (synopsis "STScI tools and algorithms used in calibration pipelines")
    (description "STScI tools and algorithms used in calibration pipelines")
    (license license:bsd-3)))

;; 20220710T123019+0100
(define-public python-stdatamodels
  (package
    (name "python-stdatamodels")
    (version "0.4.3")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "stdatamodels" version))
              (sha256
               (base32
                "0lsda897cf186di1pshlh7rhn9klxf4p7ydp1zmbnsq9g4bqbi90"))))
    (build-system python-build-system)
    (propagated-inputs (list python-asdf python-astropy python-jsonschema
                             python-numpy python-psutil))
    (native-inputs (list python-asdf python-psutil python-pytest
                         python-pytest-doctestplus python-pytest-openfiles))
    (home-page "https://github.com/spacetelescope/stdatamodels")
    (synopsis
     "Core support for DataModel classes used in calibration pipelines")
    (description
     "Core support for DataModel classes used in calibration pipelines")
    (license license:bsd-3)))

;; 20220711T123113+0100
(define-public python-stpipe
  (package
    (name "python-stpipe")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "stpipe" version))
              (sha256
               (base32
                "0wh0d3vrkin5acmvs03rwijgwvqj2ciw0svdx5czrdffcwlpklgg"))))
    (build-system python-build-system)
    (propagated-inputs (list python-asdf python-astropy python-crds
                             python-stdatamodels))
    (native-inputs (list python-pytest python-pytest-doctestplus
                         python-pytest-openfiles))
    (home-page "https://github.com/spacetelescope/stpipe")
    (synopsis "Framework for calibration pipeline software")
    (description "Framework for calibration pipeline software")
    (license #f)))

;; 20220711T123349+0100
(define-public python-stsci.image
  (package
    (name "python-stsci.image")
    (version "2.3.5")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "stsci.image" version))
              (sha256
               (base32
                "1vnp4256nbdvapa69cmm80sjz11ygxa49abr9nbvssj6nyyp5icb"))))
    (build-system python-build-system)
    (propagated-inputs (list python-numpy python-scipy))
    (native-inputs (list python-pytest))
    (home-page "https://github.com/spacetelescope/stsci.image")
    (synopsis "Image array manipulation functions")
    (description "Image array manipulation functions")
    (license #f)))

;;+end-spacetelescope

;;20220523T223656+0100
(define-public python2-sphere
  (let ((commit "24c99dda4621b2ad77e811e6ff197fa0697f32ba")
        (revision "1"))
    (package
      (name "python2-sphere")
      (version (git-version "0.0.0" revision commit))
      (source (origin
                (method git-fetch)
                (uri (git-reference
                      (url "https://github.com/bwesterb/py-sphere")
                      (commit commit)))
                (file-name (git-file-name name version))
                (sha256
                 (base32
                  "1ja1dhysj04jc8q6qjak21hql9rya05xpj71x8w8c73fsyg27sqn"))))
      (build-system python-build-system)
      (arguments
       (list #:python python-2)) ;not compatible with Python 3
      (inputs (list python-numpy))
      (home-page "https://github.com/bwesterb/py-sphere")
      (synopsis "Python library for geometry on the sphere")
      (description
       "Python library for geometry on the sphere (and projective plane)")
      (license license:gpl3))))

;; 20220513T172658+0100
(define-public python-bayesicfitting
  (package
    (name "python-bayesicfitting")
    (version "3.0.1")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "BayesicFitting" version))
              (sha256
               (base32
                "08bj2vaicc9cn6mn2hkqri33r1v6iy6skiiddsikgz89lpaccl5g"))))
    (build-system python-build-system)
    (arguments
     (list
           ;; NOTE: (Sharlatan-20220716T140847+0100): tests failed:
           ;;
           ;; TypeError: calling <class
           ;; 'BayesicFitting.source.kernels.Uniform.Uniform'> returned Uniform: 1
           ;; if |x| < 1 else 0, not a test
           ;;
           #:tests? #f))
    (propagated-inputs (list python-astropy python-future python-matplotlib
                             python-numpy python-scipy))
    (home-page "https://www.bayesicfitting.nl")
    (synopsis "Python Toolbox for Astronimical Bayesian fitting")
    (description
     "The BayesicFitting package is a python version of the the fitter classes
in Herschel Common Science System (HCSS).  HCSS was the all encompassing software
system for the operations and analysis of the ESA satelite Herschel.")
    (license license:gpl3+)))

;; 20220513T172614+0100
(define-public python-crds
  (package
    (name "python-crds")
    (version "11.14.0")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "crds" version))
              (sha256
               (base32
                "0nzi93ra8hy9pimcxrns8y65wk76ymlcndhn5zfhgh744fiykrrl"))))
    (build-system python-build-system)
    (arguments
     (list #:phases #~(modify-phases %standard-phases
                        (replace 'check
                          (lambda* (#:key tests? #:allow-other-keys)
                            (when tests?
                              (invoke "pytest" "-vv")))))))
    (propagated-inputs (list awscli
                             ;; python-jwst ;; circular dependency
                             python-asdf
                             python-astropy
                             python-boto3
                             python-filelock
                             python-lxml
                             python-numpy
                             python-parsley
                             python-pysynphot
                             python-roman-datamodels
                             python-stsynphot
                             python-requests))
    (native-inputs (list python-bandit
                         python-flake8
                         python-ipython
                         python-lockfile
                         python-mock
                         python-nose
                         python-pylint
                         python-pytest
                         python-semantic-version))
    (home-page "https://hst-crds.stsci.edu")
    (synopsis
     "Calibration Reference Data System (CRDS) - HST/JWST/Roman reference file management")
    (description
     "CRDS is a package used for working with astronomical reference files for
the HST and JWST telescopes.  CRDS is useful for performing various operations on
reference files or reference file assignment rules.  CRDS is used to assign,
check, and compare reference files and rules, and also to predict those datasets
which should potentially be reprocessed due to changes in reference files or
assignment rules.  CRDS has versioned rules which define the assignment of
references for each type and instrument configuration.  CRDS has web sites
corresponding to each project (http://hst-crds.stsci.edu or
https://jwst-crds.stsci.edu/) which record information about reference files and
provide related services.")
    (license license:bsd-3)))

;; 20220518T205203+0100
;; (define-public calceph
;; added-to-upastream: d730bbbbb3d47d566bd24d0b4a44dcc808435f24
;; CommitDate: Mon May 30 16:34:40 2022 +0200

;; 20220612T205116+0100
(define-public python-losoto
  (package
    (name "python-losoto")
    (version "2.2.1")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "losoto" version))
              (sha256
               (base32
                "0mbfym9iy5nnrxjz5jiz3mvcq9y7bhqsn48b16lky7xhs4fb15gv"))))
    (build-system python-build-system)
    (native-inputs (list boost))
    (propagated-inputs (list python-casacore
                             python-configparser
                             python-cython
                             python-matplotlib
                             python-numexpr
                             python-numpy
                             ;; python-progressbar What's that?
                             python-scipy
                             python-tables))
    (home-page "http://github.com/revoltek/losoto/")
    (synopsis "Astronomical LOFAR Solution Tool")
    (description "LOFAR Solution Tool")
    (license license:gpl3+)))

;; 20220621T190544+0100
;; (define-public python-pynbody
;; added-tu-upstream: 6615e82a63b7515a91aa453cab2c1788f4b1adf9
;; CommitDate: Fri Aug 5 21:44:11 2022 +0300


;; https://github.com/sunpy
;;+begin-sunpy

;; 20220627T202513+0100
(define-public python-sunpy
  (package
    (name "python-sunpy")
    (version "4.0.5")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "sunpy" version))
              (sha256
               (base32
                "0frqii02k93bbfb4wg7272xh1p1r3g8b0yxja13znr4ysidbg3gc"))))
    (build-system python-build-system)
    (arguments
     ;; NOTE: (Sharlatan-20221006T012455+0100): Tests require Internet access to
     ;; download test-data, some of the native-inputs are not packed yet either.
     ;; Pack rest, run partial tests without downloading files.
     (list #:tests? #t
           #:phases #~(modify-phases %standard-phases
                        (add-before 'install 'writable-compiler
                          (lambda _
                            (make-file-writable "sunpy/_compiler.c")))
                        (add-before 'check 'writable-compiler
                          (lambda _
                            (make-file-writable "sunpy/_compiler.c")))
                        (replace 'check
                          (lambda* (#:key inputs outputs tests?
                                    #:allow-other-keys)
                            (when tests?
                              (add-installed-pythonpath inputs outputs)
                              (setenv "HOME" "/tmp")
                              (invoke "python"
                                      "-m"
                                      "pytest"
                                      "-vvv"
                                      "-r"
                                      "a"
                                      "--pyargs"
                                      "sunpy"))))
                        (delete 'sanity-check))))
    (native-inputs (list python-extension-helpers
                         python-aiohttp
                         python-packaging
                         python-pytest
                         python-pytest-astropy-0.10
                         python-pytest-doctestplus
                         python-pytest-mock
                         python-pytest-mpl
                         python-pytest-xdist
                         python-semantic-version
                         python-setuptools-scm))
    (inputs (list python-asdf
                  python-asdf-astropy
                  python-astropy-5.1
                  python-beautifulsoup4
                  python-cdflib
                  python-dask
                  python-dateutil
                  python-drms
                  python-glymur
                  python-h5netcdf
                  python-h5py
                  python-hypothesis
                  python-jplephem
                  python-matplotlib
                  python-mpl-animators
                  python-numpy
                  ;; python-opencv-python ; not packed yet
                  parfive
                  python-pandas
                  ;; python-reproject
                  python-scikit-image
                  python-scipy
                  python-sqlalchemy
                  python-tqdm
                  python-zeep))
    (home-page "https://sunpy.org")
    (synopsis "Python library for Solar Physics")
    (description
     "SunPy is package for solar physics and is meant to be a free alternative to the
SolarSoft data analysis environment.")
    (license license:bsd-2)))

;;20220627T213949+0100
(define-public python-drms
  (package
    (name "python-drms")
    (version "0.6.2")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "drms" version))
              (sha256
               (base32
                "1nmpcpaz7bsg35nw2vc5a7rp9fpc49qjlhvy3rhbvaramwy2ppr1"))))
    (build-system python-build-system)
    (arguments
     ;; Tests depends on sunpy, which depends on drms
     (list #:tests? #f))
    (propagated-inputs (list python-numpy python-pandas))
    (native-inputs (list python-astropy python-pytest python-setuptools-scm))
    (home-page "https://sunpy.org")
    (synopsis
     "Access astronomical HMI, AIA and MDI data with Python from the public JSOC DRMS server")
    (description
     "DRMS module provides an easy-to-use interface for accessing HMI, AIA and MDI
data with Python.  It uses the publicly accessible
JSOC (@url{http://jsoc.stanford.edu/}) DRMS server by default, but can also be
used with local NetDRMS sites.")
    (license license:bsd-2)))

;;+end-sunpy

;; 20220627T211818+0100
(define-public python-cdflib
  (package
    (name "python-cdflib")
    (version "0.4.4")
    (source (origin
              (method git-fetch) ;no tests in pypi archive
              (uri (git-reference
                    (url "https://github.com/MAVENSDC/cdflib")
                    (commit version)))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1h7750xvr6qbhnl2w3bhccs3pwp3hci3624pvvxym0yjinmskjlz"))))
    (build-system python-build-system)
    (arguments
     (list #:phases #~(modify-phases %standard-phases
                        (replace 'check
                          (lambda* (#:key tests? #:allow-other-keys)
                            (when tests?
                              (setenv "HOME"
                                      (getcwd))
                              (invoke "pytest" "-vv" "tests")))))))
    (propagated-inputs (list python-attrs python-numpy))
    (native-inputs (list python-astropy
                         python-hypothesis
                         python-pytest
                         python-pytest-cov
                         python-pytest-remotedata
                         python-xarray))
    (home-page "https://github.com/MAVENSDC/cdflib")
    (synopsis "Python library to deal with NASA's CDF astronmical data format")
    (description
     "This package provides a Python CDF reader toolkit
It provides functionality:
@itemize
@item Ability to read variables and attributes from CDF files (see CDF Reader
Class)
@item Writes CDF version 3 files (see CDF Writer Class)
@item Can convert between CDF time types (EPOCH/EPOCH16/TT2000) to other common
time formats (see CDF Time Conversions)
@item Can convert CDF files into XArray Dataset objects and vice versa,
attempting to maintain ISTP compliance (see Working with XArray)
@end itemize
")
    (license license:expat)))

;; 20220817T224720+0100
(define-public libebf-c-cpp
  (package
    (name "libebf-c-cpp")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://sourceforge/ebfformat/libebf/c-cpp/libebf_c_cpp-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05473vwdilhnzjyjn3frq8n0pc4m0aibm8dx5hk5mip9h02ms85b"))))
    (build-system gnu-build-system)
    (home-page "http://ebfformat.sourceforge.net/")
    (synopsis "Efficient Binary Format C/C++ library")
    (description "")
    (license license:gpl2)))

;; 20220818T223250+0100
(define-public torus
  (let ((commit "0e8ac960cb0122eef58ec9693a38e62e1b21eaf9")
        (revision "0"))
    (package
      (name "torus")
      (version (git-version "0.0.0" revision commit))
      (source (origin
                (method git-fetch)
                (uri (git-reference
                      (url "https://github.com/PaulMcMillan-Astro/Torus")
                      (commit commit)))
                (sha256
                 (base32
                  "09yrq2qyw8b7bmh57i3iagpfshz04z7xz44q6svpw3af7gjw93ca"))
                (file-name (git-file-name name version))))
      (build-system gnu-build-system)
      (arguments
       ;; With parallel build enabled raised random "file truncated" issues.
       (list #:parallel-build? #f
             #:tests? #f ;No tests
             #:phases #~(modify-phases %standard-phases
                          (add-after 'unpack 'patch-makefiles
                            (lambda* (#:key inputs #:allow-other-keys)
                              (substitute* "makefile"
                                (("...libebf_c_cpp-0.0.3.include.")
                                 (search-input-directory inputs "include/"))
                                (("...libebf_c_cpp-0.0.3.lib.")
                                 (search-input-directory inputs "lib/")))
                              (substitute* "src/makefile"
                                (("...libebf_c_cpp-0.0.3.src.cpp.")
                                 (search-input-directory inputs "include/"))
                                (("...libebf_c_cpp-0.0.3.lib.")
                                 (search-input-directory inputs "lib/")))))
                          (delete 'configure)
                          (replace 'install
                            (lambda* (#:key outputs #:allow-other-keys)
                              (let ((out (assoc-ref outputs "out")))
                                (delete-file "bin/.gitignore")
                                (for-each (lambda (file)
                                            (install-file file
                                                          (string-append out
                                                           "/bin")))
                                          (find-files "bin"))))))))
      (native-inputs (list libebf-c-cpp))
      (home-page "https://github.com/PaulMcMillan-Astro/Torus")
      (synopsis
       "To produce models for orbits in action-angle coordinates in axisymmetric potentials")
      (description
       "The package is based around `torus mapping', which is a non-perturbative
technique for creating orbital tori for specified values of the action
integrals. Given an orbital torus and a star's position at a reference time, one
can compute its position at any other time, no matter how remote.")
      (license license:gpl2+))))
