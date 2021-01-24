(use-modules (guix packages)
             (guix build-system gnu)
             (gnu packages pkg-config)
             (guix git-download)
             (gnu packages maths)
             (gnu packages autotools)
             (gnu packages algebra)
             ((guix licenses) #:prefix license:))

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

sextractor
