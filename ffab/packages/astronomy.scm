;;; GNU Guix --- Functional package management for GNU
;;; Copyright © 2022-2023 Sharlatan Hellseher <sharlatanus@gmail.com>
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
  #:use-module (ffab packages)
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
  #:use-module (gnu packages less)
  #:use-module (gnu packages libusb)
  #:use-module (gnu packages lua)
  #:use-module (gnu packages machine-learning)
  #:use-module (gnu packages maths)
  #:use-module (gnu packages multiprecision)
  #:use-module (gnu packages multiprecision)
  #:use-module (gnu packages ncurses)
  #:use-module (gnu packages netpbm)
  #:use-module (gnu packages ninja)
  #:use-module (gnu packages onc-rpc)
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
  #:use-module (gnu packages shells)
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
  #:use-module (gnu packages xorg)
  #:use-module (guix build utils)
  #:use-module (guix build-system cmake)
  #:use-module (guix build-system copy)
  #:use-module (guix build-system gnu)
  #:use-module (guix build-system meson)
  #:use-module (guix build-system pyproject)
  #:use-module (guix build-system python)
  #:use-module (guix build-system qt)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages)
  #:use-module (guix utils)
  #:use-module (ice-9 match)
  #:use-module (srfi srfi-1))

;; 20231004T023915+0100
;; (define-public python-aplpy
;; added-to-downstream-guix c1e3ad850d5ebac57e73d223fda7e22517b21707
;; CommitDate: Tue Oct 31 13:15:24 2023 -0400

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
;; (define-public ccfits
;; added-to-guix-downstream 6397f1326df8beb68383147cef55728ca876ee7a
;; CommitDate: Wed Jul 26 15:33:27 2023 +0200

;; 20231225T161908+0000
(define-public cspice
  (package
    (name "cspice")
    (version "N0067")
    (source
     (origin
       (method url-fetch)
       ;; The distribution of the source is split into architecture and platform parts.
       ;; It should be determined programmatically during fetch.
       (uri (string-append
             "https://naif.jpl.nasa.gov/pub/naif/misc/toolkit_"
             version "/C/PC_Linux_GCC_64bit/packages/cspice.tar.Z"))
       (sha256
        (base32 "1kh6vvzdv4j6qz67cdl2p2sjpha3xsypxms0gvz1lbs7lr8mpab0"))))
    (build-system gnu-build-system)
    (arguments
     (list
      #:tests? #f ;; no tests provided
      #:phases
      #~(modify-phases %standard-phases
          (delete 'configure) ;; no configure
          ;; Build and install phases were partly sourced from:
          ;; https://salsa.debian.org/debian-astro-team
          ;; /cspice/-/blob/debian/debian/Makefile?ref_type=heads
          ;;
          ;; XXX: Maybe include proper Makefile with all required targets and
          ;; patch adding SO builds
          ;;
          (replace 'build
            (lambda _
              (setenv "TKCOMPILER" #$(cc-for-target))
              (setenv "TKLINKOPTIONS" "-c -fPIC -DUIOLEN_int -ansi -O2 -DNON_UNIX_STDIO")
              (setenv "TKLINKOPTIONS" "-lm -Wl,-export-dynamic")
              (invoke "sh" "makeall.csh")))
          (replace 'install
            (lambda _
              (let* ((out        #$output)
                     (bindir     (string-append out "/bin"))
                     (libdir     (string-append out "/lib"))
                     (includedir (string-append out "/include")))
                (copy-recursively "exe" bindir)
                (copy-recursively "include" includedir)
                (copy-recursively "lib" libdir)))))))
    (native-inputs
     (list tcsh))
    (home-page "https://naif.jpl.nasa.gov/naif/toolkit.html")
    (synopsis "Spacecraft Planet Instrument C-matrix Events")
    (description
     "@acronym{SPICE, Spacecraft Planet Instrument C-matrix Events} is an ancillary
 information system developed by NASA for planetary science missions.  It enables
 the computation of geometric and event data required for analyzing and planning
 scientific observations obtained from spacecraft.  In addition, it plays a
 crucial role in mission planning and executing various engineering functions
 necessary for successful mission completion.")
    (properties
     '((release-monitoring-url . "https://naif.jpl.nasa.gov/naif/toolkit.html")))
    ;; There is no attached license but there is some rules of use availalbe.
    (license (license:non-copyleft
              "https://naif.jpl.nasa.gov/naif/rules.html"))))

;; 20230710T213134+0100
;; (define-public glnemo2
;; added-to-guix-downstream f22c20e7ca14f79f0be5ce228f55d934cda27e04
;; CommitDate: Wed Jul 26 15:49:49 2023 +0200


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
    (version "20231008-160001")
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
                "162zlzkhkfrqlnfwkf9ymb29hffl9inpcgnc4r821lhf9v8blgwx"))))
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

(define-public cdf
  (package
    (name "cdf")
    (version "3.9.1")
    (source
     (origin
       (method url-fetch)
       ;; The archive version is esoteric here, meanwhile it's mentioned as
       ;; normal semantic version in documentation (eg. 39_1), update the URL
       ;; URL accordingly.
       (uri (string-append
             "https://spdf.gsfc.nasa.gov/pub/software/cdf/dist/"
             "cdf39_1/linux/cdf39_1-dist-cdf.tar.gz" ))
       (sha256
        (base32 "08k6yv6gb0abhqp7dfysll5dgqc7kqbcvyiq4winnilazp6n1n01"))))
    (build-system gnu-build-system)
    (arguments
     (list
      #:test-target "test"
      #:make-flags
      #~(list "CURSES=no"
              "ENV=gnu"
              "FORTRAN=no"
              "OS=linux"
              "SHARED=yes"
              (string-append "INSTALLDIR=" #$output)
              "all")
      #:phases
      #~(modify-phases %standard-phases
          ;; no configure
          (delete 'configure))))
    (home-page "https://cdf.gsfc.nasa.gov/")
    (synopsis "NASA's Common Data Format library and tools")
    (description
     "CDF or CDF Library is a scientific data management package which allows
programmers and application developers to manage and manipulate scalar, vector,
and multi-dimensional data arrays.

The @acronym{CDF, Common Data Format} is a self-describing data abstraction for
the storage and manipulation of multidimensional data in a platform- and
discipline-independent fashion.

This package provides library and binary utilities to manipulate CDF files.")
    ;; This software may be copied or redistributed as long as it is not sold
    ;; for profit, see <https://cdf.gsfc.nasa.gov/html/cdf_copyright.html>.
    ;;
    ;; There are no license agreements or costs involved in obtaining or using
    ;; CDF, see <https://cdf.gsfc.nasa.gov/html/faq.html>.
    (license (license:non-copyleft
              "file://CDF_copyright.txt"
              "See CDF_copyright.txt in the distribution."))))

;; 20220621T222748+0100
;; (define python-casacore
;; added-to-downstream-guix bbde0b9d9fe9912fe911fa92f84b53e565021bd0
;; CommitDate: Fri Feb 28 22:44:00 2025 +0000

;; 20230827T205905+0100
;; (define-public python-casa-formats-io
;; added-to-downstream-guix 9ecc29394ee2ceb1da643dc12f2b18b9adbda706
;; CommitDate: Mon Oct 2 11:20:29 2023 -0400

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

;; 20221030T224339+0000
;; (define-public psfex
;; added-downstream-guix 147f1f2e0d3fe3b267f3e0f7c1d859bcb779c850
;; CommitDate: Tue Apr 30 21:36:14 2024 +0100

;; 20240414T222620+0100
;; (define-public scamp
;; added-downstream-guix bba6eca50967d84c8a4dbddf90c9c874ae2484aa
;; CommitDate: Tue Apr 30 21:36:14 2024 +0100

;; (define-public weightwatcher
;; added-to-downstream-guix a80d489227738dffea24713555c9d940f5ffcce0
;; CommitDate: Fri Jan 29 11:11:13 2021 +0100

;; (define-public stuff
;; added-to-downstream-guix c21ad767d4368dbd9ff37a6fd5cdea8aa37fec57
;; CommitDate: Fri Jan 29 10:54:17 2021 +0100

;; (define-public skymaker
;; added-to-downstream-guix 33648567dd229b1302d2258e76d8b30593fedce6
;; CommitDate: Thu Jan 28 13:43:49 2021 +0100

;; TODO: (Sharlatan-20231222T010212+0000): Build feileru:

;; bgraqtbitmap.pas(41,3) Fatal: Can't find unit qtobjects used by BGRAQtBitmap
;; Fatal: Compilation aborted
;; make[3]: *** [Makefile:1274: bgrabitmappack.ppu] Error 1
;; make[3]: Leaving directory '/tmp/guix-build-skychart-4.2.0-0.8fa66db.drv-0/source/skychart/component/bgrabitmap'
;; make[2]: *** [Makefile:2192: bgrabitmap_all] Error 2
;; make[2]: Leaving directory '/tmp/guix-build-skychart-4.2.0-0.8fa66db.drv-0/source/skychart/component'
;; make[1]: *** [Makefile:1735: component_all] Error 2
;; make[1]: Leaving directory '/tmp/guix-build-skychart-4.2.0-0.8fa66db.drv-0/source/skychart'
;; make: *** [Makefile:1593: skychart_all] Error 2
;;
;; 20221102T230438+0000
(define skychart
  (let ((commit "8fa66dbd420f04bd045624c8e77793b8eb43a140")
        (revision "0"))
    (package
      (name "skychart")
      (version (git-version "4.2.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/pchev/skychart")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0a04i358zax0ajn6iqbq6nikwbdmy048a9wrq0q6fams2gcf5fn2"))))
      (build-system gnu-build-system)
      (arguments
       (list
        #:configure-flags
        #~(list (string-append
                 "fpc=" #$(this-package-input "fpc") "/lib/fpc/3.2.2/units/x86_64-linux/")
                (string-append
                 "fpcbin=" #$(this-package-input "fpc") "/bin/")
                (string-append
                 "lazarus=" #$(this-package-input "lazarus") "/share/lazarus/")
                (string-append
                 "prefix=" #$output))))
      (native-inputs
       (list pkg-config autoconf automake))
      (inputs
       (list fpc lazarus libpasastro qtbase-5))
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

;; 20240709T221729+0100
;; (define-public python-echo
;; added-downstream-guix 71c5db87694812add83633f8ac9332fd9b3fe59b
;; CommitDate: Tue Jul 30 10:30:48 2024 +0100

;; 20230829T212256+0100
;; (define-public python-extinction
;; added-downstream-guix 691a732cfdc823ec6afaec500cae980e4f6b248d
;; CommitDate: Tue Feb 27 22:52:00 2024 +0000

;; (define-public python-jplephem
;; added-to-downstream-guix 35d13a9099cad3326f0961760bb4ee2ceb692fa9
;; CommitDate: Sun Feb 7 10:20:52 2021 +0100

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

;; 20240310T110353+0000
;; (define-public python-asdf-compression
;; added-downstream-guix 6933d9ef0a2d0d248c42940973417b23d8af13e3
;; CommitDate: Fri Mar 29 15:08:11 2024 +0000

;; (define python-asdf-wcs-schemas
;; added-to-downstream-guix 007495210d41bcb8dc3ddcf8e04f2d85c75ba990
;; CommitDate: Sun Jan 30 11:46:19 2022 -0300

;; (define python-asdf-coordinates-schemas
;; added-to-upastream: 527ee1bdc82d608dc41438c4f3c6e86260aecb85
;; CommitDate: Sun Jan 30 11:46:18 2022 -0300

;; (define python-asdf-transform-schemas
;; added-to-upstram: 89a5c53f382eec3dc4e2b60d819b39ada003df44
;; CommitDate: Sun Jan 30 11:46:17 2022 -0300

;; 20240310T110941+0000
(define-public python-asdf-zarr
  (package
    (name "python-asdf-zarr")
    (version "0.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "asdf_zarr" version))
       (sha256
        (base32 "0ax7c9xarh6fi2yxm1z2p90mc3d57q23a7wc8av30xg8ririrl4s"))))
    (build-system pyproject-build-system)
    (propagated-inputs
     (list python-asdf python-fsspec python-zarr))
    (native-inputs
     (list python-pytest python-semantic-version python-setuptools-scm))
    (home-page "https://github.com/asdf-format/asdf-zarr")
    (synopsis "Asdf extension to support Zarr arrays")
    (description
     "This package includes an extension for the Python library asdf to add
support for reading and writing chunked
@url{https://zarr.readthedocs.io/en/stable/,Zarr} arrays, a file storage
format for chunked, compressed, N-dimensional arrays based on an open-source
specification.")
    (license license:bsd-3)))

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

;; 20231202T232644+0000
;; (define-public python-astropy-iers-data
;; added-to-downstream-guix bf2633a065a4079a642a8e556b66e2e7816bc3b7
;; CommitDate: Tue Feb 27 22:51:56 2024 +0000

;; 20240102T003000+0000
;; (define-public python-radiospectra
;; added-to-downstream-guix adb9dc2a67f57e7c2570e5cb075316b3ce2a5d28
;; CommitDate: Tue Feb 27 22:52:00 2024 +0000

;; 20221123T230513+0000
;; (define-public python-reproject
;; added-to-downstream-guix a3d85918f90e31118bc9b7e483520d0ae6192e3d
;; CommitDate: Fri Nov 25 10:51:52 2022 +0000

;; 20221107T133138+0000
;; (define-public python-astroplan
;; added-to-downstream-guix 632cb6aa551c74ce7d936af77f891c9fef59525e
;; CommitDate: Fri Mar 29 15:08:11 2024 +0000

;; 20221107T134441+0000
;; (define-public python-specutils
;; added-to-downstream-guix fb4293c4ecfd8af2e8500f1054a3a2f5cc1d35a2
;; CommitDate: Wed Jan 24 22:24:38 2024 +0000

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

;; 20221114T003849+0000
;; (define-public python-ginga
;; added-to-downstream-guix 489bdbb87e202681757ca255c5c24859d4a0c43c
;; CommitDate: Tue Feb 27 22:52:00 2024 +0000

;; (define-public ginga-qt5
;; added-to-downstream-guix 489bdbb87e202681757ca255c5c24859d4a0c43c
;; CommitDate: Tue Feb 27 22:52:00 2024 +0000


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

;; 20231005T025906+0100
;; (define-public python-pyregion
;; added-to-downstream-guix 4b1dce71855c8338e8045d31277db2a55cf3bddd
;; CommitDate: Tue Oct 31 13:15:24 2023 -0400

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

;; 20231004T014955+0100
;; (define-public python-radio-beam
;; added-to-downstream-guix c82c6807e87736f839faebc51604f8abd7268228
;; CommitDate: Tue Oct 31 13:15:24 2023 -0400

;; 20220523T215048+0100
;; (define-public python-tweakwcs
;; added-to-downstream-guix 308bee5f000703f063f5fbccd1c439e8c905a09c
;; CommitDate: Wed Jun 14 14:52:22 2023 +0300

;;20220523T215603+0100
;; (define-public python-spherical-geometry
;; added-to-downstream-guix b12ee1ee5b8b53bf27b79ce81b1b2158cc7de484
;; CommitDate: Sat Feb 25 00:00:34 2023 +0100

;; 20231004T020337+0100
;; (define-public python-spectral-cube
;; added-to-downstream-guix 5e5547d1b39668ea4b0fa050db4eede038c4a699
;; CommitDate: Tue Oct 31 13:15:25 2023 -0400

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
(define-public python-stpipe-ffab
  (let ((commit "37f5c3b823e34cf93fe61a2f36bb62ece075302a")
        (revision "0"))
    (package
      (inherit python-stpipe)
      (name "python-stpipe")
      (version (git-version "0.5.1" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/zacharyburnett/stpipe")
               (commit commit)))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0v8nahwqdp43zjjkfp7wixkmmrdgdjzhzsxr0bw641xrf9wb3kap"))))
      (arguments
       (list
        #:phases
        #~(modify-phases %standard-phases
            (add-before 'build 'set-version
              (lambda _
                (setenv "SETUPTOOLS_SCM_PRETEND_VERSION" "0.5.1")))))))))
;; - https://github.com/spacetelescope/stpipe/issues/114

;; 20220711T123349+0100
;; (define-public python-stsci-image
;; added-to-downstream-guix 04cf30e15323fa56c1f0ce7e4e8f3981dab9f99a
;; CommitDate: Wed Jun 14 14:52:22 2023 +0300

;; 20231127T013936+0000
;; (define-public python-viresclient
;; added-to-downstream-guix fc08d71486cb7fe3aa409984377cd510515383a8
;; CommitDate: Thu May 30 18:23:47 2024 +0400

;; 20221106T092616+0000
;; (define-public python-wiimatch
;; added-to-downstream-guix 2b085c4b41cd0aa888d9f4c027a23c483a7c73e5
;; CommitDate: Wed Jun 14 14:52:23 2023 +0300

;; 20221106T220436+0000
;; (define-public python-ci-watson
;; added-to-downstream-guix 49a013a0ede0d8a25bf66d452fd9b5df5409e688
;; CommitDate: Mon Sep 30 22:06:32 2024 +0100

;; 20220513T172614+0100
;; (define-public python-crds
;; added-to-downstream-guix 23bc5e12d44122991062ad68a489ab10949142aa
;; CommitDate: Wed Jun 14 14:52:22 2023 +0300

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

;; 20231005T011146+0100
;; (define-public python-pyavm
;; added-to-downstream-guix ea2e0eb36bf63da2628e6ed0d1f30dc5e789b969
;; CommitDate: Tue Oct 31 13:15:24 2023 -0400

;; 20220627T202513+0100
;; (define-public python-sunpy
;; added-to-downstream-guix 78ee6dcfe13c1561ff1d5cdfc2c2d4fa8afe0883
;; CommitDate: Fri Nov 25 10:51:52 2022 +0000

;; 20240102T001734+0000
;; (define-public python-sunpy-soar
;; added-downstream-guix a5cf84ded9452c7704290741c18b4c9181ed0ae2
;; CommitDate: Tue Feb 27 22:52:00 2024 +0000

;;20220627T213949+0100
;; (define-public python-drms
;; added-to-downstream-guix 3271fa1f402e497ff1de9cc2dbc2b09e1a32078f
;; CommitDate: Fri Nov 25 10:51:52 2022 +0000

;; 20220818T223250+0100
(define-public python-dust-attenuation
  ;; No release avaiallbe in PyPI
  (let ((commit "da48969d6636a37a7520d6390baba56fa93c4dfa")
        (revision "0"))
    (package
      (name "python-dust-attenuation")
      (version (git-version "0.5.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/karllark/dust_attenuation")
               (commit commit)))
         (sha256
          (base32 "1d79d3w1mg4phzmr9qb65hdhirb45pghq4k20x88av7sfa1ya5hg"))
         (file-name (git-file-name name version))))
      (build-system pyproject-build-system)
      (propagated-inputs
       (list python-astropy python-scipy python-matplotlib))
      (native-inputs
       (list python-pytest-astropy))
      (home-page "http://dust-attenuation.readthedocs.io/")
      (synopsis "Astronomical Dust Attenuation")
      (description
       "This package provides astronomical interstellar dust attenuation curves
implemented using the astropy.modeling framework.")
      ;; XXX: License check see
      ;; <https://github.com/karllark/dust_attenuation/issues/56>.
    (license license:bsd-3))))

;; 20231224T223056+0000
;; (define-public python-dust-extinction
;; added-to-downstream-guix 4d00cf5d7843fa112c0fd9cf309c07d93e4427e1
;; CommitDate: Wed Jan 24 22:24:38 2024 +0000

;; 20220702T165531+0100
;; (define-public python-mpl-animators
;; added-to-downstream-guix 0458cbd84c03068241dfaf293b0594ec07dc2019
;; CommitDate: Fri Nov 25 10:51:52 2022 +0000

;; 20221108T115048+0000
;; (define-public python-ndcube
;; added-to-downstream-guix a75c4114f8b01bfe79c85df86b8a0bcbfe6a9677
;; CommitDate: Wed Jan 24 22:24:37 2024 +0000

;;20231127T020129+0000
(define-public python-hapiclient
  (package
    (name "python-hapiclient")
    (version "0.2.5")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "hapiclient" version))
       (sha256
        (base32 "0lak8x5cwrc0wdkbiyvqkwwi0n5qz77pq4vxc2vailbfg30lgp7w"))))
    (build-system pyproject-build-system)
    (arguments
     (list
      ;; Tests require access to:
      ;; http://hapi-server.org/servers/TestData/xhapi
      ;; http://hapi-server.org/servers/TestData2.0/hapi
      #:tests? #f))
    (propagated-inputs
     (list python-isodate
           python-joblib
           python-numpy
           python-pandas
           python-urllib3))
    (home-page "https://github.com/hapi-server/client-python")
    (synopsis "Interface to Heliophysics data server API")
    (description
     "This package provides an interface to @acronym{Heliophysics Application
Programmer’s Interface, HAPI} data server API.")
    (license license:bsd-3)))

;; 20240419T211850+0100
(define python-hapsira
  (package
    (name "python-hapsira")
    (version "0.18.0")
    (source
     (origin
       ;; PyPi tarball lacks tests.
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/pleiszenburg/hapsira")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "09rimpsw98j2zk8bd3rlxh5x0zv5xxdvd0kq5d2qi30nixxbg27p"))))
    (build-system pyproject-build-system)
    (arguments
     (list
      #:test-flags
      #~(list "-m" "not remote_data"
              "--mpl"
              "--mypy"
              "--numprocesses" "auto")
      #:phases
      #~(modify-phases %standard-phases
          (add-before 'check 'prepare-test-environment
            (lambda _
              (setenv "HOME" "/tmp"))))))
    (native-inputs
     (list python-mypy
           python-flit-core
           python-pytest
           python-pytest-cov
           python-pytest-doctestplus
           python-pytest-mpl
           python-pytest-mypy
           python-pytest-xdist))
    (propagated-inputs
     (list python-astropy
           python-astroquery
           python-czml3
           python-jplephem
           python-matplotlib
           python-numba
           python-numpy
           python-pandas
           python-plotly
           python-pyerfa
           python-scipy))
    (home-page "https://hapsira.readthedocs.io/")
    (synopsis "Astrodynamics in Python")
    (description
     "@code{hapsira} is successive fork of @code{poliastro} with plotter framework saw
a redesign and is backwards incompatible.")
  (license license:expat)))

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

;; 20240415T214305+0100
(define theli
  (package
    (name "theli")
    (version "3.1.4")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/schirmermischa/THELI")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0yzq2vmq0kwgsxils4nsky35qh2rdrkxpjf72rb8gzd3njzfznfm"))))
    (build-system qt-build-system)
    (arguments
     (list
      #:phases
      #~(modify-phases %standard-phases
          (add-after 'unpack 'change-dirrectory
            (lambda _
              (chdir "src"))))))
    (inputs
     (list cfitsio
           curl
           fftw
           gsl
           lapack
           libraw
           libtiff
           openblas
           plplot
           qtbase-5
           qttools-5
           scamp
           wcslib))
    (home-page "https://github.com/schirmermischa/THELI")
    (synopsis "Data processing pipeline for astronomical images")
    (description
     "THELI is a data processing pipeline for optical, near-infrared and
mid-infrared astronomical images. Using a hybrid memory/drive data model and
full parallelization, it offers a vast gain in processing speed. Depending on
the hardware and data set, processing speed may increase by factors 2 to 20.
THELI also fully scales with the amount of available RAM and CPUs on your
machine.")
    (license license:gpl3+)))

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
;; (define-public libsharp
;; added-to-downstream-guix f547dd668f7c23ac72ee6c084dfe405536af1d67
;; CommitDate: Mon Sep 30 22:06:32 2024 +0100

;; 20230206T221536+0000
(define-public stellarium-ffab
  (package
   (inherit stellarium)
   (name "stellarium-ffab")))

;; 20221101T215432+0000
;; (define-public healpix-cxx
;; added-downstream-guix 213eae66c7a288ca8293065a95297c2df885454d
;; CommitDate: Mon Sep 30 22:06:32 2024 +0100

;; 20230319T204258+0000
;; (define-public phd2
;; added-to-downstream-guix 55350a87aa20023720f7f6ca02a082f1b8343306
;; CommitDate: Tue Apr 11 11:59:33 2023 -0400

;; 20230408T210741+0100
;; (define-public libxisf
;; added-to-downstream-guix a4e9842a70775a54bbe1369881b739e7ea9a6432
;; CommitDate: Sun Apr 9 21:00:06 2023 +0200

;; 20231002T014536+0100
;; (define-public unsio
;; added-to-downstream-guix 89b575a791a46c379c687168ae56399ac0ee4849
;; CommitDate: Thu Aug 17 20:06:41 2023 +0200

;; 20230909T223933+0100
;; (define-public wcstools
;; added-to-downstream-guix 9917079bd708deed1e797a60eb549b1586d60962
;; CommitDate: Thu Oct 5 17:07:16 2023 +0200

;; 20240804T231309+0100
;; (define-public python-pvextractor
;; added-to-downstream-guix 80ac82d6abf6f1f73d3675c66d96185c2f02f55b
;; CommitDate: Tue Aug 27 17:03:09 2024 +0100

;; 20240804T231529+0100
;; (define-public python-glue-qt
;; added-to-downstream-guix fcfe95b0770cb4daeebe1730511a1d665a808c89
;; CommitDate: Tue Aug 27 17:03:09 2024 +0100

;; End of astronomy.scm
