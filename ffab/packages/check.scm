;;; GNU Guix --- Functional package management for GNU
;;; Copyright © 2022 Sharlatan Hellseher <sharlatanus@gmail.com>
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

(define-module (ffab packages check)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages check)
  #:use-module (gnu packages python-build)
  #:use-module (gnu packages python-check)
  #:use-module (gnu packages python-web)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages web)
  #:use-module (guix build-system python)
  #:use-module (guix build-system pyproject)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix utils)
  #:use-module (guix git-download)
  #:use-module (guix packages))

(define-public python-pytest-asyncio-ffab
  (package
    (name "python-pytest-asyncio-ffab")
    (version "0.19.0")
    (source
     (origin
       (method git-fetch)               ;for tests
       (uri (git-reference
             (url "https://github.com/pytest-dev/pytest-asyncio")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1w1sdb1w1yp7ghgrsfq3jf8jqs04srcnm9rn8qw0ciyj4q0y1j83"))))
    (build-system python-build-system)
    (arguments
     (list #:phases
           #~(modify-phases %standard-phases
               (replace 'build
                 (lambda _
                   (setenv "SETUPTOOLS_SCM_PRETEND_VERSION" #$version)
                   ;; ZIP does not support timestamps before 1980.
                   (setenv "SOURCE_DATE_EPOCH" "315532800")
                   (invoke "python" "-m" "build" "--wheel" "--no-isolation" ".")))
               (replace 'install
                 (lambda _
                   (apply invoke "pip" "--no-cache-dir" "--no-input"
                          "install" "--no-deps" "--prefix" #$output
                          (find-files "dist" "\\.whl$"))))
               (replace 'check
                 (lambda* (#:key tests? #:allow-other-keys)
                   (invoke "pytest" "-vv" "tests"))))))
    (native-inputs
     (list python-async-generator
           python-flaky
           python-hypothesis
           python-pytest
           python-pytest-trio
           python-pypa-build
           python-setuptools-scm))
    (home-page "https://github.com/pytest-dev/pytest-asyncio")
    (synopsis "Pytest support for asyncio")
    (description "Python asyncio code is usually written in the form of
coroutines, which makes it slightly more difficult to test using normal
testing tools.  @code{pytest-asyncio} provides useful fixtures and markers
to make testing async code easier.")
    (license license:asl2.0)))

;; 20230610T212145+0100
(define-public python-pytest-subprocess
  (package
    (name "python-pytest-subprocess")
    (version "1.5.0")
    (source (origin
              (method git-fetch) ;no tests in PyPi archive
              (uri (git-reference
                    (url "https://github.com/aklajnert/pytest-subprocess")
                    (commit version)))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "103nxv37sjvxlwmw87hxsrphkxkryv4dgb65kjjfr4722r37vmxv"))))
    (build-system pyproject-build-system)
    (native-inputs (list python-anyio
                         python-coverage
                         python-docutils
                         python-nox
                         python-pygments
                         python-pytest
                         python-pytest-asyncio
                         python-pytest-rerunfailures))
    (home-page "https://github.com/aklajnert/pytest-subprocess")
    (synopsis "Pytest plugin to fake subprocess")
    (description
     "This package provides a plugin to fake subprocess for pytest.  The plugin
adds the @code{fake_process} fixture (and @code{fp} as an alias).  It can be used
it to register subprocess results so you won't need to rely on the real
processes.  The plugin hooks on the @code{subprocess.Popen()}, which is the base
for other subprocess functions.  That makes the
@code{subprocess.run()},@code{subprocess.call()}, @code{subprocess.check_call()}
and @code{subprocess.check_output()} methods also functional.")
    (license license:expat)))

;; 20221017T223740+0100
;; (define-public python-pytest-7.1
;; added-to-downstream-guix 64b342ab321ddc513464bfcff39357306f32efc7
;; CommitDate: Sat Oct 22 13:50:50 2022 +0200
