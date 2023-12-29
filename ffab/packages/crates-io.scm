;;; GNU Guix --- Functional package management for GNU
;;; Copyright © 2023 Sharlatan Hellseher <sharlatanus@gmail.com>
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

(define-module (ffab packages crates-io)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages crates-io)
  #:use-module (gnu packages rust)
  #:use-module (gnu packages)
  #:use-module (guix build-system cargo)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix packages)
  #:use-module (guix utils)
  #:use-module (srfi srfi-1))

(define-public rust-iso8601-0.4
  (package
    (inherit rust-iso8601-0.3)
    (name "rust-iso8601")
    (version "0.4.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "iso8601" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
         (base32
          "15nfg6d4qlniw4gk7039s5y07lzgr1dp9snsw63lsxarnyz4zfg5"))))
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-nom" ,rust-nom-7))))))
