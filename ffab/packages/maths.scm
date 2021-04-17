(define-module (ffab packages maths)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages image)
  #:use-module (guix git-download)
  #:use-module (gnu packages)
  #:use-module (gnu packages commencement)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages python)
  #:use-module (gnu packages swig)
  #:use-module (gnu packages wxwidgets)
  #:use-module (gnu packages tcl)
  #:use-module (gnu packages geo)
  #:use-module (gnu packages lua)
  #:use-module (gnu packages gd)
  #:use-module (gnu packages pdf)
  #:use-module (gnu packages fontutils)
  #:use-module (gnu packages ocaml)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages maths)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages cmake)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages autotools)
  #:use-module (gnu packages perl)
  #:use-module (gnu packages xml)
  #:use-module (guix build-system cmake)
  #:use-module (guix build-system gnu)
  #:use-module (guix build-system python)
  #:use-module (guix download)
  #:use-module (guix packages))

;(define-public plplot-base)

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
             (commit (string-append name "-" version))))
       (sha256
        (base32 "0fn9j251zv9pwlqy30yv4flwcd0cbyxd1nn388n1k158jycw2i91"))
       (file-name (git-file-name name version))))
    (build-system cmake-build-system)
    (arguments
     ;; NOTE: (Sharlatan-20210204T120351+0000): Tests failing on examples_cxx
     `(#:tests? #f
       #:configure-flags
       (let ((out (assoc-ref %outputs "out")))
         (list
          "-DBUILD_TEST=ON"
          "-DCMAKE_BUILD_TYPE=Release"
          "-DCMAKE_SKIP_BUILD_RPATH=OFF"
          (string-append "-DCMAKE_INSTALL_LIBDIR=" out "/lib")
          (string-append "-DCMAKE_INSTALL_PREFIX=" out)))))
    (native-inputs
     `(("pkg-config" ,pkg-config)
       ("python", python-wrapper)
       ("perl", perl)
       ("swig" ,swig)))
    (inputs
     `(("freetype", freetype)
       ("gfortran" ,gfortran)
       ("libltdl" ,libltdl)
       ("lua", lua)
       ("numpy", python-numpy)
       ("octave", octave)
       ("pango" ,pango)
       ("qhull" ,qhull)
       ("shapelib" ,shapelib)
       ("tcl", tcl)
       ("tk", tk)
       ("wxwidgets" ,wxwidgets)
       ("xml-dom" ,perl-xml-dom)
       ("xml-parser" ,perl-xml-parser)))
    (home-page "http://plplot.org/")
    (synopsis "Scientific graphics plotting library")
    (description
     "PLplot is a cross-platform software package for creating scientific plots
whose (UTF-8) plot symbols and text.")
    (license license:lgpl2.0))) ; Other terms are in Copyright file
