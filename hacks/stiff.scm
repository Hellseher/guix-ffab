(use-modules ((guix licenses) #:prefix license:)
             (gnu packages compression)
             (gnu packages image)
             (gnu packages)
             (guix build-system gnu)
             (guix download)
             (guix packages))

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
