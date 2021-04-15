(define-module (hellseher packages astronomy)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages astronomy)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages image)
  #:use-module (gnu packages netpbm)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages python)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages swig)
  #:use-module (gnu packages version-control)
  #:use-module (guix build-system gnu)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix packages))

; TODO: (Sharlatan-20210415T214924+0100):
(define-public astrometry
    (package
      (name "astrometry")
      (version "0.85")
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/dstndstn/astrometry.net")
               (commit version)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "01pxlli8gk6d40kxhsa5aasnmsyaq1895kax3gfb7dcs0rp634qk"))))
      (build-system gnu-build-system)
      (arguments
       `(#:make-flags
         (list
          (string-append "RELEASE_VER=" version)
          (string-append "INSTALL_DIR=" (assoc-ref %outputs "out")))))
      (native-inputs
       `(("pkg-config" ,pkg-config)
         ("swig" ,swig)
         ("python" ,python)))
      (inputs
       `(("cairo" ,cairo)
         ("libpng" ,libpng)
         ("zlib" ,zlib)
         ("git" ,git)
         ("cfitsio" ,cfitsio)
         ("bzip2" ,bzip2)
         ("numpy" ,python-numpy)
         ("libjpeg" ,libjpeg-turbo)
         ("netpbm" ,netpbm)))
      (home-page "https://github.com/dstndstn/astrometry.net")
      (synopsis "")
      (description
       "")
    (license license:gpl3+)))

(define-public eye
  (package
    (name "eye")
    (version "1.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (string-append "http://www.astromatic.net/download/"
                           name "/" name "-" version ".tar.gz"))
       (sha256
        (base32 "092qhzcbrkcfidbx4bv9wz42w297n80jk7a6kwyi9a3fjfz81d7k"))))
    (build-system gnu-build-system)
    (home-page "http://www.astromatic.net/software/eye")
    (synopsis "Small image feature detector using machine learning")
    (description
     "In EyE (Enhance Your Extraction) an artificial neural network connected to
pixels of a moving window (retina) is trained to associate these input stimuli
to the corresponding response in one or several output image(s).  The resulting
filter can be loaded in SExtractor to operate complex, wildly non-linear filters
on astronomical images.  Typical applications of EyE include adaptive filtering,
feature detection and cosmetic corrections.")
    (license license:gpl3+)))

(define-public indi
  (package
    (name "indi")
    (version "1.8.8")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/indilib/indi")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "19gm7rbnm3295g2i8mdzfslpz0vrcgfmbl59311qpszvlxbmyd2r"))))
    (build-system cmake-build-system)
    (arguments
     `(#:tests? #f
       #:configure-flags
       (let ((out (assoc-ref %outputs "out")))
         (list
          "-DCMAKE_BUILD_TYPE=Release"
          (string-append "-DCMAKE_INSTALL_PREFIX=" out)
          (string-append "-DUDEVRULES_INSTALL_DIR=" out "/lib/udev/rules.d")))
       #:phases
       (modify-phases %standard-phases
         (replace  'check
           (lambda _
             (invoke "ctest")))
         (add-before 'install 'set-install-directories
           (lambda* (#:key outputs #:allow-other-keys)
             (let ((out (assoc-ref outputs "out")))
               (mkdir-p (string-append out "/lib/udev/rules.d")))
             #t)))))
    ;; Required for unit tests
    ;; (native-inputs
    ;;  `(("googletest" ,googletest)))
    (inputs
     `(("cfitsio" ,cfitsio)
       ("curl" ,curl)
       ("fftw" ,fftw)
       ("gsl" ,gsl)
       ("libjpeg-turbo" ,libjpeg-turbo)
       ("libnova" ,libnova)
       ("libtiff" ,libtiff)
       ("libusb" ,libusb)
       ("zlib" ,zlib)))
    (home-page "https://www.indilib.org")
    (synopsis "Privides library for astonimical intrumentation control")
    (description
     "Instrument-Neutral Device Interface library -- shared library
INDI (Instrument-Neutral Device Interface) is a distributed XML-based control
protocol designed to operate astronomical instrumentation.  INDI is small,
flexible, easy to parse, scalable, and stateless.  It supports common DCS
functions such as remote control, data acquisition, monitoring, and a lot more.")
    (license license:lgpl2.1)))

(define-public libpasastro
  ;; NOTE: (Sharlatan-20210122T215921+0000): the veneration tag has a build
  ;; error on spice which is resolved with the latest commit.
  (let ((commit "e3c218d1502a18cae858c83a9a8812ab197fcb60")
        (revision "1"))
    (package
      (name "libpasastro")
      (version (git-version "1.4.0" revision commit))
      (source (origin
                (method git-fetch)
                (uri (git-reference
                      (url "https://github.com/pchev/libpasastro")
                      (commit commit)))
                (file-name (git-file-name name version))
                (sha256
                 (base32
                  "0asp2sn34nds5va2ghppwc41vb6j3d1mf049j949rgrll817kx47"))))
      (build-system gnu-build-system)
      (arguments
       `(#:tests? #f
         #:make-flags
         (list
          ,(match (or (%current-target-system) (%current-system))
             ((or "aarch64-linux" "armhf-linux" "i686-linux" "x86_64-linux")
              "OS_TARGET=linux")
             (_ #f))
          ,(match (or (%current-target-system) (%current-system))
             ("i686-linux" "CPU_TARGET=i386")
             ("x86_64-linux" "CPU_TARGET=x86_64")
             ((or "armhf-linux" "aarch64-linux") "CPU_TARGET=armv7l")
             (_ #f))
          (string-append "PREFIX=" (assoc-ref %outputs "out")))
         #:phases
         (modify-phases %standard-phases
           (delete 'configure))))
      (home-page "https://github.com/pchev/libpasastro")
      (synopsis "Interface to astronomy library for use from Pascal program")
      (description
       "Interface to standard astronomy library for use from Pascal program

Provide shared libraries to interface Pascal program with standard astronomy
libraries.

@itemize
@item @code{libpasgetdss.so}: Interface with GetDSS to work with DSS images.
@item @code{libpasplan404.so}: Interface with Plan404 to compute planets position.
@item @code{libpaswcs.so}: Interface with libwcs to work with FITS WCS.
@item @code{libpasspice.so}: To work with NAIF/SPICE kernel.
@end itemize\n")
      (license license:gpl2+))))

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
     `(#:phases
       (modify-phases %standard-phases
         (replace  'check
           (lambda _
             (invoke "ctest"))))))
    (native-inputs
     `(("python" ,python)))
    (home-page "https://github.com/kbarbary/sep")
    (synopsis "Astronomical source extraction and photometry library")
    (description
     "C library for Source Extraction and Photometry")
    (license license:expat))) ;; BSD, LGPL, MIT

(define-public missfits
  (package
    (name "missfits")
    (version "2.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (string-append "https://www.astromatic.net/download/"
                           name "/" name "-" version ".tar.gz"))
       (sha256
        (base32 "04jrd7fsvzr14vdmwgj2f6v97gdcfyjyz6jppml3ghr9xh12jxv5"))))
    (build-system gnu-build-system)
    (home-page "https://www.astromatic.net/software/missfits")
    (synopsis "Provides maintenance tasks on FITS files")
    (description
     "MissFITS is a program that performs basic maintenance and packaging tasks on
FITS files:

@itemize
@item add/edit FITS header keywords
@item split/join Multi-Extension-FITS (MEF) files
@item unpack/pack FITS data-cubes
@item create/check/update FITS checksums, using R. Seaman's protocol
      (see http://www.adass.org/adass/proceedings/adass94/seamanr.html)
@end itemize\n")
    (license license:gpl3+)))

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
     `(#:configure-flags
       (list
        (string-append
         "--with-fftw-libdir=" (assoc-ref %build-inputs "fftw") "/lib")
        (string-append
         "--with-fftw-incdir=" (assoc-ref %build-inputs "fftw") "/include"))))
    ;; (native-inputs
    ;;  `(("autoconf" ,autoconf)
    ;;    ("automake" ,automake)
    ;;    ("libtool" ,libtool)))
    (inputs
     `(("fftw" ,fftwf)))
    (home-page "https://www.astromatic.net/software/psfex")
    (synopsis "")
    (description
     "
")
    (license license:gpl3+)))

(define-public weightwatcher
  (package
    (name "weightwatcher")
    (version "1.12")
    (source
     (origin
       (method url-fetch)
       (uri (string-append "https://www.astromatic.net/download/"
                           name "/" name "-" version ".tar.gz"))
       (sha256
        (base32 "1zaqd8d9rpgcwjsp92q3lkfaa22i20gppb91dz34ym54swisjc2p"))))
    (build-system gnu-build-system)
    (home-page "https://www.astromatic.net/software/weightwatcher")
    (synopsis "Weight-map/flag-map multiplexer and rasteriser")
    (description
     "Weightwatcher is a program that resamples and co-adds together FITS images using
any arbitrary astrometric projection defined in the WCS standard.")
    (license license:gpl3+)))

(define-public swarp
  (package
    (name "swarp")
    (version "2.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (string-append "https://www.astromatic.net/download/"
                           name "/" name "-" version ".tar.gz"))
       (sha256
        (base32 "1i670waqp54vin1cn08mqckcggm9zqd69nk7yya2vvqpdizn6jpm"))))
    (build-system gnu-build-system)
    (home-page "https://www.astromatic.net/software/swarp")
    (synopsis "Image regridding and co-addition")
    (description
     "SWarp is a program that resamples and co-adds together FITS images using
any arbitrary astrometric projection defined in the WCS standard.")
    (license license:gpl3+)))

(define-public stuff
  (package
    (name "stuff")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (string-append "https://www.astromatic.net/download/"
                           name "/" name "-" version ".tar.gz"))
       (sha256
        (base32 "1syibi3b86z9pikhicvkkmgxm916j732fdiw0agw0lq6z13fdcjm"))))
    (build-system gnu-build-system)
    (home-page "https://www.astromatic.net/software/stuff")
    (synopsis "Catalogue simulation")
    (description
     "Stuff is a program that simulates \"perfect\" astronomical catalogues.  It
generate object lists in ASCII which can read by the SkyMaker program to produce
realistic astronomical fields.  Stuff is part of the EFIGI development project.")
    (license license:gpl3+)))

(define-public stiff
  (package
    (name "stiff")
    (version "2.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (string-append "https://www.astromatic.net/download/stiff/stiff-" version ".tar.gz"))
       (sha256
        (base32 "14m92dskzw7bwsr64ha4p0mj3ndv13gwcbfic3qxrs3zq5353s7l"))))
    (build-system gnu-build-system)
    (inputs
     `(("libtiff" ,libtiff)
       ("zlib" ,zlib)
       ("libjpeg-turbo" ,libjpeg-turbo)))
    (home-page "https://www.astromatic.net/software/stiff")
    (synopsis "STIFF converts scientific FITS images to TIFF format")
    (description
     "STIFF is a program that converts scientific FITS images to the more
popular TIFF format for illustration purposes.")
    (license license:gpl3)))

(define-public skymaker
  (package
    (name "skymaker")
    (version "3.10.5")
    (source
     (origin
       (method url-fetch)
       (uri (string-append "https://www.astromatic.net/download/"
                           name "/" name "-" version ".tar.gz"))
       (sha256
        (base32 "03zvx7c89plp9559niqv5532r233kza3ir992rg3nxjksqmrqvx1"))))
    (build-system gnu-build-system)
    (arguments
     `(#:configure-flags
       (list
        (string-append
         "--with-fftw-libdir=" (assoc-ref %build-inputs "fftw") "/lib")
        (string-append
         "--with-fftw-incdir=" (assoc-ref %build-inputs "fftw") "/include"))))
    (inputs
     `(("fftw" ,fftwf)))
    (home-page "https://www.astromatic.net/software/skymaker")
    (synopsis "Image simulation")
    (description
     "SkyMaker is a program that simulates astronomical images. It accepts
object lists in ASCII generated by the Stuff program to produce realistic
astronomical fields. SkyMaker is part of the EFIGI
(https://www.astromatic.net/projects/efigi) development project.")
    (license license:gpl3+)))

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

(define-public sextractor
  (package
    (name "sextractor")
    (version "2.25.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/astromatic/sextractor")
             (commit version)))
       (file-name (git-file-name name version))
       (sha256
        (base32
         "0q69n3nyal57h3ik2xirwzrxzljrwy9ivwraxzv9566vi3n4z5mw"))))
    (build-system gnu-build-system)
    ;; NOTE: (Sharlatan-20210124T103117+0000): Building with `atlas' is failing
    ;; due to missing shared library which required on configure phase. Switch
    ;; build to use `openblas' instead. It requires FFTW with single precision
    ;; `fftwf'.
    (arguments
     `(#:configure-flags
       (list
        "--enable-openblas"
        (string-append
         "--with-openblas-libdir=" (assoc-ref %build-inputs "openblas") "/lib")
        (string-append
         "--with-openblas-incdir=" (assoc-ref %build-inputs "openblas") "/include")
        (string-append
         "--with-fftw-libdir=" (assoc-ref %build-inputs "fftw") "/lib")
        (string-append
         "--with-fftw-incdir=" (assoc-ref %build-inputs "fftw") "/include"))))
    (native-inputs
     `(("autoconf" ,autoconf)
       ("automake" ,automake)
       ("libtool" ,libtool)))
    (inputs
     `(("openblas" ,openblas)
       ("fftw" ,fftwf)))
    (home-page "http://www.astromatic.net/software/sextractor")
    (synopsis "Extract catalogs of sources from astronomical images")
    (description
     "SExtractor is a program that builds a catalogue of objects from an
astronomical image.  Although it is particularly oriented towards reduction of
large scale galaxy-survey data, it can perform reasonably well on moderately
crowded star fields.

This package produces binaries: ldactoasc, sex")
 (license license:gpl3)))

(define-public python-sep
  (package
    (name "python-sep")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "sep" version))
       (sha256
        (base32 "0wxdqn92q1grv8k7xi7h88ac6wnznw4xh5bdlz1vz6za2dgsyj4m"))))
    (build-system python-build-system)
    (native-inputs
     `(("cython" ,python-cython)
       ("pytest" ,python-pytest)))
    (inputs
     `(("numpy" ,python-numpy)))
    (home-page "https://github.com/kbarbary/sep")
    (synopsis "Astronomical source extraction and photometry library")
    (description
     "Python library for Source Extraction and Photometry")
    (license license:expat))) ;; BSD, LGPL, MIT

(define-public python-jplephem
  (package
    (name "python-jplephem")
    (version "2.15")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "jplephem" version))
       (sha256
        (base32 "1ca3dswsslij79qg6dcijjz4l0fj6nzmxld8z93v45ahlkhps0g0"))))
    (build-system python-build-system)
    (arguments
     `(#:phases
       (modify-phases %standard-phases
         (replace 'check
           (lambda* (#:key outputs #:allow-other-keys)
             (let ((out (assoc-ref outputs "out")))
               (setenv "PYTHONPATH"
                       (string-append "./build/lib:"
                                      (getenv "PYTHONPATH")))
               (setenv "PATH" (string-append out "/bin:"
                                             (getenv "PATH")))
               (invoke "python" "-m" "unittest" "discover" "-s" "test")))))))
    (inputs
     `(("python-numpy" ,python-numpy)))
    (home-page "https://github.com/brandon-rhodes/python-jplephem")
    (synopsis "Python version of NASA DE4xx ephemerides")
    (description
     "Use a JPL ephemeris to predict planet positions.")
    (license license:expat)))

(define-public python-asdf
  (package
    (name "python-asdf")
    (version "2.7.2")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "asdf" version))
       (sha256
        (base32 "1y47zhkd90i8wmm2i35amfl0rvjqlb3fcx90xp7n9kr2z0byzyzg"))))
    (build-system python-build-system)
    (arguments
     ;; TODO: (Sharlatan-20210207T165820+0000): Tests depend on astropy, astropy
     ;; depends on asdf. Disable circular dependence.
     `(#:tests? #f))
    (native-inputs
     `(("setuptools-scm" ,python-setuptools-scm)
       ("semantic-version" ,python-semantic-version)
       ("packaging" ,python-packaging)))
     (inputs
      `(("importlib-resources" ,python-importlib-resources)
        ("jsonschema" ,python-jsonschema)
        ("numpy" ,python-numpy)
        ("pyyaml" ,python-pyyaml)))
     (home-page "http://github.com/asdf-format/asdf")
     (synopsis "Python tools to handle ASDF files")
     (description
      "The Advanced Scientific Data Format (ASDF) is a next-generation
interchange format for scientific data.  This package contains the Python
implementation of the ASDF Standard.")
     (license license:bsd-3)))

(define-public python-astroalign
  (package
    (name "python-astroalign")
    (version "2.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "astroalign" version))
       (sha256
        (base32 "19qzv3552lgrd9qmj0rxs51wmx485hw04cbf76ds5pin85kfaiy1"))))
    (build-system python-build-system)
    (propagated-inputs
     `(("python-numpy" ,python-numpy)
       ("python-scikit-image" ,python-scikit-image)
       ("python-scipy" ,python-scipy)
       ("python-sep" ,python-sep)))
    (home-page "https://astroalign.readthedocs.io/")
    (synopsis "Astrometric Alignment of Images")
    (description
     "ASTROALIGN is a python module that will try to align two stellar
astronomical images, especially when there is no WCS information available.")
    (license license:expat)))

;; TODO: (Sharlatan-20210415T231145+0100):
(define-public python-astropy
  (package
    (name "python-astropy")
    (version "4.2")
    (source
     (origin
       (method url-fetch)
       ;; Source: https://github.com/astropy/astropy
       (uri (pypi-uri "astropy" version))
       (sha256
        (base32 "0snw1abrwaqkziw2vambbi9g0jgah5la04x4ckg9k0wv8a54y69c"))))
    (build-system python-build-system)
    (native-inputs
     `(("coverage" ,python-coverage)
       ("ipython" ,python-ipython)
       ("objgraph" ,python-objgraph)
       ("pytest-astropy" ,python-pytest-astropy)
       ("pytest-xdist" ,python-pytest-xdist)
       ("sgp4" ,python-sgp4)
       ("skyfield" ,python-skyfield)
       ))
    (inputs
     `(("scipy" ,python-scipy)
       ("numpy" ,python-numpy)
       ("pyerfa" ,python-pyerfa)
       ("dask" ,python-dask)
       ("h5py" ,python-h5py)
       ("beautifulsoup4" ,python-beautifulsoup4)
       ("html5lib" ,python-html5lib)
       ("bleach" ,python-bleach)
       ("pyyaml" ,python-pyyaml)
       ("pandas" ,python-pandas)
       ("sortedcontainers" ,python-sortedcontainers)
       ("pytz" ,python-pytz)
       ("jplephem" ,python-jplephem)
       ("matplotlib" ,python-matplotlib)
       ("mpmath" ,python-mpmath)
       ("asdf" ,python-asdf)
       ("bottleneck" ,python-bottleneck)))
  (home-page "http://astropy.org")
  (synopsis "Astronomy and astrophysics core library")
  (description
   "Astropy Project is a single core package for Astronomy in Python and foster
interoperability between Python astronomy packages.")
  (license license:bsd-3)))
