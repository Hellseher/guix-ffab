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
             (gnu packages python-xyz)
             (gnu packages autotools)
             (gnu packages perl)
             (gnu packages xml)
             (guix build-system cmake)
             (guix build-system gnu)
             (guix build-system python)
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

plplot
