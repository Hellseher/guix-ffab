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

(define-module (ffab packages ocaml-xyz)
  #:use-module (gnu packages base)
  #:use-module (gnu packages base)
  #:use-module (gnu packages ocaml)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix build-system dune)
  #:use-module (guix build-system gnu)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages)
  #:use-module ((guix licenses) #:prefix license:))

;; 20210217T224508+0000
;; added-to-downstream-guix ee9c44c76752231ea40f2492304426f204f93a0e
;; CommitDate: Tue Apr 6 23:59:47 2021 +0200
;; (define-public camlidl

;; 20220623T205159+0100
(define-public ocaml-mirage-crypto
  (package
    (name "ocaml-mirage-crypto")
    (version "0.10.6")
    (source
     (origin
       (method url-fetch)
       (uri (string-append "https://github.com/mirage/mirage-crypto/releases/download/v"
                           version
                           "/mirage-crypto-"
                           version
                           ".tbz"))
       (sha256
        (base32 "044lixpd45shfprj4j296qzirrph4z9mafcqarxh1bfw9rx4gmh1"))))
    (build-system dune-build-system)
    (native-inputs
     (list pkg-config ocaml-ounit2))
    (propagated-inputs
     (list dune-configurator ocaml-cstruct ocaml-eqaf))
    (home-page "https://github.com/mirage/mirage-crypto")
    (synopsis "Simple symmetric cryptography for the modern age")
    (description
     "Mirage-crypto provides symmetric ciphers (DES, AES, RC4, ChaCha20/Poly1305), and
hashes (MD5, SHA-1, SHA-2).")
    (license license:isc)))

;; 20220623T210354+0100
(define-public ocaml-eqaf
  (package
    (name "ocaml-eqaf")
    (version "0.8")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://github.com/mirage/eqaf/releases/download/v0.8/eqaf-v0.8.tbz")
       (sha256
        (base32 "0xgq3i3vkv9rzbbrg9f1gs9x6cyjdggqdr027sadfdvl21ha2i8i"))))
    (build-system dune-build-system)
    (propagated-inputs (list ocaml-cstruct))
    (native-inputs (list ocaml-base64 ocaml-alcotest ocaml-crowbar))
    (home-page "https://github.com/mirage/eqaf")
    (synopsis "Constant-time equal function on string")
    (description
     "This package provides an equal function on string in constant-time to avoid
timing-attack with crypto stuff.")
    (license license:expat)))
