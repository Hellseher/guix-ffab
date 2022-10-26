;;; GNU Guix --- Functional package management for GNU
;;; Copyright © 2022 Sharlatan Hellseher <sharlatanus@gmail.com>
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

(define-module (ffab packages pascal)
  #:use-module (gnu packages autotools)
  #:use-module (gnu packages base)
  #:use-module (gnu packages commencement)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages ncurses)
  #:use-module (gnu packages pascal)
  #:use-module (gnu packages perl)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages xorg)
  #:use-module (guix build-system gnu)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix packages)
  #:use-module ((guix licenses) #:prefix license:))

;; 20220615T224818+0100
(define-public lazarus
  (package
    (name "lazarus")
    (version "2.2.4")
    (source (origin
              (method url-fetch)
              ;; Mirror: ftp://ftp.freepascal.org/pub/lazarus/releases/
              (uri (string-append
                    "mirror://sourceforge/lazarus/Lazarus%20Zip%20_%20GZip/Lazarus%20"
                    version "/lazarus-" version "-0.tar.gz"))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0k62bgy6cg95hwis7sqbsjmvdgx8capsml8qa9a6pxl1h4hr6h5q"))))
    (build-system gnu-build-system)
    (supported-systems '("i686-linux" "x86_64-linux"))
    (arguments
     (list #:parallel-build? #f
           #:make-flags #~(list "FPC=fpc"
                                "PP=fpc"
                                "REQUIRE_PACKAGES+=tachartlazaruspkg"
                                (string-append "INSTALL_PREFIX=" #$output)
                                (string-append "LAZARUS_INSTALL_DIR=" #$output "/share/lazarus")
                                (string-append "LDFLAGS=-lX11"
                                               ",-lXext"
                                               ",-lXi"
                                               ",-latk-1.0"
                                               ",-lc"
                                               ",-lcairo"
                                               ",-lgcc_s"
                                               ",-lgdk-x11-2.0"
                                               ",-lgdk_pixbuf-2.0"
                                               ",-lglib-2.0"
                                               ",-lgtk-x11-2.0"
                                               ",-lpango-1.0")
                                "bigide")
           #:phases #~(modify-phases %standard-phases
                        (add-after 'unpack 'set-ld-library-path
                          (lambda _
                            (format #t "environment variable `LD_LIBRARY_PATH' set to `~a'~%"
                                    (getenv "LD_LIBRARY_PATH"))
                            (setenv "LD_LIBRARY_PATH" (getenv "LIBRARY_PATH"))
                            (format #t "environment variable `LD_LIBRARY_PATH' set to `~a'~%"
                                    (getenv "LD_LIBRARY_PATH"))
                            (setenv "LD_DEBUG" "all")
                            (format #t "environment variable `LD_DEBUG' set to `~a'~%"
                                    (getenv "LD_DEBUG"))
                            #;(invoke "false")))
                        (delete 'configure)
                        #;(replace 'build
                          (lambda _
                            (invoke "make" "clean" "bigide"))))))
    (native-inputs (list atk
                         cairo
                         gdk-pixbuf
                         glibc
                         gtk+
                         ld-wrapper
                         libtool
                         libx11
                         libxi
                         pango
                         perl
                         pkg-config
                         pkg-config
                         xorgproto
                         zlib))
    (inputs (list fpc))
    (native-search-paths
     (package-native-search-paths glibc))
    (home-page "https://www.lazarus-ide.org/")
    (synopsis "Free Pascal RAD IDE")
    (description
     "Lazarus is a Delphi compatible cross-platform IDE for Rapid Application
Development.  It has variety of components ready for use and a graphical form
designer to easily create complex graphical user interfaces.")
    (license license:gpl3+)))
