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

(define-module (ffab packages python-check)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages check)
  #:use-module (gnu packages python-build)
  #:use-module (gnu packages python-check)
  #:use-module (gnu packages python-xyz)
  #:use-module (guix build-system python)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages))

(define-public python-assay
  (let ((commit "d61a16e060c50f9c1a97df84ad9960825031915e")
        (revision "1"))
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
        (base32 "0shcbchwcdq1qqv8grfj34ap92mfm6l0hs9q69jb8gshnhsl8p7r"))))
     (build-system python-build-system)
     (home-page "https://github.com/brandon-rhodes/assay")
     (synopsis "Python testing framework")
     (description
      "Simple Python testing framework")
     (license license:expat))))

(define-public python-pytest-mypy
  (package
    (name "python-pytest-mypy")
    (version "0.9.1")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "pytest-mypy" version))
       (sha256
        (base32
         "0p5bd4r4gbwk1h7mpx1jkhdwkckapfz24bp9x5mmqb610ps3pylz"))))
    (build-system python-build-system)
    (arguments
     (list
      #:phases
      #~(modify-phases %standard-phases
          (replace 'check
            (lambda* (#:key tests? #:allow-other-keys)
              (when tests?
                (invoke "pytest" "-vv")))))))
    (native-inputs
     (list python-pexpect
           python-pytest-xdist ;; for pytest -n auto
           python-setuptools-scm))
    (propagated-inputs
     (list python-attrs
           python-filelock
           python-mypy
           python-pytest))
    (home-page "https://github.com/dbader/pytest-mypy")
    (synopsis "Mypy static type checker plugin for Pytest")
    (description "Mypy static type checker plugin for Pytest")
    (license license:expat)))
