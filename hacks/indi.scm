(use-modules ((guix licenses) #:prefix license:)
             (gnu packages compression)
             (gnu packages image)
             (guix utils)
             (gnu packages)
             (gnu packages libusb)
             (gnu packages curl)
             (gnu packages astronomy)
             (gnu packages maths)
             (gnu packages algebra)
             (guix git-download)
             (guix build-system cmake)
             (guix download)
             (guix packages))

(define-public indi
  (package
    (name "indi")
    (version "1.8.8")
    (source (origin
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
          (string-append "-DCMAKE_INSTALL_PREFIX=" out)
          (string-append "-DUDEVRULES_INSTALL_DIR=" out "/lib/udev/rules.d")))
       #:phases
       (modify-phases %standard-phases
         (add-before 'install 'set-install-directories
           (lambda* (#:key outputs #:allow-other-keys)
             (let ((out (assoc-ref outputs "out")))
               (mkdir-p (string-append out "/lib/udev/rules.d")))
             #t)))))
    (inputs
     `(("libusb" ,libusb)
       ("libnova" ,libnova)
       ("cfitsio" ,cfitsio)
       ("gsl" ,gsl)
       ("curl" ,curl)
       ("zlib" ,zlib)
       ("libjpeg-turbo" ,libjpeg-turbo)
       ("libtiff" ,libtiff)
       ("fftw" ,fftw)))
    (home-page "https://www.indilib.org")
    (synopsis "Privides library for astonimical intrumentation control")
    (description
     "Instrument-Neutral Device Interface library -- shared library
INDI (Instrument-Neutral Device Interface) is a distributed XML-based control
protocol designed to operate astronomical instrumentation.  INDI is small,
flexible, easy to parse, scalable, and stateless.  It supports common DCS
functions such as remote control, data acquisition, monitoring, and a lot more.")
    (license license:lgpl2.1)))

indi
