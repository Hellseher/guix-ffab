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

(define-module (ffab packages python-web)
  #:use-module (ffab packages databases)
  #:use-module (ffab packages python-check)
  #:use-module (ffab packages python-xyz)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages check)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages databases)
  #:use-module (gnu packages python-build)
  #:use-module (gnu packages python-check)
  #:use-module (gnu packages python-compression)
  #:use-module (gnu packages python-crypto)
  #:use-module (gnu packages python-web)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages web)
  #:use-module (gnu packages xml)
  #:use-module (guix build-system python)
  #:use-module (guix build-system pyproject)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages))

;; 20240109T195650+0000
(define-public python-awsipranges
  (package
    (name "python-awsipranges")
    (version "0.3.3")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "awsipranges" version))
       (sha256
        (base32 "1h72k5dw58sjhavagrklssnbv4kc5f0ysfsibg4664fwm4i3y2sg"))))
    (build-system pyproject-build-system)
    (arguments
     (list
      ;; Tests require outbound access to
      ;; https://ip-ranges.amazonaws.com/ip-ranges.json
      #:tests? #f))
    (native-inputs
     (list python-poetry-core python-pytest))
    (home-page "https://aws-samples.github.io/awsipranges/")
    (synopsis "Work with the AWS IP address ranges in native Python")
    (description "Work with the AWS IP address ranges in native Python published in
https://ip-ranges.amazonaws.com/ip-ranges.json.

Features
@itemize
@item Work with the AWS IP prefixes as a simple AWSIPPrefixes collection

@item Quickly check if an IP address, interface, or network is contained in the
AWS IP address ranges

@item Get the AWS IP prefix that contains an IP address, interface, or network

@item See what services are served from an IP prefix

@item Filter the AWS IP prefixes by region, network border group, service, and
IP prefix version

@item Use the AWS prefix data in your app or automation scripts in the format
required by your infrastructure

@item Easily validate the TLS certificate presented by the IP ranges server

@item awsipranges has no third-party dependencies and is compatible with CPython
v3.7+

@end itemize")
    (license license:asl2.0)))

;; 20220615T224859+0100
(define python-pywb
  (package
    (name "python-pywb")
    (version "2.6.8")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "pywb" version))
       (sha256
        (base32 "0ddiffdrjpzaand7z5igmws1z17g978h1146r8yq5cmi56l97shv"))))
    (build-system python-build-system)
    (arguments
     (list
      #:phases
      #~(modify-phases %standard-phases
          (replace 'check
            (lambda* (#:key tests? #:allow-other-keys)
              (when tests?
                (invoke "py.test" "-v" "--cov" "pywb" "tests")))))))
    (native-inputs
     (list python-pytest
           python-urllib3
           python-webtest))
    (propagated-inputs
     (list python-babel
           python-brotli
           python-fakeredis-0.16.0
           #;python-brotlipy ; Not packed
           #;python-dateutil ; Not packed
           python-fakeredis
           python-gevent
           python-jinja2
           python-markupsafe
           python-portalocker
           python-py3amf
           python-pyyaml
           python-redis-2.10.6
           python-requests
           python-six
           python-surt
           python-tldextract
           python-ua-parser
           python-warcio
           python-webassets
           python-webencodings
           python-werkzeug
           python-wsgiprox))
    (home-page "https://github.com/webrecorder/pywb")
    (synopsis "Web Archiving Toolkit for replay and recording of web archives")
    (description
     "@code{pywb} is a Python (2 and 3) web archiving toolkit for replaying web
archives large and small as accurately as possible.")
    (license license:gpl3)))

(define-public python-surt
  (package
    (name "python-surt")
    (version "0.3.1")
    (source
     (origin
       ;; The source distributed on PyPI doesn't include tests.
       ;; Release is not tagged
       ;; https://github.com/internetarchive/surt/issues/26
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/internetarchive/surt")
             (commit "6934c321b3e2f66af9c001d882475949f00570c5")))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0gkgf04glncc7wyxlxfzqrqwf0qgyp33sib36l05vngaayj0s8x5"))))
    (build-system python-build-system)
    (arguments
     (list
      #:phases
      #~(modify-phases %standard-phases
          (replace 'check
            (lambda* (#:key tests? #:allow-other-keys)
              (when tests?
                (invoke "py.test" "-v" "--cov" "surt" "tests")))))))
    (native-inputs
     (list python-pytest
           python-pytest-cov))
    (propagated-inputs
     (list python-six
           python-tldextract))
    (home-page "https://github.com/internetarchive/surt")
    (synopsis "Sort-friendly URI Reordering Transform (SURT) python package")
    (description
     "Sort-friendly URI Reordering Transform (SURT) python package.")
    (license license:agpl3+)))
