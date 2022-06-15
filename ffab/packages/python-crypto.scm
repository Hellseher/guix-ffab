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

(define-module (ffab packages python-crypto)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages python-check)
  #:use-module (gnu packages python-crypto)
  #:use-module (gnu packages check)
  #:use-module (guix build-system python)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix packages))

(define-public python-certauth
  (package
    (name "python-certauth")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "certauth" version))
       (sha256
        (base32
         "1yxqfb5131wahjyw9pxz03bq476rcfx62s6k53xx4cqbzzgdaqkq"))))
    (build-system python-build-system)
    (native-inputs
     `(("python-pytest" ,python-pytest)
       ("python-pytest-cov" ,python-pytest-cov)))
    (propagated-inputs
     `(("python-pyopenssl" ,python-pyopenssl)
       ("python-tldextract" ,python-tldextract)))
    (home-page "https://github.com/ikreymer/certauth")
    (synopsis "Simple Certificate Authority for MITM proxies")
    (description
     "This package provides a small library, built on top of pyOpenSSL, which
allows for creating a custom certificate authority certificate, and genereating
on-demand dynamic host certs using that CA certificate.")
    (license license:expat)))
