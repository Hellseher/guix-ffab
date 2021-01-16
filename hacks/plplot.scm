(use-modules ((guix licenses) #:prefix license:)
             (gnu packages compression)
             (gnu packages image)
             (guix git-download)
             (gnu packages)
             (gnu packages cmake)
             (guix build-system cmake)
             (guix download)
             (guix packages))

(define-public plplot
  (package
    (name "plplot")
    (version "5.15.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://git.code.sf.net/p/plplot/plplot")
                    (commit (string-append  name "-" version))))
              (sha256
               (base32 "0fn9j251zv9pwlqy30yv4flwcd0cbyxd1nn388n1k158jycw2i91"))
              (file-name (git-file-name name version))))
    (build-system cmake-build-system)
    (arguments
     `(#:tests? #f
       #:configure-flags
       (list "-DCMAKE_RULE_MESSAGES=OFF"
             "-DUSE_RPATH=OFF"
             "-DPLD_psttf=OFF"
             "-DNON_TRANSITIVE=ON"
             "-DENABLE_tk=ON"
             "-DENABLE_python=ON"
             "-DENABLE_ada=ON"
             "-DBUILD_DOC=ON"
             "-UCMAKE_INSTALL_LIBDIR")))
    (home-page "http://plplot.org/")
    (synopsis "The ultimate in cross-platform plotting")
    (description
     "PLplot is a cross-platform software package for creating scientific plots
whose (UTF-8) plot symbols and text are limited in practice only by what
Unicode-aware system fonts are installed on a user's computer. The PLplot
software has a clean architecture that is organized as a core C library,
separate language bindings for that library, and separate device drivers that
are dynamically loaded by the core library which control how the plots are
presented in noninteractive and interactive plotting contexts.")
    (license license:gpl3+)))

plplot
