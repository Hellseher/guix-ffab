(define-module (ffab packages maths)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages image)
  #:use-module (guix git-download)
  #:use-module (gnu packages)
  #:use-module (gnu packages commencement)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages astronomy)
  #:use-module (gnu packages python)
  #:use-module (gnu packages swig)
  #:use-module (gnu packages wxwidgets)
  #:use-module (gnu packages ghostscript)
  #:use-module (gnu packages qt)
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
   (source (origin
            (method git-fetch)
            (uri (git-reference
                  ;; Mirror: https://github.com/PLplot/PLplot
                  (url "https://git.code.sf.net/p/plplot/plplot")
                  (commit (string-append name "-" version))))
            (sha256
             (base32
              "0fn9j251zv9pwlqy30yv4flwcd0cbyxd1nn388n1k158jycw2i91"))
            (file-name (git-file-name name version))))
   (build-system cmake-build-system)
   (arguments
    ;; NOTE: (Sharlatan-20210204T120351+0000): Tests failing on examples_cxx
    `(#:configure-flags
      (let ((out (assoc-ref %outputs "out")))
        (list "-DBUILD_TEST=ON" "-DCMAKE_BUILD_TYPE=Release"
              "-DCMAKE_SKIP_BUILD_RPATH=OFF"
              (string-append "-DCMAKE_INSTALL_LIBDIR=" out "/lib")
              (string-append "-DCMAKE_INSTALL_PREFIX=" out)))))
   (native-inputs
    (list ocaml
          perl
          python-wrapper
          pkg-config
          swig))
   (inputs
    (list freetype
          gfortran
          libltdl
          lua
          octave
          pango
          perl-xml-dom
          perl-xml-parser
          python-numpy
          qhull
          shapelib
          tcl
          tk
          wxwidgets))
   (home-page "http://plplot.org/")
   (synopsis "Scientific graphics plotting library")
   (description
    "PLplot is a cross-platform software package for creating scientific plots
whose (UTF-8) plot symbols and text.")
   (license license:lgpl2.0))) ; Other terms are in Copyright file

(define-public veusz
  (package
    (name "veusz")
    (version "3.4")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "veusz" version))
       (sha256
        (base32 "0p6cv7ppk2cs8m13wqa527hzybdmd3lmshw331kxpz0wvykv17yd"))))
    (build-system python-build-system)
    (arguments
     `(#:phases
       (modify-phases %standard-phases
         ;; Veusz will append 'PyQt5' to sip_dir by default. That is not how
         ;; the path is defined in Guix, therefore we have to change it.
         (add-after 'unpack 'fix-sip-dir
           (lambda _
             (substitute* "pyqtdistutils.py"
               (("os.path.join\\(sip_dir, 'PyQt5'\\)") "sip_dir"))
             #t))
         ;; Now we have to pass the correct sip_dir to setup.py.
         (replace 'build
           (lambda* (#:key inputs #:allow-other-keys)
             ;; We need to tell setup.py where to locate QtCoremod.sip
             ((@@ (guix build python-build-system) call-setuppy)
              "build_ext"
              (list (string-append "--sip-dir="
                                   (assoc-ref inputs "python-pyqt")
                                   "/share/sip"))
              #t)))
         ;; Ensure that icons are found at runtime.
         (add-after 'install 'wrap-executable
           (lambda* (#:key inputs outputs #:allow-other-keys)
             (let ((out (assoc-ref outputs "out")))
               (wrap-program (string-append out "/bin/veusz")
                 `("QT_PLUGIN_PATH" prefix
                   ,(list (string-append (assoc-ref inputs "qtsvg")
                                         "/lib/qt5/plugins/"))))))))))
    (native-inputs
     `(("pkg-config" ,pkg-config)
       ("qttools" ,qttools)
       ("python-sip" ,python-sip-4)))
    (inputs
     `(("ghostscript" ,ghostscript) ;optional, for EPS/PS output
       ("python-astropy" ,python-astropy)
       ("python-dbus" ,python-dbus)
       ("python-h5py" ,python-h5py) ;optional, for HDF5 data
       ("python-pyqt" ,python-pyqt)
       ("qtbase" ,qtbase-5)
       ("qtsvg" ,qtsvg)))
    (propagated-inputs
     `(("python-numpy" ,python-numpy)))
    (home-page "https://veusz.github.io/")
    (synopsis "Scientific plotting package")
    (description
     "Veusz is a scientific plotting and graphing program with a graphical
user interface, designed to produce publication-ready 2D and 3D plots.  In
addition it can be used as a module in Python for plotting.  It supports
vector and bitmap output, including PDF, Postscript, SVG and EMF.")
    (license license:gpl2+)))
