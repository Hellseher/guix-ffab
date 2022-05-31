;;; GNU Guix --- Functional package management for GNU
;;; Copyright © 2021-2022 Sharlatan Hellseher <sharlatanus@gmail.com>
;;;
;;; This file is NOT part of GNU Guix.
;;;
;;; This program is free software: you can redistribute it and/or modify
;;; it under the terms of the GNU General Public License as published by
;;; the Free Software Foundation, either version 3 of the License, or
;;; (at your option) any later version.
;;;
;;; This program is distributed in the hope that it will be useful,
;;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;; GNU General Public License for more details.
;;;
;;; You should have received a copy of the GNU General Public License
;;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

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
  #:use-module (guix gexp)
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
        (base32
         "0fn9j251zv9pwlqy30yv4flwcd0cbyxd1nn388n1k158jycw2i91"))
       (file-name (git-file-name name version))))
    (build-system cmake-build-system)
    (arguments
     (list
      #:configure-flags
      #~(list
         "-DBUILD_TEST=ON"
         (string-append "-DCMAKE_INSTALL_LIBDIR=" #$output "/lib")
         (string-append "-DCMAKE_INSTALL_PREFIX=" #$output))))
    (native-inputs
     (list perl
           perl-xml-dom
           perl-xml-parser
           pkg-config
           ;python-wrapper
           swig))
    (inputs
     (list freetype
           camlidl
           gfortran
           libltdl
           lua
           ocaml
           octave
           pango
           python-numpy
           python-wrapper
           qhull
           shapelib
           tcl
           tk
           wxwidgets))
    (home-page "http://plplot.org/")
    (synopsis "Scientific graphics plotting library")
    (description
     "PLplot is a cross-platform software package for creating scientific plots
whose (UTF-8) plot symbols and text.

 The PLplot core library can be used to create standard x-y plots, semi-log
plots, log-log plots, contour plots, 3D surface plots, mesh plots, bar charts
and pie charts.  Multiple graphs (of the same or different sizes) may be placed
on a single page, and multiple pages are allowed for those device formats that
support them.

PLplot has core library support for plot symbols and text specified by the user
in the UTF-8 encoding of Unicode.  This means for our many Unicode-aware devices
that plot symbols and text are only limited by the collection of glyphs normally
available via installed system fonts.  Furthermore, a large subset of our
Unicode-aware devices also support complex text layout (CTL) languages such as
Arabic, Hebrew, and Indic and Indic-derived CTL scripts such as Devanagari,
Thai, Lao, and Tibetan.  Thus, for these PLplot devices essentially any language
that is supported by Unicode and installed system fonts can be used to label
plots.")
    (license license:lgpl2.0))) ; Other terms are in Copyright file
