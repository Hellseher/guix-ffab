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
  #:use-module (ffab packages maths)
  #:use-module (ffab packages python-xyz)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages algebra)
  #:use-module (gnu packages astronomy)
  #:use-module (gnu packages autotools)
  #:use-module (gnu packages bison)
  #:use-module (gnu packages boost)
  #:use-module (gnu packages check)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages curl)
  #:use-module (gnu packages flex)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages gl)
  #:use-module (gnu packages graphviz)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages image)
  #:use-module (gnu packages libusb)
  #:use-module (gnu packages machine-learning)
  #:use-module (gnu packages maths)
  #:use-module (gnu packages multiprecision)
  #:use-module (gnu packages ncurses)
  #:use-module (gnu packages netpbm)
  #:use-module (gnu packages openstack)
  #:use-module (gnu packages pascal)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages python)
  #:use-module (gnu packages python-check)
  #:use-module (gnu packages python-crypto)
  #:use-module (gnu packages python-science)
  #:use-module (gnu packages python-web)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages readline)
  #:use-module (gnu packages swig)
  #:use-module (gnu packages time)
  #:use-module (gnu packages version-control)
  #:use-module (gnu packages wxwidgets)
  #:use-module (gnu packages xml)
  #:use-module (guix build-system cmake)
  #:use-module (guix build-system gnu)
  #:use-module (guix build-system python)
  #:use-module (guix build-system copy)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages)
  #:use-module (ice-9 match))

;; 20220613T235347+0100
(define-public casacore-data
  (package
    (name "casacore-data")
    (version "20220613-160001")
    (source
     (origin
       (method url-fetch)
       ;; NOTE: (Sharlatan-20220614T002807+0100): Meeasures data is updated
       ;; daily and distributed via Westerbork Synthesis Radio Telescope (WSRT)
       ;; FTP server.
       (uri (string-append "ftp://ftp.astron.nl/outgoing/Measures/WSRT_Measures_"
                           version ".ztar"))
       (sha256
        (base32 "0smz9kfzx3j36g22ccvv0s8y9pss7bgsj65byqyg254xyj599g9l"))))
    (build-system copy-build-system)
    (arguments
     (list
      #:patch-shebangs? #f
      #:strip-binaries? #f
      #:validate-runpath? #f
      #:phases
      #~(modify-phases %standard-phases
          (add-before 'install 'unpack-measures
            (lambda _
              (invoke "tar" "xvzf" (string-append "WSRT_Measures_" #$version ".ztar")))))))
    (home-page "")
    (synopsis "Measures data for Casacore")
    (description "Westerbork Synthesis Radio Telescope (WSRT) measures data.")
    (license license:public-domain)))

;; 20220608T193453+0100
;; The following tests FAILED:
        ;;  59 - tFile (Failed)
        ;;  66 - tPath (Failed)
        ;; 189 - tExprNode (Failed)
(define-public casacore
  (package
    (name "casacore")
    (version "3.4.0")
    (source
     (origin
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
      #:tests? #t
      #:parallel-build? #t
      #:configure-flags
      #~(list "-DBUILD_PYTHON3=ON"
              "-DBUILD_PYTHON=OFF"
              "-DBUILD_TESTING=TRUE"
              "-DUSE_HDF5=ON"
              "-DUSE_OPENMP=OFF"
              "-DUSE_THREADS=ON"
              (string-append "-DDATA_DIR=" #$casacore-data)
              (string-append "-DPYTHON3_EXECUTABLE=" #$python "/bin")
              (string-append "-DPYTHON3_INCLUDE_DIR=" #$python "/include")
              (string-append "-DPYTHON3_LIBRARY=" #$python "/lib"))
      #:phases
      #~(modify-phases %standard-phases
          (add-after 'unpack 'set-env
            (lambda _
              (setenv "HOME" "/tmp")))
          (add-after 'unpack 'use-absolute-rm
            (lambda _
              (substitute* "casa/OS/test/tFile.run"
                (("/bin/rm") (which "rm")))
              #t))
          (add-after 'unpack 'use-absolute-python3
            (lambda _
              (substitute* "build-tools/casacore_floatcheck"
                (("#!/usr/bin/env python")
                 (string-append "#!" #$python "/bin/python3")))
              #t))
          ;; NOTE: (Sharlatan-20220611T200837+0100): Workaround for casacore
          ;; tests stuck with missing "qsub" issue.
          ;; https://github.com/casacore/casacore/issues/1122
          (add-after 'unpack 'patch-pre-test-checks
            (lambda _
              (substitute* "build-tools/casacore_assay"
                (("QSUBP=.*$") "QSUBP=\n")
                (("YODP=.*$") "YODP=\n"))
              #t)))))
    (native-inputs
     (list bison
           boost
           flex
           casacore-data
           readline))
    (inputs
     (list cfitsio
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

;; 20220608T191316+0100
(define-public aoflagger
  (package
    (name "aoflagger")
    (version "3.2.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://gitlab.com/aroffringa/aoflagger")
             (commit (string-append "v" version))))
       (sha256
        (base32
         "1dcbfrbiybhpbypna2xhddx1wk7yifh38ha2r6p5rzsikzwlsin1"))
       (file-name (git-file-name name version))))
    (build-system cmake-build-system)
    ;; (arguments
    ;;  (list
    ;;   #:configure-flags
    ;;   #~(list
    ;;      "-DBUILD_TEST=ON"
    ;;      (string-append "-DCMAKE_INSTALL_LIBDIR=" #$output "/lib")
    ;;      (string-append "-DCMAKE_INSTALL_PREFIX=" #$output))))
    ;; (native-inputs
    ;;  (list perl
    ;;        perl-xml-dom
    ;;        perl-xml-parser
    ;;        pkg-config
    ;;        ;python-wrapper
    ;;        swig))
    (inputs
     (list hdf5
           ))
    (home-page "http://plplot.org/")
    (synopsis "")
    (description
     "")
    (license license:gpl3)))

;; TODO: (Sharlatan-20210415T214924+0100):
(define-public astrometry
  (package
   (name "astrometry")
   (version "0.90")
   (source
    (origin
     (method git-fetch)
     (uri (git-reference
           (url "https://github.com/dstndstn/astrometry.net")
           (commit version)))
     (file-name (git-file-name name version))
     (sha256
      (base32 "0dwq48skf1fc9vrmxswnr9gjjvi9xzfmgm6hzm41iggc3v1f1g1g"))))
   (build-system gnu-build-system)
   (arguments
    (list
     #:make-flags
     #~(list
        (string-append "RELEASE_VER=" #$version)
        (string-append "INSTALL_DIR=" #$output))
     #:phases
     #~(modify-phases %standard-phases
                      (delete 'configure)
                      (replace 'check
                               (lambda _
                                 (when #$tests?
                                   (invoke "make" "test"))))
                      (replace 'build
                               (lambda _
                                 (invoke "make")
                                 (invoke "make" "py")
                                 #t)))))
   (native-inputs
    (list pkg-config
          swig
          python-wrapper
          git))
   (inputs
    (list cairo
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
   (description
    "")
   (license license:gpl3+)))

;; 20220607T220301+0100
(define-public python-astrometry
  (package
   (name "python-astrometry")
   (version "2.0.0")
   (source
    (origin
     (method url-fetch)
     (uri (pypi-uri "astrometry" version))
     (sha256
      (base32
       "0vcp2k5d2grq45860qxllsypqa712rcvd93rngdk4bwg445nzk7c"))))
   (build-system python-build-system)
   (native-inputs
    (list python-requests))
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

(define-public libsep
  (package
   (name "libsep")
   (version "1.1.1")
   (source
    (origin
     (method git-fetch)
     (uri (git-reference
           (url "https://github.com/kbarbary/sep")
           (commit (string-append "v" version))))
     (file-name (git-file-name name version))
     (sha256
      (base32 "1xcdlmm2zwrcrcdgbwc8ahna3szdr6a88gg37lkzbh4n5rw90qki"))))
   (build-system cmake-build-system)
   (arguments
    (list
     #:phases
     #~(modify-phases %standard-phases
                      (replace  'check
                                (lambda _
                                  (when #tests?
                                    (invoke "ls" "../source" "-la")))))))
   (native-inputs
    (list gcc
          python-wrapper))
   (home-page "https://github.com/kbarbary/sep")
   (synopsis "Astronomical source extraction and photometry library")
   (description
    "C library for Source Extraction and Photometry")
   (license license:expat))) ;; BSD, LGPL, MIT

;; (define-public missfits
;; added-to-upstream: 1aee32a26e1a96dd457fcf62f97f514c7a562475

;; TODO: (Sharlatan-20210415T225235+0100):
(define-public psfex
  (package
    (name "psfex")
    (version "3.17.1")
    (source
     (origin
       (method url-fetch)
       (uri (string-append "https://www.astromatic.net/download/"
                           name "/" name "-" version ".tar.gz"))
       (sha256
        (base32 "12dgakvpxv5iicvv9kkhhbqchljzi211pi49m7hfd9vxmd4v9wak"))))
    (build-system gnu-build-system)
    (arguments
     (list
      #:configure-flags
      #~(list
         (string-append
          "--with-fftw-libdir=" #$(this-package-input "fftwf") "/lib")
         (string-append
          "--with-fftw-incdir=" #$(this-package-input "fftwf") "/include")
         (string-append
          "--with-atlas-libdir=" #$(this-package-input "atlas") "/lib")
         (string-append
          "--with-atlas-incdir=" #$(this-package-input "atlas") "/include")
         (string-append
          "--with-plplot-libdir=" #$(this-package-input "plplot") "/lib")
         (string-append
          "--with-plplot-incdir=" #$(this-package-input "plplot") "/include"))))
    (inputs
     (list fftwf
           plplot
           atlas))
    (home-page "https://www.astromatic.net/software/psfex")
    (synopsis "")
    (description
     "
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
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/pchev/skychart")
               (commit (string-append "V" version-major version-minor))))
         (file-name (git-file-name name version))
         (sha256
          (base32 "1nb3ilw8swz9q9qjd8s1na3g7k7apb2yrpyl89cq2dfcly9c75mi"))))
      (build-system gnu-build-system)
      (native-inputs
       `(("fpc" ,fpc)))
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

;; (define-public python-astropy
;; added-to-upstream 9371cf2138711ea7305951d82c5cf0b36ac4d6f1

;; (define-public imppg
;; added-to-upstream: bf9a1dfd591d5e166581919ac92e67f47219f0eb
;; CommitDate: Sun Dec 5 12:35:55 2021 +0100

;; (define-public python-gwcs
;; added-to-upstream: 3e497b3a4c8146b4e67807f64bea3d986df9894a
;; CommitDate: Sun Jan 30 11:46:19 2022 -0300

;; (define-public python-asdf-wcs-schemas
;; added-to-upstream: 007495210d41bcb8dc3ddcf8e04f2d85c75ba990
;; CommitDate: Sun Jan 30 11:46:19 2022 -0300

;; (define-public python-asdf-astropy
;; added-to-upstream: 7b2747c81d52dd4727cc642df2ebbce485c7e204
;; CommitDate: Sun Jan 30 11:46:18 2022 -0300

;; (define-public python-asdf-coordinates-schemas
;; added-to-upastream: 527ee1bdc82d608dc41438c4f3c6e86260aecb85
;; CommitDate: Sun Jan 30 11:46:18 2022 -0300

;; (define-public python-asdf-transform-schemas
;; added-to-upstram: 89a5c53f382eec3dc4e2b60d819b39ada003df44
;; CommitDate: Sun Jan 30 11:46:17 2022 -0300


;; Set of packages maintained by Space Telescope Science Institute
;; https://github.com/spacetelescope
;;+begin-spacetelescope

;; 20220131T235042+0000
(define-public python-jwst
  (package
    (name "python-jwst")
    (version "1.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "jwst" version))
       (sha256
        (base32 "0r83z6103q0r2a4ldkr2zcq0jj4ml73ajsby98i7020x237dymrc"))))
    (build-system python-build-system)
    (propagated-inputs
     (list python-asdf
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
           python-stsci.image
           python-stsci.imagestats
           python-tweakwcs))
    (native-inputs
     (list python-ci-watson
           python-codecov
           python-colorama
           python-flake8
           python-getch
           python-pytest
           python-pytest-cov
           python-pytest-doctestplus
           python-pytest-openfiles
           python-requests-mock))    (home-page "https://github.com/spacetelescope/jwst")
           (synopsis
            "Library for calibration of science observations from the James Webb Space Telescope")
           (description
            "Library for calibration of science observations from the James Webb Space
Telescope")
           (license #f)))

;; 20220513T211720+0100
(define-public python-pysynphot
  (package
    (name "python-pysynphot")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "pysynphot" version))
       (sha256
        (base32 "1rr29m63bnj47f6gvbvg3pm1296x14ad29c6qd0sdj4f4ilrzhj5"))))
    (build-system python-build-system)
    (arguments
     (list
      #:phases
      #~(modify-phases %standard-phases
          (replace 'check
            (lambda* (#:key tests? #:allow-other-keys)
              (when tests?
                ;; Data files for pysynphot are distributed separately by Calibration Reference
                ;; Data System. They are expected to follow a certain directory structure under
                ;; the root directory, identified by the PYSYN_CDBS environment variable that
                ;; must be set prior to using this package. In the example below, the root
                ;; directory is arbitrarily named /my/local/dir/trds/.
                (setenv "PYSYN_CDBS" (string-append #$output "/crds"))
                (invoke "pytest" "pysynphot" "-vv")))))))
    (propagated-inputs
     (list python-astropy
           python-beautifulsoup4
           python-numpy
           python-pytest-astropy-header
           python-six))
    (native-inputs
     (list python-pytest
           python-pytest-remotedata
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
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "roman_datamodels" version))
       (sha256
        (base32 "0ncmdnz9zz0w1g5n3a3c73x3apzbvxabckymbgqpd8xng7ybjrxb"))))
    (build-system python-build-system)
    (propagated-inputs
     (list python-asdf
           python-asdf-astropy
           python-astropy
           python-jsonschema
           python-numpy
           python-psutil
           python-rad))
    (native-inputs
     (list python-pytest python-pytest-doctestplus python-pytest-openfiles))
    (home-page "https://github.com/spacetelescope/roman_datamodels")
    (synopsis "Roman Datamodels")
    (description "Roman Datamodels")
    (license #f)))

;; 20220513T220144+0100
(define-public python-rad
  (package
    (name "python-rad")
    (version "0.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "rad" version))
       (sha256
        (base32 "1bwbqj7wfb3fhp1w7rm4qv4hrwwilpdhgkghcwrgjnbr5bj4s6xa"))))
    (build-system python-build-system)
    (arguments
     (list
      #:phases
      #~(modify-phases %standard-phases
          (replace 'check
            (lambda* (#:key tests? #:allow-other-keys)
              (when tests?
                (invoke "pytest" "-vv")))))))
    (propagated-inputs
     (list python-asdf))
    (native-inputs
     (list python-pytest
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
    (version "0.7.4")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "tweakwcs" version))
       (sha256
        (base32 "0569xpd5q6fj4k7y3ib6rjqps0q94irnmsxa1hykvmjj1ymclwnf"))))
    (build-system python-build-system)
    (propagated-inputs
     (list python-astropy
           python-gwcs
           python-numpy
           python-packaging
           python-spherical-geometry
           python-stsci.imagestats
           python-stsci.stimage))
    (native-inputs
     (list python-codecov python-pytest python-pytest-cov python-scipy))
    (home-page "https://github.com/spacetelescope/tweakwcs")
    (synopsis "A package for correcting alignment errors in WCS objects")
    (description
     "This package provides a package for correcting alignment errors in WCS objects")
    (license #f)))

;;20220523T215603+0100
(define-public python-spherical-geometry
  (package
    (name "python-spherical-geometry")
    (version "1.2.22")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/spacetelescope/spherical_geometry")
             (commit version)))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0kzcncqir4v7nhk9lxj9gxr32p3krkaqa58y2i4kksgxxy24qw4z"))))
    (build-system python-build-system)
    (arguments
     (list
      ;; NOTE: (Sharlatan-20220523T231348+0100): Tests depends on old Python2
      ;; libarry `sphere'
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (add-after 'unpack 'preparations
            (lambda _
              ;; Fixing: setuptools-scm was unable to detect version for ...
              (substitute* "setup.py"
                (("use_scm_version=True")
                 (format #f "version=~s" #$version))
                (("setup_requires=\\['setuptools_scm'\\],.*")
                 ""))
              ;; Use our own libraries in place of bundles.
              (setenv "USE_SYSTEM_QD" "1"))))))
    (native-inputs
     (list python-pytest
           python-setuptools-scm))
    (inputs
     (list qd))
    (propagated-inputs
     (list python-astropy
           python-numpy))
    (home-page "https://github.com/spacetelescope/tweakwcs")
    (synopsis "Python astronimical package for handling spherical polygons")
    (description
     "The @code{spherical_geometry} library is a Python package for handling
spherical polygons that represent arbitrary regions of the sky.")
    ;; LICENSE.rst Association of Universities for Research in Astronomy (AURA)
    ;; QD_LIBRARY_LICENSE.rst for bandeled QD source
    (license license:bsd-3)))

;;20220523T223656+0100
(define-public python2-sphere
  (let ((commit "24c99dda4621b2ad77e811e6ff197fa0697f32ba")
        (revision "1"))
    (package
      (name "python2-sphere")
      (version (git-version "0.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/bwesterb/py-sphere")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "1ja1dhysj04jc8q6qjak21hql9rya05xpj71x8w8c73fsyg27sqn"))))
      (build-system python-build-system)
      (arguments
       (list #:python python-2)) ;not compatible with Python 3
      (inputs
       (list python2-numpy))
      (home-page "https://github.com/bwesterb/py-sphere")
      (synopsis "Python library for geometry on the sphere")
      (description
       "Python library for geometry on the sphere (and projective plane)")
      (license license:gpl3))))

;;+end-spacetelescope


;; 20220513T172658+0100
(define-public  python-bayesicfitting
  (package
    (name "python-bayesicfitting")
    (version "3.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "BayesicFitting" version))
       (sha256
        (base32 "08bj2vaicc9cn6mn2hkqri33r1v6iy6skiiddsikgz89lpaccl5g"))))
    (build-system python-build-system)
    (propagated-inputs
     (list python-astropy
           python-future
           python-matplotlib
           python-numpy
           python-scipy))
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
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "crds" version))
       (sha256
        (base32 "0nzi93ra8hy9pimcxrns8y65wk76ymlcndhn5zfhgh744fiykrrl"))))
    (build-system python-build-system)
    (arguments
     (list
      #:phases
      #~(modify-phases %standard-phases
          (replace 'check
            (lambda* (#:key tests? #:allow-other-keys)
              (when tests?
                (invoke "pytest" "-vv")))))))
    (propagated-inputs
     (list awscli
           ;python-jwst ;; circular dependency
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
    (native-inputs
     (list python-bandit
           python-flake8
           python-ipython
           python-lockfile
           python-mock
           python-nose
           python-pylint
           python-pytest
           python-semantic-version))
    (home-page "https://hst-crds.stsci.edu")
    (synopsis "Calibration Reference Data System (CRDS) - HST/JWST/Roman reference file management")
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
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "losoto" version))
       (sha256
        (base32 "0mbfym9iy5nnrxjz5jiz3mvcq9y7bhqsn48b16lky7xhs4fb15gv"))))
    (build-system python-build-system)
    (propagated-inputs
     (list python-casacore
           python-configparser
           python-cython
           python-matplotlib
           python-numexpr
           python-numpy
           python-progressbar
           python-scipy
           python-tables))
    (home-page "http://github.com/revoltek/losoto/")
    (synopsis "LOFAR Solution Tool")
    (description "LOFAR Solution Tool")
    (license #f)))
