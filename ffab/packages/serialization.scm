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

(define-module (ffab packages serialization)
  #:use-module (ffab packages check)
  #:use-module (ffab packages python-check)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages python-build)
  #:use-module (gnu packages serialization)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix utils)
  #:use-module (guix build utils)
  #:use-module (guix packages))

;; 20230610T205532+0100
;; (define-public python-msgspec
;; addedp-to-downstram-guix 41e8726c8924e9f5b79a9f44fad94ab5586bfc50
;; CommitDate: Sun Jun 25 18:20:43 2023 -0300

;; For python-gallia
;; 20230610T225100+0100
(define-public python-msgspec-ffab
  (package
    (inherit python-msgspec)
    (name "python-msgspec")
    (version "0.12.0")
    (source (origin
              ;; There are no tests in the PyPI tarball.
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/jcrist/msgspec")
                    (commit version)))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1qn8vdz97mzcixc14ccyybf6dsjq06imgjifj5bl95246hmpl01d"))))
    (arguments
     (list
      #:test-flags #~(list "-k" "not test_mypy")
      #:phases
      #~(modify-phases %standard-phases
          (add-before 'build 'pretend-version
            ;; The version string is usually derived via setuptools-scm, but
            ;; without the git metadata available, the version string is set to
            ;; '0+unknown'.
            (lambda _
              (setenv "SETUPTOOLS_SCM_PRETEND_VERSION" #$version))))))))
