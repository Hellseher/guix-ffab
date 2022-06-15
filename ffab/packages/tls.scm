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

(define-module (ffab packages tls)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages xml)
  #:use-module (guix build-system cmake)
  #:use-module (guix build-system gnu)
  #:use-module (guix build-system python)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (gnu packages autotools)
  #:use-module (guix packages))

(define-public wolfssl
  (package
    (name "wolfssl")
    (version "5.3.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/wolfSSL/wolfssl")
             (commit (string-append "v" version "-stable"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0q1w90jl9jszply1005rxkm6gq1yrgy3a6j6m1jqh3i0c2nq1mra"))))
    (build-system gnu-build-system)
    (arguments
     (list
      #:configure-flags
      #~(list "--enable-reproducible-build")))
    (native-inputs
     (list autoconf
           automake
           libtool))
    (synopsis "SSL/TLS implementation")
    (description "The wolfSSL embedded SSL library (formerly CyaSSL) is an
SSL/TLS library written in ANSI C and targeted for embedded, RTOS, and
resource-constrained environments - primarily because of its small size, speed,
and feature set.  wolfSSL supports industry standards up to the current TLS 1.3
and DTLS 1.2, is up to 20 times smaller than OpenSSL, and offers progressive
ciphers such as ChaCha20, Curve25519, NTRU, and Blake2b.")
    (home-page "https://www.wolfssl.com/")
    (license license:gpl2+))) ; Audit
