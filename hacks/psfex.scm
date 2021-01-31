(use-modules (guix packages)
             (guix build-system gnu)
             (guix download)
             (gnu packages algebra)
             ((guix licenses) #:prefix license:))

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

psfex
