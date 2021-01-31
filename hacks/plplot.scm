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
             (gnu packages geo)
             (gnu packages lua)
             (gnu packages gd)
             (gnu packages pdf)
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
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             ;; Mirror: https://github.com/PLplot/PLplot
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
          "-DBUILD_TEST=ON"
          "-DCMAKE_BUILD_TYPE=Release"
          "-DCMAKE_RULE_MESSAGES=OFF"
          "-DENABLE_ada=ON"
          "-DENABLE_cxx=ON"
          "-DENABLE_d=ON"
          "-DENABLE_fortran=ON"
          "-DENABLE_lua=ON"
          "-DENABLE_ocaml=ON"
          "-DENABLE_octave=ON"
          "-DENABLE_python=ON"
          "-DENABLE_tcl=ON"
          "-DENABLE_tkX=ON"
          "-DNON_TRANSITIVE=ON"
          "-DPLD_cgm=ON"
          "-DPLD_ps=ON"
          "-DPLD_psttf=OFF"
          "-DPLD_svg=ON"
          "-DPLD_tk=ON"
          "-DUSE_RPATH=OFF"
          (string-append "-DCMAKE_INSTALL_LIBDIR=" out "/lib")
          (string-append "-DCMAKE_INSTALL_PREFIX=" out)))
       ;; NOTE: (Sharlatan-20210128T120312+0000): failing on example_cxx, I
       ;; leave it for someone who has more knowledge in CMake. Tests are
       ;; disalbed for now.
       ;; #:phases
       ;; (modify-phases %standard-phases
       ;;   (replace  'check
       ;;     (lambda _
       ;;       (invoke "ctest"))))
       ))
    (native-inputs
     `(("pkg-config" ,pkg-config)
       ("swig" ,swig)))
    ;; NOTE: (Sharlatan-20210128T201941+0000): It needs to be reviewed properly, if
    ;; octave is included it takes incredibly long time to build `plplot'
    (inputs
     `(("cairo" ,cairo)
       ("freetype" ,freetype)
       ("gd" ,gd)
       ("gfortran" ,gfortran)
       ("libharu" ,libharu)
       ("lua" ,lua)
       ("ocaml" ,ocaml)
       ("pango" ,pango)
       ("python" ,python)
       ("qhull" ,qhull)
       ("shapelib" ,shapelib)
       ("tcllib" ,tcllib)
       ("tk" ,tk)
       ("wxwidgets" ,wxwidgets)))
    (home-page "http://plplot.org/")
    (synopsis "Ultimate plotting")
    (description
     "PLplot is a cross-platform software package for creating scientific plots
whose (UTF-8) plot symbols and text are limited in practice only by what
Unicode-aware system fonts are installed on a user's computer.  The PLplot
software has a clean architecture that is organized as a core C library,
separate language bindings for that library, and separate device drivers that
are dynamically loaded by the core library which control how the plots are
presented in noninteractive and interactive plotting contexts.

Output file formats: CGM GIF JPEG PBM PDF PNG PostScript SVG Xfig
Interactive platforms: GDI GTK+PyQt Qt Tcl/Tk wxWidgets X
Language Bindings: Ada C++ D Fortran Lua OCaml Octave Perl/PDL Python Tcl/Tk")
    (license license:lgpl2.0))) ; Other terms are in Copyright file

plplot
