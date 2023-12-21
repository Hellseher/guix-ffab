;;; GNU Guix --- Functional package management for GNU
;;; Copyright © 2023 Sharlatan Hellseher <sharlatanus@gmail.com>
;;;
;;; This file is NOT part of GNU Guix.
;;;
;;; GNU Guix is free software; you can redistribute it and/or modify it
;;; under the terms of the GNU General Public License as published by
;;; the Free Software Foundation; either version 3 of the License, or (at
;;; your option) any later version.
;;;
;;; GNU Guix is distributed in the hope that it will be useful, but
;;; WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;; GNU General Public License for more details.
;;;
;;; You should have received a copy of the GNU General Public License
;;; along with GNU Guix.  If not, see <http://www.gnu.org/licenses/>.

(define-module (ffab packages multiprecision)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix build-system gnu)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix packages)
  #:use-module (guix utils)
  #:use-module (gnu packages)
  #:use-module (gnu packages autotools)
  #:use-module (gnu packages gcc))

(define-public mpfun20-fort
  (package
    (name "mpfun20-fort")
    (version "31")
    (source
     (origin
       (method url-fetch)
       (uri (string-append
             "https://www.davidhbailey.com/dhbsoftware/mpfun20-fort-v"
             version ".tar.gz"))
       (sha256
        (base32 "0a316xs8b506fw7093jhgy8n9cgi870zvlqjl7pqh7sf3082h0kd"))))
    (build-system gnu-build-system)
    (native-inputs (list automake autoconf gfortran))
    (home-page "https://www.davidhbailey.com/dhbsoftware/")
    (synopsis "Thread-safe arbitrary precision package with special functions.")
    (description
     "This package permits one to perform floating-point computations (real and
complex) to arbitrarily high numeric precision, by making only relatively minor
changes to existing Fortran-90 programs (mostly changes to type statements).  All
basic arithmetic operations and transcendental functions are supported, together
with numerous special functions.")
    (license license:bsd-3)))
