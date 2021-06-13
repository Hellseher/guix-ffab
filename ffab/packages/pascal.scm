(define-module (ffab packages pascal)
  #:use-module (gnu packages base)
  #:use-module (gnu packages commencement)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages ncurses)
  #:use-module (gnu packages pascal)
  #:use-module (gnu packages perl)
  #:use-module (guix build-system gnu)
  #:use-module (guix download)
  #:use-module (guix packages)
  #:use-module ((guix licenses) #:prefix license:))

(define-public lazarus-ide
  (package
    (name "lazarus-ide")
    (version "2.0.12")
    (source
     (origin
       (method url-fetch)
       ;; Mirror: ftp://ftp.freepascal.org/pub/lazarus/releases/
       (uri (string-append
             "mirror://sourceforge/lazarus/Lazarus%20Zip%20_%20GZip/Lazarus%20"
             version "/lazarus-" version ".tar.gz"))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1chm00yw2xk71kz243n42cix8fb0jby2x619c8b2hb9sh9zyyv5s"))))
    (build-system gnu-build-system)
    (supported-systems '("i686-linux" "x86_64-linux"))
    (arguments
     `(#:make-flags
       (list
        "bigide"
        (string-append
         "FPC=" (assoc-ref %build-inputs "fpc") "/bin/fpc")
        (string-append
         "PP=" (assoc-ref %build-inputs "fpc") "/bin/fpc")
        (string-append
         "INSTALL_PREFIX=" (assoc-ref %outputs "out")))
       #:phases
       (modify-phases %standard-phases
         (delete 'configure)
         (add-after 'unpack 'prepare-deps
           (lambda* (#:key inputs #:allow-other-keys)
             ;; needed by libwhich
             (setenv "LD_LIBRARY_PATH"
                     (string-join (map (lambda (pkg)
                                         (string-append (assoc-ref inputs pkg)
                                                        "/lib"))
                                       '("gtk+" "pango" "cairo"))
                                  ":"))
             #t))
         (replace 'build
           (lambda _
             (invoke "make" "clean" "bigide")
             #t)))))
    (native-inputs
     `(("perl" ,perl)
       ("glibc" ,glibc)
       ("gtk+" ,gtk+)
       ("pango" ,pango)
       ("atk" ,atk)
       ("ld-wrapper" ,ld-wrapper)
       ("cairo" ,cairo)
       ("zlib" ,zlib)
       ("ld-wrapper" ,ld-wrapper)))
    (inputs
     `(("fpc" ,fpc)))
    (native-search-paths (package-native-search-paths glibc))
    (home-page "https://www.lazarus-ide.org/")
    (synopsis "Free Pascal RAD IDE")
    (description
     "Lazarus is a Delphi compatible cross-platform IDE for Rapid Application
Development.  It has variety of components ready for use and a graphical form
designer to easily create complex graphical user interfaces.")
    (license license:gpl3+)))
