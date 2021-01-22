(use-modules ((guix licenses) #:prefix license:)
             (gnu packages compression)
             (gnu packages image)
             (guix git-download)
             (gnu packages)
             (gnu packages commencement)
             (gnu packages gcc)
             (gnu packages python)
             (gnu packages swig)
             (gnu packages wxwidgets)
             (gnu packages tcl)
             (gnu packages lua)
             (gnu packages fontutils)
             (gnu packages ocaml)
             (gnu packages gtk)
             (gnu packages maths)
             (gnu packages pkg-config)
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
       (let ((out (assoc-ref %outputs "out")))
         (list
          "-DBUILD_DOC=ON"
          "-DCMAKE_RULE_MESSAGES=OFF"
          "-DENABLE_ada=ON"
          "-DENABLE_python=ON"
          "-DNON_TRANSITIVE=ON"
          "-DPLD_ps=ON"
          "-DPLD_tk=ON"
          "-DPLD_psttf=ON"
          "-DPLD_svg=ON"
          "-DUSE_RPATH=OFF"
          (string-append "-DCMAKE_INSTALL_LIBDIR=" out "/lib")
          (string-append "-DCMAKE_INSTALL_PREFIX=" out)))))
    (native-inputs
     `(("pkg-config" ,pkg-config)
       ("swig" ,swig)))
    (inputs
     `(("qhull" ,qhull)
       ("gfortran" ,gfortran)
       ("freetype" ,freetype)
       ("python" ,python)
       ("wxwidgets" ,wxwidgets)
       ("lua" ,lua)
       ("tcllib" ,tcllib)
       ("tk" ,tk)
       ("ocaml" ,ocaml)
       ("pango" ,pango)
       ("cairo" ,cairo)))
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
    (license license:lgpl2.0)))

plplot
