(define-module (hellseher packages pascal)
  #:use-module (guix packages)
  #:use-module (guix build-system gnu)
  #:use-module (guix download)
  #:use-module (gnu packages pascal)
  #:use-module (gnu packages commencement)
  #:use-module (gnu packages base)
  #:use-module (gnu packages perl)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages ncurses)
  #:use-module (gnu packages gtk)
  #:use-module ((guix licenses) #:prefix license:))

(define-public lazarus-ide
  (let ((revision "2"))
    (package
      (name "lazarus-ide")
      (version "2.0.10")
      (source
       (origin
         (method url-fetch)
         ;; Mirror: ftp://ftp.freepascal.org/pub/lazarus/releases/
         (uri (string-append
               "mirror://sourceforge/lazarus/Lazarus%20Zip%20_%20GZip/Lazarus%20"
               version "/lazarus-" version "-" revision ".tar.gz"))
         (file-name (string-append name "-" version ".tar.gz"))
         (sha256
          (base32 "1ds3zmn0cr0qw9bjs2h63ggbf6jq1ayklpr05crs696xd1j65mb4"))))
      (build-system gnu-build-system)
      (supported-systems '("i686-linux" "x86_64-linux"))
      (arguments
       `(#:make-flags
         (list
          "bigide"
          "REQUIRE_PACKAGES+=tachartlazaruspkg"
          "LCL_PLATFORM=gtk2"
          (string-append
           "FPC=" (assoc-ref %build-inputs "fpc") "/bin/fpc")
          (string-append
           "PP=" (assoc-ref %build-inputs "fpc") "/bin/fpc")
          (string-append
           "INSTALL_PREFIX=" (assoc-ref %outputs "out")))
         #:phases
         (modify-phases %standard-phases
           (delete 'configure)
           (replace 'build
             (lambda* (#:key inputs #:allow-other-keys)
               (let ((fpc (string-append (assoc-ref %build-inputs "fpc") "/bin/fpc")))
                 (invoke "make"
                         "bigide"
                         (string-append "LDFLAGS+=-L" (assoc-ref %build-inputs "glibc") "/lib")
                         "LDFLAGS=+lXi -lX11 -lglib-2.0 -lgtk-x11-2.0 -lgdk-x11-2.0 -lc -lXext -lpango-1.0 -latk-1.0 -lgdk_pixbuf-2.0 -lcairo -lgcc_s"
                         "REQUIRE_PACKAGES+=tachartlazaruspkg"
                         "LCL_PLATFORM=gtk2"
                         (string-append "INSTALL_PREFIX=" (assoc-ref %outputs "out"))
                         (string-append "PP=" fpc)
                         (string-append "FPC=" fpc))))))))
      (native-inputs
       `(("perl" ,perl)
         ("glibc" ,glibc)
         ("gtk+" ,gtk+)
         ("pango" ,pango)
         ("atk" ,atk)
         ("cairo" ,cairo)
         ("zlib" ,zlib)
         ("ld-wrapper" ,ld-wrapper)))
      (inputs
       `(("fpc" ,fpc)))
      (home-page "https://www.lazarus-ide.org/")
      (synopsis "Free Pascal RAD IDE")
      (description
       "Lazarus is a Delphi compatible cross-platform IDE for Rapid Application
Development.  It has variety of components ready for use and a graphical form
designer to easily create complex graphical user interfaces.")
      (license license:gpl3+))))
