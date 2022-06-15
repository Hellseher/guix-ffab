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
  #:use-module (gnu packages base)
  #:use-module (gnu packages commencement)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages ncurses)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages pascal)
  #:use-module (gnu packages xorg)
  #:use-module (gnu packages perl)
  #:use-module (guix build-system gnu)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix packages)
  #:use-module ((guix licenses) #:prefix license:))

;; 20220615T224818+0100
(define-public lazarus
  (package
    (name "lazarus")
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
     (list
      #:make-flags
      #~(list "bigide"
              "REQUIRE_PACKAGES+=tachartlazaruspkg"
              (string-append "FPC=" #$fpc "/bin/fpc")
              (string-append "INSTALL_PREFIX=" #$output)
              (string-append "LAZARUS_INSTALL_DIR=" #$output "/share/lazarus")
              (string-append "PP=" #$fpc "/bin/fpc"))
      #:phases
      #~(modify-phases %standard-phases
          (delete 'configure)
          (replace 'build
            (lambda _
              (setenv "LDFLAGS" (string-append "-L" #$glibc "/lib"))
              (invoke "make" "clean" "bigide")
              #t)))))
    (native-inputs
     (list atk
           cairo
           gdk-pixbuf
           glibc
           gtk+
           ld-wrapper
           ld-wrapper
           libx11
           libxi
           pango
           perl
           pkg-config
           xorgproto
           zlib))
    (inputs
     (list fpc))
    (native-search-paths (package-native-search-paths glibc))
    (home-page "https://www.lazarus-ide.org/")
    (synopsis "Free Pascal RAD IDE")
    (description
     "Lazarus is a Delphi compatible cross-platform IDE for Rapid Application
Development.  It has variety of components ready for use and a graphical form
designer to easily create complex graphical user interfaces.")
    (license license:gpl3+)))
