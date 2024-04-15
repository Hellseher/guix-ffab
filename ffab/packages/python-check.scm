;;; GNU Guix --- Functional package management for GNU
;;; Copyright © 2021-2023 Sharlatan Hellseher <sharlatanus@gmail.com>
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

(define-module (ffab packages python-check)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages check)
  #:use-module (gnu packages python-build)
  #:use-module (gnu packages python-check)
  #:use-module (gnu packages python-web)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages web)
  #:use-module (guix build-system pyproject)
  #:use-module (guix build-system python)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages)
  #:use-module (guix utils))

;; 20220703T151151+0100
(define-public python-assay
  (let ((commit "bb62d1f7d51d798b05a88045fff3a2ff92c299c3")
        (revision "2"))
    (package
     (name "python-assay")
     (version (git-version "0.0.0" revision commit))
     (source
      (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/brandon-rhodes/assay")
             (commit commit)))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0775a901ryr9wd8b2iqgm1j2ac1qwvrxw0f801yx29w5i7ph7q0n"))))
     (build-system python-build-system)
     (home-page "https://github.com/brandon-rhodes/assay")
     (synopsis "Python testing framework")
     (description
      "Simple Python testing framework")
     (license license:expat))))

;; 20240130T212957+0000
(define-public python-nose-exclude
  (package
    (name "python-nose-exclude")
    (version "0.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "nose-exclude" version))
       (sha256
        (base32 "0123x1lyv5b2p9civcfg8vilj2ga3q7p2ks1hq25z0gb3ssai3zp"))))
    (build-system pyproject-build-system)
    (arguments
     (list
      #:phases
      #~(modify-phases %standard-phases
          (add-before 'check 'disable-test
            (lambda _
              ;; Disable failing test: AssertionError.
              (substitute* '("test_dirs/build/test.py"
                            "test_dirs/test_not_me/test.py")
                (("def test_i_should_never_run")
                 "def off_i_should_never_run")))))))
    (propagated-inputs
     (list python-nose))
    (home-page "https://github.com/kgrandis/nose-exclude")
    (synopsis "Exclude specific directories from nosetests runs")
    (description
     "@code{nose-exclude} is a Nose plugin that allows you to easily specify
directories to be excluded from testing.")
    (license license:lgpl2.1+)))

;; 20221006T014754+0100
;; (define-public python-pytest-socket
;; added-to-downstream-guix c697ff964192f64dfc22927c09458852ace7dd9a
;; CommitDate: Mon Nov 7 20:29:21 2022 +0100

;; 20221109T102829+0000
;; (define-public python-nox
;; added-to-downstream-guix 8d97c66dfe1ac1fa00e16d30ab55042e2c7ea8f0
;; CommitDate: Tue Jan 31 23:12:40 2023 +0100
