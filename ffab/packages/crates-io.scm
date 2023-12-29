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

(define-public rust-heck-0.4
  (package
    (name "rust-heck")
    (version "0.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "heck" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1a7mqsnycv5z4z5vnv1k34548jzmc0ajic7c1j8jsaspnhw5ql4m"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-unicode-segmentation" ,rust-unicode-segmentation-1))))
    (home-page "https://github.com/withoutboats/heck")
    (synopsis "Case conversion library")
    (description
     "This library exists to provide case conversion between common cases like
CamelCase and snake_case.  It is intended to be unicode aware, internally
consistent, and reasonably well performing.")
    (license (list license:asl2.0
                   license:expat))))

(define-public rust-strum-macros-0.25
  (package
    (inherit rust-strum-macros-0.24)
    (name "rust-strum-macros")
    (version "0.25.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "strum_macros" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "184y62g474zqb2f7n16x3ghvlyjbh50viw32p9w9l5lwmjlizp13"))))
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-heck" ,rust-heck-0.4)
        ("rust-proc-macro2" ,rust-proc-macro2-1)
        ("rust-quote" ,rust-quote-1)
        ("rust-rustversion" ,rust-rustversion-1)
        ("rust-syn" ,rust-syn-2))))))
