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
  #:use-module (ffab packages python-xyz)
  #:use-module (ffab packages python-web)
  #:use-module (ffab packages python-check)
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
  #:use-module (gnu packages flex)
  #:use-module (gnu packages gawk)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages gl)
  #:use-module (gnu packages glib)
  #:use-module (gnu packages gnome)
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
  #:use-module (gnu packages readline)
  #:use-module (gnu packages sphinx)
  #:use-module (gnu packages swig)
  #:use-module (gnu packages tcl)
  #:use-module (gnu packages textutils)
  #:use-module (gnu packages time)
  #:use-module (gnu packages version-control)
  #:use-module (gnu packages wxwidgets)
  #:use-module (gnu packages xml)
  #:use-module (gnu packages)
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
  #:use-module (ice-9 match))

;; 20220626T221017+0100
;; (define-public splash
;; added-to-upstream 43b8df4bece2a207018dc0fedc44d3d188d2d0f0
;; CommitDate: Thu Oct 6 00:11:18 2022 +0200

;; 20221115T204848+0000
;; (define-public alfa
;; added-to-upstream 594f5ef35107d5641c44dac5cd7e9fb3737b674b
;; CommitDate: Fri Dec 2 00:02:12 2022 +0100

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
;; added-to-upstream cdff1423c0d03e7d3e8445cf14f1123f694468c8
;; CommitDate: Thu Aug 4 12:05:47 2022 +0200

;; 20220614T105114+0100
;; (define-public aocommon
;; added-to-upstream 4ccd4176a2f63004fe10c9e8c9ccc8ba46b9d408
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
;; added-to-upstream: bf9a1dfd591d5e166581919ac92e67f47219f0eb
;; CommitDate: Sun Dec 5 12:35:55 2021 +0100

;; (define-public eye
;; added-to-upstream: 51418c32d95d8188d8877616829f26479f1135c6

;; (define-public indi
;; added-to-upstream: ae416e852ad6b305ffaf67343d7192bd7c4c89aa

;; (define-public libpasastro
;; added-to-upstream: 906155e437c9513462f19baac6e88b976f42b358

;; 20220724T204740+0100
;; (define-public libsep
;; added-to-upstream 6ad9a094c1a25a4aa1df559943f9bc6ca8870752
;; CommitDate: Mon Aug 1 14:08:07 2022 +0200

;; 20210127T001151+0000
;; (define-public missfits
;; added-to-upstream: 1aee32a26e1a96dd457fcf62f97f514c7a562475
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
;; added-to-upstream: a80d489227738dffea24713555c9d940f5ffcce0
;; CommitDate: Fri Jan 29 11:11:13 2021 +0100

;; (define-public stuff
;; added-to-upstream: c21ad767d4368dbd9ff37a6fd5cdea8aa37fec57
;; CommitDate: Fri Jan 29 10:54:17 2021 +0100

;; (define-public skymaker
;; added-to-upstream: 33648567dd229b1302d2258e76d8b30593fedce6
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
;; added-to-upstream: b2d6f127c24787df00bffd918fa879842f933817
;; CommitDate: Mon Jan 25 17:59:02 2021 +0100

;; (define-public python-sep
;; added-to-upstream: d1bd22b9fb17e94931b7ebe23c6d9735b195442a
;; CommitDate: Fri Feb 19 11:05:33 2021 +0100

;; (define-public python-jplephem
;; added-to-upstream: 35d13a9099cad3326f0961760bb4ee2ceb692fa9
;; CommitDate: Sun Feb 7 10:20:52 2021 +0100

;; https://github.com/asdf-format
;;+begin-asdf-format

;; 20221019T231950+0100
;; (define-public python-asdf-standard
;; added-to-upstream 1b03c64a05a319631a82cd15b9dda914e94c5142
;; CommitDate: Mon Nov 21 14:25:12 2022 +0000

;; 20221023T225444+0100
;; (define python-asdf-unit-schemas
;; added-to-upstream f99a1e257d7ba5995afcf05f429d79d6f097a517
;; CommitDate: Mon Nov 21 14:25:12 2022 +0000

;; 20221023T225455+0100
;; (define python-asdf-fits-schemas
;; added-to-upstream 6924f4a866dbda02b15b075f7718d4aa794090f3
;; CommitDate: Mon Nov 21 14:25:12 2022 +0000

;; 20221023T225504+0100
;; (define python-asdf-time-schemas
;; added-to-upstream 2959b98a720fb60e54d09128aa08d109f6601f02
;; CommitDate: Mon Nov 21 14:25:12 2022 +0000

;; 20211111234021+0000
;; (define python-asdf-transform-schemas
;; added-to-upstream 89a5c53f382eec3dc4e2b60d819b39ada003df44
;; CommitDate: Sun Jan 30 11:46:17 2022 -0300

;; 20211111235021+0000
;; (define-public python-asdf
;; added-to-upstream: f498823e7843379499d35ae397c38dc879fb9844
;; CommitDate: Sun Feb 21 01:07:41 2021 +0100

;; (define python-asdf-wcs-schemas
;; added-to-upstream: 007495210d41bcb8dc3ddcf8e04f2d85c75ba990
;; CommitDate: Sun Jan 30 11:46:19 2022 -0300

;; (define python-asdf-coordinates-schemas
;; added-to-upastream: 527ee1bdc82d608dc41438c4f3c6e86260aecb85
;; CommitDate: Sun Jan 30 11:46:18 2022 -0300

;; (define python-asdf-transform-schemas
;; added-to-upstram: 89a5c53f382eec3dc4e2b60d819b39ada003df44
;; CommitDate: Sun Jan 30 11:46:17 2022 -0300

;;+end-asdf-format

;; (define-public python-astroalign
;; added-to-upstream: d6996fa05277f240b70b18c227419c371cfc737f
;; CommitDate: Fri Feb 19 11:05:34 2021 +0100

;;  http://www.astropy.org https://github.com/astropy
;;+begin-astropy

;; (define-public python-astropy
;; added-to-upstream 9371cf2138711ea7305951d82c5cf0b36ac4d6f1

;; 20211111235021+0000
;; (define-public python-asdf-astropy
;; added-to-upstream: 7b2747c81d52dd4727cc642df2ebbce485c7e204
;; CommitDate: Sun Jan 30 11:46:18 2022 -0300

;; 20221123T230513+0000
;; (define-public python-reproject
;; added-to-upstream a3d85918f90e31118bc9b7e483520d0ae6192e3d
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
;; added-to-upstream: 3e497b3a4c8146b4e67807f64bea3d986df9894a
;; CommitDate: Sun Jan 30 11:46:19 2022 -0300

;; 20220131T235042+0000
(define-public python-jwst
  (package
    (name "python-jwst")
    (version "1.8.2")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "jwst" version))
              (sha256
               (base32
                "049ii2zjckls80qrqaplpjh33vvi43458z52fhnyx8rqq5cnc14h"))))
    (build-system pyproject-build-system)
    (arguments
     (list
      ;; NOTE: (Sharlatan-20221106T091916+0000): Failing tests
      ;;
      ;; FileNotFoundError: [Errno 2] No such file or directory: '/grp/crds/cache/config/jwst/server_config'
      ;; CRDS - ERROR -  (FATAL) CRDS server connection and cache load FAILED.  Cannot continue.
      ;;  See https://hst-crds.stsci.edu/docs/cmdline_bestrefs/ or https://jwst-crds.stsci.edu/docs/cmdline_bestrefs/
      ;; for more information on configuring CRDS,  particularly CRDS_PATH and CRDS_SERVER_URL. : [Errno 2] No such file or directory: '/grp/crds/cache/config/jwst/server_config'
      ;;
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          ;; FIXME: (Sharlatan-20221106T095131+0000): Blocked by OpenCV Python dependencie
          ;;
          ;; Requirement.parse('stcal<1.3,>=1.2.1'), {'jwst'})
          ;;
          (delete 'sanity-check))))
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
                             python-stsci-image
                             python-stsci-imagestats
                             python-tweakwcs
                             python-wiimatch))
    (native-inputs (list python-codecov
                         python-colorama
                         python-flake8
                         python-pytest
                         python-pytest-cov
                         python-pytest-doctestplus
                         python-pytest-openfiles
                         python-requests-mock
                         python-setuptools-scm))
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
    (build-system pyproject-build-system)
    (arguments
     (list
      ;; FIXME: (Sharlatan-20221105T071954+0000): Deprecation warnings in tests.
      ;;
      ;; 15 xfailed, 388 errors in 3.25s
      ;;
      #:tests? #f
      #:phases #~(modify-phases %standard-phases
                        (add-before 'check 'set-env-data-path
                          (lambda _
                            (setenv "PYSYN_CDBS"
                                    (string-append #$output "/crds")))))))
    (propagated-inputs (list python-astropy
                             python-beautifulsoup4
                             python-numpy
                             python-pytest-astropy-header
                             python-six))
    (native-inputs (list python-pytest
                         python-pytest-remotedata
                         python-setuptools-scm))
    (home-page "https://github.com/spacetelescope/pysynphot")
    (synopsis "Python Synthetic Photometry Utilities")
    (description
"Astrolib PySynphot (hereafter referred to only as pysynphot) is an
object-oriented replacement for STSDAS SYNPHOT synthetic photometry package in
IRAF.  @code{pysynphot} simulates photometric data and spectra as they are observed
with the Hubble Space Telescope (HST). Passbands for standard photometric
systems are available, and users can incorporate their own filters, spectra, and
data.")
    (license license:bsd-3)))

;; 20220513T215637+0100
(define-public python-roman-datamodels
  (package
    (name "python-roman-datamodels")
    (version "0.13.0")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "roman_datamodels" version))
              (sha256
               (base32
                "1ywispjkhp0hdlagjzrqfs11gn1fklc8ky6hfhfz5nl2g3hpwmax"))))
    (build-system pyproject-build-system)
    (arguments
     (list
      #:phases #~(modify-phases %standard-phases
                        ;; FIXME: (Sharlatan-20221105T220907+0000): Failing tests
                        (add-before 'check 'disable-failing-tests
                          (lambda _
                            (substitute* "tests/test_factories.py"
                              (("def test_factory_method_implemented")
                               "def __off_test_factory_method_implemented")
                              (("def test_instance_valid")
                               "def __off_test_instance_valid"))
                            (substitute* "tests/test_stnode.py"
                              (("def test_serialization")
                               "def __off_test_serialization")))))))
    (propagated-inputs (list python-asdf
                             python-asdf-astropy
                             python-astropy
                             python-jsonschema-next
                             python-numpy
                             python-psutil
                             python-rad))
    (native-inputs (list python-pytest
                         python-pytest-doctestplus
                         python-pytest-openfiles
                         python-semantic-version
                         python-setuptools-scm))
    (home-page "https://github.com/spacetelescope/roman_datamodels")
    (synopsis "Roman Datamodels")
    (description
     "This package provides Python Roman Datamodels for the calibration pipelines
started with the JWST calibration pipelines.  The goal for the JWST pipelines was
motivated primarily by the need to support FITS data files, specifically with
isolating the details of where metadata and data were located in the FITS file
from the representation of the same items within the Python code.  That is not a
concern for Roman since FITS format data files will not be used by the Roman
calibration pipelines.")
    (license license:bsd-3)))

;; 20220513T220144+0100
(define-public python-rad
  (package
    (name "python-rad")
    (version "0.14.0")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "rad" version))
              (sha256
               (base32
                "1n0y8mk32dh5kaic634ps4rc6ijaniag2zm91isi0vs8g19pv1hx"))))
    (build-system pyproject-build-system)
    (propagated-inputs (list python-asdf))
    (native-inputs (list python-pytest
                         python-pytest-doctestplus
                         python-pytest-openfiles
                         python-semantic-version
                         python-setuptools-scm))
    (home-page "https://github.com/spacetelescope/rad")
    (synopsis "Roman Attribute Dictionary")
    (description "Roman Attribute Dictionary")
    (license #f)))

;; 20220523T215048+0100
(define-public python-tweakwcs
  (package
    (name "python-tweakwcs")
    (version "0.8.0")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "tweakwcs" version))
              (sha256
               (base32
                "08b2qgk81vximjjn88db7xc0lwg394rpbivk0jwd63sr3gsbsllb"))))
    (build-system pyproject-build-system)
    (propagated-inputs (list python-astropy
                             python-gwcs
                             python-numpy
                             python-packaging
                             python-spherical-geometry
                             python-stsci-imagestats
                             python-stsci-stimage))
    (native-inputs (list python-codecov
                         python-pytest
                         python-pytest-cov
                         python-semantic-version
                         python-setuptools-scm
                         python-scipy))
    (home-page "https://tweakwcs.readthedocs.io/en/latest/")
    (synopsis
     "Algorithms for matching and aligning catalogs and for tweaking the WCS")
    (description
     "@code{tweakwcs} is a package that provides core algorithms for computing and
applying corrections to @code{WCS} objects such as to minimize mismatch between
image and reference catalogs. Currently only aligning images with @code{FITS
WCS} and @code{JWST gWCS} are supported.")
    (license license:bsd-3)))

;; NOTE: (Sharlatan-20221105T230143+0000): 1.2.23 fails to build
;;
;; https://github.com/spacetelescope/spherical_geometry/issues/227
;;
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
    (home-page "https://github.com/spacetelescope/spherical_geometry")
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
    (version "1.13.6")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "drizzle" version))
              (sha256
               (base32
                "1bmm52na3p9fyh8im9bn6ylfwzr1mbvhn1v71zssb814hwwgzxlw"))))
    (build-system pyproject-build-system)
    (arguments
     (list
      ;; FIXME: (Sharlatan-20220705T212541+0100): Failing for now
      ;;
      ;; ImportError: cannot import name 'cdrizzle' from 'drizzle'
      ;;
      #:tests? #f))
    (propagated-inputs (list python-astropy python-numpy))
    (native-inputs (list python-coverage
                         python-flake8
                         python-pytest
                         python-pytest-cov
                         python-setuptools-scm))
    (home-page "https://github.com/spacetelescope/drizzle")
    (synopsis "Astronomical tool for combining dithered images into a single image")
    (description
     "The drizzle library is a Python package for combining dithered images into
a single image.  This library is derived from code used in DrizzlePac.  Like
DrizzlePac, most of the code is implemented in the C language.  The biggest
change from DrizzlePac is that this code passes an array that maps the input to
output image into the C code, while the DrizzlePac code computes the mapping by
using a Python callback.  Switching to using an array allowed the code to be
greatly simplified.")
    (license license:bsd-3)))

;; 20220706T114426+0100
;; (define-public python-poppy
;; added-to-upstream 8514a7532591b97c2adbe8a20cb4e630ff6b8654
;; CommitDate: Mon Jan 16 12:13:07 2023 -0500

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
    (build-system pyproject-build-system)
    (arguments
     (list
      ;; FIXME: (Sharlatan-20221105T232147+0000): Tests fail with deprecation warning
      ;;
      ;; astropy.utils.exceptions.AstropyDeprecationWarning: The
      ;; enable_deprecations_as_exceptions function is deprecated and may be
      ;; removed in a future version.
      ;;
      #:tests? #f))
    (propagated-inputs (list python-astropy python-numpy python-scipy))
    (native-inputs (list python-pytest python-pytest-astropy
                         python-setuptools-scm))
    (home-page "https://github.com/spacetelescope/synphot_refactor")
    (synopsis "Synthetic photometry using Astropy")
    (description "This package provides a replacement for IRAF STSDAS SYNPHOT and ASTROLIB
PYSYNPHOT, utilizing Astropy and covering the non-instrument specific portions
of the old packages.")
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

;; NOTE: (Sharlatan-20221105T234031+0000): Starting from v1.2.0 project requires
;; OpenCV Python module which is not packed yet.
;;
;; 20220710T122747+0100
(define-public python-stcal
  (package
    (name "python-stcal")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "stcal" version))
              (sha256
               (base32
                "1zh70xpzv0da2j94z77cncjfs54nqy8hprngirv7hh48vjchj205"))))
    (build-system pyproject-build-system)
    (propagated-inputs (list python-astropy
                             python-numpy
                             python-scipy))
    (native-inputs (list python-psutil
                         python-pytest
                         ;; python-opencv-python ;; Not availalbe
                         python-pytest-cov
                         python-pytest-doctestplus
                         python-setuptools-scm
                         python-pytest-openfiles))
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
    (build-system pyproject-build-system)
    (arguments
     (list
      ;; FIXME: (Sharlatan-20221105T235457+0000): Failing test with test collection error
      ;;
      ;; ERROR collecting...
      ;;
      #:tests? #f))
    (propagated-inputs (list python-asdf
                             python-astropy
                             python-jsonschema-next
                             python-numpy
                             python-psutil))
    (native-inputs (list python-pytest
                         python-pytest-doctestplus
                         python-pytest-openfiles
                         python-semantic-version
                         python-setuptools-scm))
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
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "stpipe" version))
              (sha256
               (base32
                "0zfa81hhn1gq7b7bzmkd52kimdms51mdwygjx2v5r1q59wkjbpdg"))))
    (build-system pyproject-build-system)
    (arguments
     (list
      ;; FIXME: (Sharlatan-20221105T235457+0000): Failing test with test collection error
      ;;
      ;; ERROR collecting...
      ;;
      #:tests? #f))
    (propagated-inputs (list python-asdf
                             python-astropy
                             python-crds
                             python-semantic-version
                             python-stdatamodels))
    (native-inputs (list python-pytest
                         python-pytest-doctestplus
                         python-pytest-openfiles
                         python-setuptools-scm))
    (home-page "https://github.com/spacetelescope/stpipe")
    (synopsis "Framework for calibration pipeline software")
    (description "Framework for calibration pipeline software")
    (license #f)))

;; 20220711T123349+0100
(define-public python-stsci-image
  (package
    (name "python-stsci-image")
    (version "2.3.5")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "stsci.image" version))
              (sha256
               (base32
                "1vnp4256nbdvapa69cmm80sjz11ygxa49abr9nbvssj6nyyp5icb"))))
    (build-system pyproject-build-system)
    (arguments
     (list
      ;; FIXME: (Sharlatan-20221106T001846+0000): Failing tests
      ;;
      ;;  ModuleNotFoundError: No module named 'stsci.image._combine'
      ;;
      #:tests? #f))
    (propagated-inputs (list python-numpy python-scipy))
    (native-inputs (list python-pytest python-setuptools-scm))
    (home-page "https://github.com/spacetelescope/stsci.image")
    (synopsis "Image array manipulation functions")
    (description "Image array manipulation functions")
    (license license:bsd-3)))

;; 20221106T092616+0000
(define-public python-wiimatch
  (package
    (name "python-wiimatch")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "wiimatch" version))
              (sha256
               (base32
                "0x6p5z6a2cqinckwlpinjxagvmswl149s1jn6ihmdxk4k0h8rrz0"))))
    (build-system pyproject-build-system)
    (propagated-inputs (list python-numpy python-scipy))
    (native-inputs (list python-codecov
                         python-pytest
                         python-pytest-cov
                         python-pytest-doctestplus
                         python-setuptools-scm))
    (home-page "https://github.com/spacetelescope/wiimatch")
    (synopsis "Optimal \"matching\" of weighted N-dimensional image intensity data")
    (description
     "@code{wiimatch} is a package that provides core computational algorithms for
optimal \"matching\" of weighted N-dimensional image intensity data
using (multivariate) polynomials.")
    (license license:bsd-3)))

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
(define-public python-crds
  (package
    (name "python-crds")
    (version "11.16.16")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "crds" version))
              (sha256
               (base32
                "08xfxjlk7wgzdkbr4w07rpcdrkqahcib0xfg6agy7svir9mwypbp"))))
    (build-system pyproject-build-system)
    (arguments
     (list
      ;; FIXME: (Sharlatan-20221106T001035+0000): Failing tests, missing config
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
            ;; FIXME: (Sharlatan-20221106T001001+0000): Requirement.parse('jsonschema<4.10.0,>=4.0.1'), {'asdf'})
            (delete 'sanity-check))))
    (propagated-inputs (list ;awscli
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
                         python-semantic-version
                         python-setuptools-scm))
    (home-page "https://hst-crds.stsci.edu")
    (synopsis "Calibration Reference Data System for HST and JWST")
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
;; added-to-upstream 78ee6dcfe13c1561ff1d5cdfc2c2d4fa8afe0883
;; CommitDate: Fri Nov 25 10:51:52 2022 +0000

;;20220627T213949+0100
;; (define-public python-drms
;; added-to-upstream 3271fa1f402e497ff1de9cc2dbc2b09e1a32078f
;; CommitDate: Fri Nov 25 10:51:52 2022 +0000

;; 20220702T165531+0100
;; (define-public python-mpl-animators
;; added-to-upstream 0458cbd84c03068241dfaf293b0594ec07dc2019
;; CommitDate: Fri Nov 25 10:51:52 2022 +0000

;; 20221123T225008+0000
;; (define-public python-hvpy
;; added-to-upstream 0575012803683ebacd43029530683af7bdf791f9
;; CommitDate: Fri Nov 25 10:51:52 2022 +0000

;;+end-sunpy

;; 20220627T211818+0100
;; (define-public python-cdflib
;; added-to-upstream e72c1f148a473d67fa525e49caf18cf138d02e10
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
;; added-to-upstream 8d7c96284a2e32553f86df0faf378f185913cce7
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
