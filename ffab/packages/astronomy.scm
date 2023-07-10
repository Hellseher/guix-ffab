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
  #:use-module (ffab packages photo)
  #:use-module (ffab packages python-check)
  #:use-module (ffab packages python-web)
  #:use-module (ffab packages python-xyz)
  #:use-module (ffab packages xml)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages algebra)
  #:use-module (gnu packages astronomy)
  #:use-module (gnu packages autotools)
  #:use-module (gnu packages bison)
  #:use-module (gnu packages boost)
  #:use-module (gnu packages check)
  #:use-module (gnu packages cmake)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages curl)
  #:use-module (gnu packages databases)
  #:use-module (gnu packages documentation)
  #:use-module (gnu packages flex)
  #:use-module (gnu packages gawk)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages gettext)
  #:use-module (gnu packages gl)
  #:use-module (gnu packages glib)
  #:use-module (gnu packages gnome)
  #:use-module (gnu packages gps)
  #:use-module (gnu packages graph)
  #:use-module (gnu packages graphviz)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages image)
  #:use-module (gnu packages image-processing)
  #:use-module (gnu packages libusb)
  #:use-module (gnu packages lua)
  #:use-module (gnu packages machine-learning)
  #:use-module (gnu packages maths)
  #:use-module (gnu packages multiprecision)
  #:use-module (gnu packages multiprecision)
  #:use-module (gnu packages ncurses)
  #:use-module (gnu packages netpbm)
  #:use-module (gnu packages ninja)
  #:use-module (gnu packages openstack)
  #:use-module (gnu packages pascal)
  #:use-module (gnu packages perl)
  #:use-module (gnu packages photo)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages python)
  #:use-module (gnu packages python-build)
  #:use-module (gnu packages python-check)
  #:use-module (gnu packages python-compression)
  #:use-module (gnu packages python-crypto)
  #:use-module (gnu packages python-science)
  #:use-module (gnu packages python-web)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages qt)
  #:use-module (gnu packages readline)
  #:use-module (gnu packages sphinx)
  #:use-module (gnu packages sqlite)
  #:use-module (gnu packages swig)
  #:use-module (gnu packages tcl)
  #:use-module (gnu packages textutils)
  #:use-module (gnu packages time)
  #:use-module (gnu packages tls)
  #:use-module (gnu packages version-control)
  #:use-module (gnu packages wxwidgets)
  #:use-module (gnu packages xml)
  #:use-module (gnu packages)
  #:use-module (guix build utils)
  #:use-module (guix build-system cmake)
  #:use-module (guix build-system copy)
  #:use-module (guix build-system gnu)
  #:use-module (guix build-system meson)
  #:use-module (guix build-system pyproject)
  #:use-module (guix build-system python)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages)
  #:use-module (guix utils)
  #:use-module (ice-9 match)
  #:use-module (srfi srfi-1))

;; 20220626T221017+0100
;; (define-public splash
;; added-to-downstream-guix 43b8df4bece2a207018dc0fedc44d3d188d2d0f0
;; CommitDate: Thu Oct 6 00:11:18 2022 +0200

;; 20221115T204848+0000
;; (define-public alfa
;; added-to-downstream-guix 594f5ef35107d5641c44dac5cd7e9fb3737b674b
;; CommitDate: Fri Dec 2 00:02:12 2022 +0100

;; 20230220T213057+0000
;; (define-public calcmysky
;; added-to-downstream-guix aaf7e31d1912cc05c9bf3163a951bfa91bc129db
;; CommitDate: Tue Mar 7 11:39:50 2023 +0100

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
              (file-name (git-file-name name version))
              (modules '((guix build utils)))
              ;; TODO: (Sharlatan-20221102T221347+0000): Unbundle it
              #;(snippet
               #~(begin
                  ;; Delete bundled libraries.
                  (delete-file-recursively "wcs")))))
    (build-system gnu-build-system)
    (arguments
     (list #:tests? #f ;No tests
           #:configure-flags #~(list "--enable-shared"
                                     "--enable-dl"
                                     (string-append "--with-tcl=" #$(this-package-input "tcl") "/lib"))
           #:phases #~(modify-phases %standard-phases
                        (replace 'bootstrap
                          (lambda _
                            (substitute* "mkconfigure"
                              (("#!/bin/bash")
                               (string-append "#!"
                                              (which "bash"))))
                            (invoke "./mkconfigure"))))))
    (native-inputs (list autoconf pkg-config perl))
    (inputs (list tcl wcslib zlib))
    (home-page "https://github.com/ericmandel/funtools")
    (synopsis "Astronomical minimal buy-in FITS libray")
    (description
     "Funtools is a minimal buy-in FITS library and utility
package originally developed at the the High Energy Astrophysics Division of
SAO. Although no longer actively supported at SAO, it is still widely used
within the astronomical community, especially among X-ray astronomers.

The Funtools library provides simplified access to a wide array
of file types: standard astronomical FITS images and binary tables,
raw arrays and binary event lists, and even tables of ASCII column
data. A sophisticated region filtering library (compatible with ds9)
filters images and tables using Boolean operations between geometric
shapes, support world coordinates, etc. Funtools also supports
advanced capabilities such as optimized data searching using index files.")
    (license license:lgpl2.0+)))

;; 20230710T225718+0100
(define-public ccfits
  (package
    (name "ccfits")
    (version "2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "https://heasarc.gsfc.nasa.gov/docs/software/fitsio/ccfits/"
                    "CCfits-" version ".tar.gz"))
              (sha256
               (base32
                "04l6na8vr5xadz3rbx62as79x1ch4994vbb625kx0dz5czdkkd1b"))))
    (build-system cmake-build-system)
    (inputs (list cfitsio))
    (home-page "https://heasarc.gsfc.nasa.gov/docs/software/fitsio/ccfits/")
    (synopsis "C++ interface to the CFITSIO")
    (description
     "CCfits is an object oriented interface to the cfitsio library.  It is
designed to make the capabilities of cfitsio available to programmers working in
C++.  It is written in ANSI C++ and implemented using the C++ Standard Library
with namespaces, exception handling, and member template functions.")
    (license (license:non-copyleft "file://License.txt"
                                   "See License.txt in the distribution."))))


;; http://starlink.eao.hawaii.edu/starlink
;;+begin-Starlink

;; TODO: (Sharlatan-20221102T221831+0000): Complete packing
;;
;; 20220619T140953+0100
(define starlink
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

;; TODO: (Sharlatan-20221102T221905+0000): Complete packing
;;
;; starting phase `bootstrap'
;; running './bootstrap'
;; patch-shebang: ./bootstrap: changing `/bin/sh' to `/gnu/store/4y5m9lb8k3qkb1y9m02sw9w9a6hacd16-bash-minimal-5.1.8/bin/sh'
;; Bootstrapping /tmp/guix-build-starlink-pal-0.9.8.drv-0/source ...
;; bootstrap error: The starconf application is not in your path
;;
;; 20220618T223938+0100
(define starlink-pal
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
    (version "20221102-160001")
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
                "1lgg9jx1mkn8lv26jm7cp70lr7j4l3nk57wis3dsjvyv7s26mvfm"))))
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
(define casacore-ffab
  (package
    (name "casacore-ffab")
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

;; TODO: (Sharlatan-20221031T194744+0000): Failed to build, failed to upgrade to
;; the latest version due to casacore build failure, need more time to
;; investigate.
;;
;; 20220621T222748+0100
(define python-casacore
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
;; (define-public aoflagger
;; added-to-downstream-guix cdff1423c0d03e7d3e8445cf14f1123f694468c8
;; CommitDate: Thu Aug 4 12:05:47 2022 +0200

;; 20220614T105114+0100
;; (define-public aocommon
;; added-to-downstream-guix 4ccd4176a2f63004fe10c9e8c9ccc8ba46b9d408
;; CommitDate: Thu Aug 4 12:05:47 2022 +0200

;; TODO: (Sharlatan-20220704T211255+0100): Needs more love
;;
;; https://astrometrynet.readthedocs.io/en/latest/build.html#build
;;
;; /gnu/store/4y5m9lb8k3qkb1y9m02sw9w9a6hacd16-bash-minimal-5.1.8/bin/sh: line 1: /bin/sh: No such file or directory
;; /gnu/store/4y5m9lb8k3qkb1y9m02sw9w9a6hacd16-bash-minimal-5.1.8/bin/sh: line 1: /bin/sh: No such file or directory
;; ../util/makefile.deps:44: deps: No such file or directory
;; make[1]: *** [../util/makefile.tests:31: test_libkd-main.c] Error 127
;; make[1]: *** Waiting for unfinished jobs....
;; /gnu/store/4y5m9lb8k3qkb1y9m02sw9w9a6hacd16-bash-minimal-5.1.8/bin/sh: line 1: /bin/sh: No such file or directory
;; make[1]: *** [../util/makefile.tests:31: test_libkd_io-main.c] Error 127
;; make[1]: *** [../util/makefile.tests:31: test_dualtree_nn-main.c] Error 127
;; make[1]: Leaving directory '/tmp/guix-build-astrometry-0.90.drv-0/source/libkd'
;; make: *** [Makefile:89: libkd] Error 2
;;
;; 20210415T214924+0100
(define astrometry
  (package
    (name "astrometry")
    (version "0.91")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/dstndstn/astrometry.net")
                    (commit version)))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "181cyydhdmfx6x9f8rfc6szfq3cb1n3q2dfx5czfci6gj82h4wlf"))))
    (build-system gnu-build-system)
    (arguments
     (list #:phases #~(modify-phases %standard-phases
                        (add-after 'unpack 'patch-shebangs
                          (lambda _
                            (substitute* "util/make-tests.sh"
                              (("/bin/sh") (which "sh"))))))))
    (native-inputs (list autoconf
                         automake
                         git
                         libtool
                         pkg-config
                         python-wrapper
                         swig))
    (inputs (list cairo
                  bzip2
                  cfitsio
                  gsl
                  libjpeg-turbo
                  libpng
                  netpbm
                  python-fitsio
                  python-numpy
                  wcslib
                  zlib))
    (home-page "https://astrometry.net/")
    (synopsis "Automatic recognition of astronomical images")
    (description "")
    (license license:gpl3+)))

;; TODO: (Sharlatan-20221102T225942+0000): Complete pacakge
;;
;; 20220607T220301+0100
(define python-astrometry
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

;; (define-public imppg
;; added-to-downstream-guix bf9a1dfd591d5e166581919ac92e67f47219f0eb
;; CommitDate: Sun Dec 5 12:35:55 2021 +0100

;; (define-public eye
;; added-to-downstream-guix 51418c32d95d8188d8877616829f26479f1135c6

;; (define-public indi
;; added-to-downstream-guix ae416e852ad6b305ffaf67343d7192bd7c4c89aa

;; (define-public libpasastro
;; added-to-downstream-guix 906155e437c9513462f19baac6e88b976f42b358

;; 20220724T204740+0100
;; (define-public libsep
;; added-to-downstream-guix 6ad9a094c1a25a4aa1df559943f9bc6ca8870752
;; CommitDate: Mon Aug 1 14:08:07 2022 +0200

;; 20210127T001151+0000
;; (define-public missfits
;; added-to-downstream-guix 1aee32a26e1a96dd457fcf62f97f514c7a562475
;; CommitDate: Wed Jan 27 10:39:54 2021 +0100

;; TODO: (Sharlatan-20210415T225235+0100): Failing on build phase
;;
;; collect2: error: ld returned 1 exit status
;;
;; 20221030T224339+0000
(define psfex
  (package
    (name "psfex")
    (version "3.21.1")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/astromatic/psfex")
                    (commit version)))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1ngxwrjj2pkb7frwcqf91hkf2hfnxw00ngzfliv61209xb1lxd3s"))))
    (build-system gnu-build-system)
    (arguments
     (list
      #:configure-flags
      #~(list "--enable-openblas"
              "--enable-plplot"
              (string-append
               "--with-fftw-libdir=" #$(this-package-input "fftwf") "/lib")
              (string-append
               "--with-fftw-incdir=" #$(this-package-input "fftwf") "/include")
              (string-append
               "--with-openblas-libdir=" #$(this-package-input "openblas") "/lib")
              (string-append
               "--with-openblas-incdir=" #$(this-package-input "openblas") "/include")
              (string-append
               "--with-plplot-libdir=" #$(this-package-input "plplot") "/lib")
              (string-append
               "--with-plplot-incdir=" #$(this-package-input "plplot") "/include"))))
    (native-inputs (list autoconf automake libtool pkg-config))
    (inputs (list openblas fftwf plplot))
    (home-page "https://www.astromatic.net/software/psfex")
    (synopsis "Astronomical PSF modelling and quality assessment")
    (description
     "@acronym{PSFEx, PSF Extractor} extracts models of the @acronym{PSF, Point
Spread Function} from FITS images processed with SExtractor, and measures the
quality of images. The generated PSF models can be used for model-fitting
photometry or morphological analyses.")
    (license license:gpl3+)))

;; (define-public weightwatcher
;; added-to-downstream-guix a80d489227738dffea24713555c9d940f5ffcce0
;; CommitDate: Fri Jan 29 11:11:13 2021 +0100

;; (define-public stuff
;; added-to-downstream-guix c21ad767d4368dbd9ff37a6fd5cdea8aa37fec57
;; CommitDate: Fri Jan 29 10:54:17 2021 +0100

;; (define-public skymaker
;; added-to-downstream-guix 33648567dd229b1302d2258e76d8b30593fedce6
;; CommitDate: Thu Jan 28 13:43:49 2021 +0100

;; TODO: (Sharlatan-20221102T230446+0000): Configure failing

;; fpc compiler not found!
;; Please specify the location of the fpc compiler with :
;; ./configure fpcbin=path_to_fpc
;; error: in phase 'configure': uncaught exception:
;;
;; 20221102T230438+0000
(define skychart
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
      (native-inputs (list fpc pkg-config autoconf automake))
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
;; added-to-downstream-guix b2d6f127c24787df00bffd918fa879842f933817
;; CommitDate: Mon Jan 25 17:59:02 2021 +0100

;; (define-public python-sep
;; added-to-downstream-guix d1bd22b9fb17e94931b7ebe23c6d9735b195442a
;; CommitDate: Fri Feb 19 11:05:33 2021 +0100

;; (define-public python-jplephem
;; added-to-downstream-guix 35d13a9099cad3326f0961760bb4ee2ceb692fa9
;; CommitDate: Sun Feb 7 10:20:52 2021 +0100

;; https://github.com/asdf-format
;;+begin-asdf-format

;; 20221019T231950+0100
;; (define-public python-asdf-standard
;; added-to-downstream-guix 1b03c64a05a319631a82cd15b9dda914e94c5142
;; CommitDate: Mon Nov 21 14:25:12 2022 +0000

;; 20221023T225444+0100
;; (define python-asdf-unit-schemas
;; added-to-downstream-guix f99a1e257d7ba5995afcf05f429d79d6f097a517
;; CommitDate: Mon Nov 21 14:25:12 2022 +0000

;; 20221023T225455+0100
;; (define python-asdf-fits-schemas
;; added-to-downstream-guix 6924f4a866dbda02b15b075f7718d4aa794090f3
;; CommitDate: Mon Nov 21 14:25:12 2022 +0000

;; 20221023T225504+0100
;; (define python-asdf-time-schemas
;; added-to-downstream-guix 2959b98a720fb60e54d09128aa08d109f6601f02
;; CommitDate: Mon Nov 21 14:25:12 2022 +0000

;; 20211111234021+0000
;; (define python-asdf-transform-schemas
;; added-to-downstream-guix 89a5c53f382eec3dc4e2b60d819b39ada003df44
;; CommitDate: Sun Jan 30 11:46:17 2022 -0300

;; 20211111235021+0000
;; (define-public python-asdf
;; added-to-downstream-guix f498823e7843379499d35ae397c38dc879fb9844
;; CommitDate: Sun Feb 21 01:07:41 2021 +0100
(define-public python-asdf-ffab
  (package (inherit python-asdf)
    (name "python-asdf")
    (version "2.15.0")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "asdf" version))
       (sha256
        (base32 "11s56797l5330kkhppkyz0bsvms016knmyswj4gx91zrxf8iqvv8"))))))

;; (define python-asdf-wcs-schemas
;; added-to-downstream-guix 007495210d41bcb8dc3ddcf8e04f2d85c75ba990
;; CommitDate: Sun Jan 30 11:46:19 2022 -0300

;; (define python-asdf-coordinates-schemas
;; added-to-upastream: 527ee1bdc82d608dc41438c4f3c6e86260aecb85
;; CommitDate: Sun Jan 30 11:46:18 2022 -0300

;; (define python-asdf-transform-schemas
;; added-to-upstram: 89a5c53f382eec3dc4e2b60d819b39ada003df44
;; CommitDate: Sun Jan 30 11:46:17 2022 -0300

;;+end-asdf-format

;; (define-public python-astroalign
;; added-to-downstream-guix d6996fa05277f240b70b18c227419c371cfc737f
;; CommitDate: Fri Feb 19 11:05:34 2021 +0100

;;  http://www.astropy.org https://github.com/astropy
;;+begin-astropy

;; (define-public python-astropy
;; added-to-downstream-guix 9371cf2138711ea7305951d82c5cf0b36ac4d6f1

;; 20211111235021+0000
;; (define-public python-asdf-astropy
;; added-to-downstream-guix 7b2747c81d52dd4727cc642df2ebbce485c7e204
;; CommitDate: Sun Jan 30 11:46:18 2022 -0300
(define-public python-asdf-astropy-ffab
  (package (inherit python-asdf-astropy)
    (name "python-asdf-astropy")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "asdf-astropy" version))
       (sha256
        (base32 "1difb2y1hlalbhrw8znwmmc0vzgg44zfsay98lpllb7y0536fas6"))))
    (arguments
     (list #:tests? #f))))

;; 20221123T230513+0000
;; (define-public python-reproject
;; added-to-downstream-guix a3d85918f90e31118bc9b7e483520d0ae6192e3d
;; CommitDate: Fri Nov 25 10:51:52 2022 +0000

;; 20221107T133138+0000
(define-public python-astroplan
  (package
    (name "python-astroplan")
    (version "0.8")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "astroplan" version))
              (sha256
               (base32
                "1ixx8q4ya7af4br9rs1jmhpivsb0zwqgi7iryxc5ykq39r3n7i0c"))))
    (build-system pyproject-build-system)
    (arguments
     (list
      ;; FIXME: (Sharlatan-20221107T133443+0000): Failing tests
      #:tests? #f))
    (propagated-inputs (list python-astropy python-numpy python-pytz python-six))
    (native-inputs (list python-pytest-astropy))
    (home-page "https://github.com/astropy/astroplan")
    (synopsis "Observation planning package for astronomers")
    (description "Observation planning package for astronomers")
    (license license:bsd-3)))

;;+end-astropy

;; https://github.com/jobovy
;;+begin-jobovy

;; FIXME: (Sharlatan-20221104T223758+0000): Complete package, failing build
;;
;; FileNotFoundError: [Errno 2] No such file or directory: '/homeless-shelter/.galpyrc'
;; ImportError: dynamic module does not define module export function (PyInit_libgalpy)
;;
;; 20220615T234403+0100
(define python-galpy
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

;; 20211111T235042+0000
;; (define-public python-gwcs
;; added-to-downstream-guix 3e497b3a4c8146b4e67807f64bea3d986df9894a
;; CommitDate: Sun Jan 30 11:46:19 2022 -0300
(define-public python-gwcs-ffab
  (package (inherit python-gwcs)
    (name "python-gwcs")
    (version "0.18.3")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "gwcs" version))
       (sha256
        (base32 "0mgyk5mgmj242g8nl7glcj689vry3ncwf04b8q3hasjcc9bs0rm4"))))))

;; 20220131T235042+0000
;; (define-public python-jwst
;; added-to-downstream-guix 339be9dad527bb0805e35dc1816cf373d445ed91
;; CommitDate: Wed Jun 14 14:52:23 2023 +0300

;; 20220513T211720+0100
;; (define-public python-pysynphot
;; added-to-downstream-guix b08be61a026fae900d37c158fd1b251bf21f5450
;; CommitDate: Wed Jun 14 14:52:21 2023 +0300

;; 20220513T215637+0100
;; (define-public python-roman-datamodels
;; added-to-downstream-guix 8c1171da28b7f7bb42cfd11de428249b4e396a8e
;; CommitDate: Wed Jun 14 14:52:21 2023 +0300

;; 20220513T220144+0100
;; (define-public python-rad
;; added-to-downstream-guix 2ff90902c07ad377f94d94bd2b047e7170171a41
;; CommitDate: Wed Jun 14 14:52:21 2023 +0300

;; 20220523T215048+0100
;; (define-public python-tweakwcs
;; added-to-downstream-guix 308bee5f000703f063f5fbccd1c439e8c905a09c
;; CommitDate: Wed Jun 14 14:52:22 2023 +0300

;; NOTE: (Sharlatan-20221105T230143+0000): 1.2.23 fails to build
;;
;; https://github.com/spacetelescope/spherical_geometry/issues/227
;;
;;20220523T215603+0100
;; (define-public python-spherical-geometry
;; added-to-downstream-guix b12ee1ee5b8b53bf27b79ce81b1b2158cc7de484
;; CommitDate: Sat Feb 25 00:00:34 2023 +0100

;; 20220705T162506+0100
;; (define-public python-drizzle
;; added-to-down-stream-guix f9616163d0666142d09f2a5b69a58732d18ca62e
;; CommitDate: Wed Jun 14 14:52:23 2023 +0300

;; 20220706T114426+0100
;; (define-public python-poppy
;; added-to-downstream-guix 8514a7532591b97c2adbe8a20cb4e630ff6b8654
;; CommitDate: Mon Jan 16 12:13:07 2023 -0500

;; 20230227T230548+0000
;; (define-public python-poliastro
;; added-to-downstream-guix e36a9148782af0a9f930fa7c8a4c26f38617af0f
;; CommitDate: Thu Mar 16 00:16:07 2023 +0100

;; 20220706T135507+0100
;; (define-public python-synphot
;; added-to-downstream-guix c0dfd0470945b1e2d560aa2efc348283b8be0d39
;; CommitDate: Wed Jun 14 14:52:22 2023 +0300

;; 20220706T213133+0100
;; (define-public python-stsynphot
;; added-to-downstream-guix 3a952dc04c980df43f9cbf1eacb2fb550e506e38
;; CommitDate: Wed Jun 14 14:52:22 2023 +0300

;; 20220706T215537+0100
;; (define-public python-stsci-imagestats
;; added-to-downstream-guix 995443acacea93b3cec5aca364189c14aa370ea1
;; CommitDate: Wed Jun 14 14:52:22 2023 +0300

;; 20220706T225216+0100
;; (define-public python-stsci-stimage
;; added-to-downstream-guix 95c1e5121a1238c745860d7a7033bdb30c91b7cf
;; CommitDate: Wed Jun 14 14:52:22 2023 +0300

;; 20220710T122747+0100
;; (define-public python-stcal
;; added-to-downstream-guix 37bfbd4fcffc22d72dbd3aff1dd98866571479fe
;; CommitDate: Wed Jun 14 14:52:23 2023 +0300

;; 20220710T123019+0100
;; (define-public python-stdatamodels
;; added-to-downstream-guix 2ff1c352d4032a588f4b0d8ebe0eb3e946fbc3e1
;; CommitDate: Wed Jun 14 14:52:22 2023 +0300

;; 20220711T123113+0100
;; (define-public python-stpipe
;; added-to-downstream-guix e5b8a87b40710590421915bec0d0c161b684b9fc
;; CommitDate: Wed Jun 14 14:52:22 2023 +0300

;; 20220711T123349+0100
;; (define-public python-stsci-image
;; added-to-downstream-guix 04cf30e15323fa56c1f0ce7e4e8f3981dab9f99a
;; CommitDate: Wed Jun 14 14:52:22 2023 +0300

;; 20221106T092616+0000
;; (define-public python-wiimatch
;; added-to-downstream-guix 2b085c4b41cd0aa888d9f4c027a23c483a7c73e5
;; CommitDate: Wed Jun 14 14:52:23 2023 +0300

;; 20221106T220436+0000
(define-public python-ci-watson
  (package
    (name "python-ci-watson")
    (version "0.6.1")
    (source
     (origin
       ;; The source distributed on PyPI is outdated.
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/spacetelescope/ci_watson")
             (commit version)))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1zfysc16avxb90gfihwfbh393r6zj013fg9ca8wh3yvxqjjkhllz"))))
    (arguments
     (list
      #:phases #~(modify-phases %standard-phases
                   (add-before 'build 'set-version
                     (lambda _
                       ;; NOTE: (Sharlatan-20221023T220057+0100): Update
                       ;; to valid version when release is availalbe.
                       (setenv "SETUPTOOLS_SCM_PRETEND_VERSION" "0.6.1"))))))
    (build-system pyproject-build-system)
    (propagated-inputs (list python-astropy))
    (native-inputs (list ;python-astropy-header
                    python-crds
                    python-pytest
                    python-requests
                    python-semantic-version
                    python-setuptools-scm))
    (home-page "https://ci-watson.readthedocs.io/")
    (synopsis "CI helper for STScI Jenkins")
    (description "Thi package provide STScI Jenkis CI/CD helper.")
    (license license:bsd-3)))

;; 20220513T172614+0100
;; (define-public python-crds
;; added-to-downstream-guix 23bc5e12d44122991062ad68a489ab10949142aa
;; CommitDate: Wed Jun 14 14:52:22 2023 +0300

;;+end-spacetelescope

;; TODO: (Sharlatan-20221106T122819+0000): failing build or check write lib
;;
;;20220523T223656+0100
(define python2-sphere
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
;; (define-public python-bayesicfitting
;; added-to-downstream-guix 2095fe7b9671b69b060dff8be2a4eea89cd61923
;; CommitDate: Wed Jun 14 14:52:22 2023 +0300

;; 20220518T205203+0100
;; (define-public calceph
;; added-to-upastream: d730bbbbb3d47d566bd24d0b4a44dcc808435f24
;; CommitDate: Mon May 30 16:34:40 2022 +0200

;; TODO: (Sharlatan-20221031T193952+0000): Update to 2.3 requires casacore
;; upgrade which failed during build phase.
;; 20220612T205116+0100
(define python-losoto
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
                             python-scipy
                             python-tables))
    (home-page "http://github.com/revoltek/losoto/")
    (synopsis "Low-Frequency Array Solution Tool")
    (description
     "@acronym{Low-Frequency Array, LOFAR} Solution Tool is a Python package which
handles LOFAR solutions in a variety of ways. The data files used by LoSoTo are
not in the standard parmdb format used by BBS/NDPPP (e.g. the “instrument”
table). LoSoTo uses instead an innovative data file, called H5parm, which is
based on the HDF5 standard")
    (license license:gpl3+)))

;; 20220621T190544+0100
;; (define-public python-pynbody
;; added-tu-upstream: 6615e82a63b7515a91aa453cab2c1788f4b1adf9
;; CommitDate: Fri Aug 5 21:44:11 2022 +0300


;; https://github.com/sunpy
;;+begin-sunpy

;; 20220627T202513+0100
;; (define-public python-sunpy
;; added-to-downstream-guix 78ee6dcfe13c1561ff1d5cdfc2c2d4fa8afe0883
;; CommitDate: Fri Nov 25 10:51:52 2022 +0000

;;20220627T213949+0100
;; (define-public python-drms
;; added-to-downstream-guix 3271fa1f402e497ff1de9cc2dbc2b09e1a32078f
;; CommitDate: Fri Nov 25 10:51:52 2022 +0000

;; 20220702T165531+0100
;; (define-public python-mpl-animators
;; added-to-downstream-guix 0458cbd84c03068241dfaf293b0594ec07dc2019
;; CommitDate: Fri Nov 25 10:51:52 2022 +0000

;; 20221123T225008+0000
;; (define-public python-hvpy
;; added-to-downstream-guix 0575012803683ebacd43029530683af7bdf791f9
;; CommitDate: Fri Nov 25 10:51:52 2022 +0000

;;+end-sunpy

;; 20220627T211818+0100
;; (define-public python-cdflib
;; added-to-downstream-guix e72c1f148a473d67fa525e49caf18cf138d02e10
;; CommitDate: Fri Jul 8 23:58:12 2022 +0200

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
    ;; TODO: (Sharlatan-20221106T121832+0000): Need more info here
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

;; 20221020T220443+0100
;; (define-public siril
;; added-to-downstream-guix 8d7c96284a2e32553f86df0faf378f185913cce7
;; CommitDate: Mon Nov 14 12:31:34 2022 +0100

;; 20221101T215432+0000
(define-public libsharp
  (package
    (name "libsharp")
    (version "1.0.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Libsharp/libsharp")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0ih13jl0ippxgia7dchrfldxnpwd84lhb64xqvv9swnail5866ij"))))
    (build-system gnu-build-system)
    (arguments
     (list #:phases
           #~(modify-phases %standard-phases
               (replace 'check
                 (lambda* (#:key tests? #:allow-other-keys)
                   (when tests?
                     (invoke "make" "test" "perftest"))))
               (replace 'install
                 ;; The Makefile lacks an ‘install’ target.
                 (lambda* (#:key outputs #:allow-other-keys)
                   (let* ((out (assoc-ref outputs "out"))
                          (bin (string-append out "/bin"))
                          (include (string-append out "/include"))
                          (lib (string-append out "/lib")))
                     (mkdir-p (string-append lib "/pkgconfig"))
                     (with-output-to-file (string-append lib "/pkgconfig/libsharp.pc")
                       (lambda _
                         (format #t "prefix=~a~@
                          exec_prefix=${prefix}~@
                          libdir=${exec_prefix}/lib~@
                          includedir=${prefix}/include~@
                          ~@
                          Name: libsharp~@
                          Version: ~a~@
                          Description: Spherical harmonic transforms revisited~@
                          Libs: -L${libdir} -lsharp~@
                          Cflags: -I${includedir}~%"
                                 out #$version)))
                     (copy-recursively "auto/bin" bin)
                     (copy-recursively "auto/include" include)
                     (copy-recursively "auto/lib" lib)))))))
    (native-inputs
     (list autoconf automake))
    (home-page "https://arxiv.org/abs/1303.4945")
    (synopsis "Spherical harmonic transforms revisited")
    (description
     "@code{libsharp} is a library for spherical harmonic transforms (SHTs),
which evolved from the libpsht library, addressing several of its shortcomings,
such as adding MPI support for distributed memory systems and SHTs of fields
with arbitrary spin, but also supporting new developments in CPU instruction
sets like the Advanced Vector Extensions (AVX) or fused
multiply-accumulate (FMA) instructions.

The library is implemented in portable C99 and provides an interface that can be
easily accessed from other programming languages such as C++, Fortran, Python
etc. Generally, libsharp's performance is at least on par with that of its
predecessor; however, significant improvements were made to the algorithms for
scalar SHTs, which are roughly twice as fast when using the same CPU
capabilities.")
    (license license:gpl2)))

;; 20230206T221536+0000
(define-public stellarium-ffab
  (package
   (inherit stellarium)
   (name "stellarium-ffab")))

;; TODO: (Sharlatan-20221102T213300+0000): Failing on configure step
;;
;; checking for sharp_execute in -lsharp... no
;; configure: error: could not find the libsharp library
;;
;; 20221101T215432+0000
(define healpix
  (package
    (name "healpix")
    (version "3.82.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://sourceforge/healpix/Healpix_3.82/healpix_cxx-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ll5p8190a436ssdnbqcxfj74v7llblkmbhhxz8mjwq0ryxhn6ww"))))
    (build-system gnu-build-system)
    (native-inputs
     (list autoconf automake libtool pkg-config))
    (inputs
     (list cfitsio libsharp zlib))
    (home-page "https://healpix.sourceforge.io/")
    (synopsis "Hierarchical Equal Area isoLatitude Pixelization of a sphere")
    (description "This package provides C++ implementation of @acronim{HEALPix, Hierarchical
Equal Area isoLatitude Pixelization}.")
    (license license:gpl2)))

;; 20230319T204258+0000
;; (define-public phd2
;; added-to-downstream-guix 55350a87aa20023720f7f6ca02a082f1b8343306
;; CommitDate: Tue Apr 11 11:59:33 2023 -0400

;; 20230408T210741+0100
;; (define-public libxisf
;; added-to-downstream-guix a4e9842a70775a54bbe1369881b739e7ea9a6432
;; CommitDate: Sun Apr 9 21:00:06 2023 +0200

(define-public unsio
  ;; There is no versioned tag, use the latest commit.
  (let ((commit "25e52468298e1194c9726ef5dba9d5fbb46870f5")
        (revision "0"))
    (package
      (name "unsio")
      (version (git-version "1.3.3" revision commit))
      (source (origin
                (method git-fetch)
                (uri (git-reference
                      (url "https://gitlab.lam.fr/infrastructure/unsio")
                      (commit commit)))
                (file-name (git-file-name name version))
                (sha256
                 (base32
                  "110i2p5608zhh5w3pf3b5r2651hykw2ayspgq6vpqsffhya1p170"))))
      (build-system cmake-build-system)
      (arguments
       (list #:tests? #f ;No tests
             #:build-type "Release"
             #:configure-flags #~(list "-DCMAKE_CXX_STANDARD=14")))
      (inputs (list gfortran hdf5 perl sqlite zlib))
      (home-page "https://projets.lam.fr/projects/unsio/wiki")
      (synopsis "Universal Nbody snapshot I/O")
      (description
       "@acronym{UNSIO, Universal Nbody Snapshot Input Output} is an API which
perform input/output operations in a generic way, and on different kind of nbody
files format (nemo, Gadget binaries 1 and 2, Gadget hdf5, Ramses).  By using this
API, a user could write only one analysis program which will work on all known
files format supported by UNSIO. It's not necessary anymore to know how is
implemented a file format, UNSIO will do transparently and automatically all the
hard work for you!  With UNSIO, you will spend less time to develop your
analysis program.  UNSIO comes with an integrated sqlite3 database which can be
used to retrieve automatically all your data among terabytes of hard disks.")
      (license license:cecill))))

;; End of astronomy.scm
