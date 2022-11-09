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

(define-module (ffab packages sphinx)
  #:use-module (ffab packages python-xyz)
  #:use-module (gnu packages check)
  #:use-module (gnu packages sphinx)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages python-build)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix build-system pyproject)
  #:use-module (guix build-system python)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages))

;; 20221108T115630+0000
(define-public python-sphinx-automodapi
  (package
    (name "python-sphinx-automodapi")
    (version "0.14.1")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "sphinx-automodapi" version))
       (sha256
        (base32 "1jdvfpgzws8vdqhb2zayy8aynx98840nrpvmvgk7a64hwbww1yd2"))))
    (build-system pyproject-build-system)
    (arguments
     (list
      ;; NOTE: (Sharlatan-20221108T120005+0000): Tests require Internet acces.
      #:tests? #f))
    (propagated-inputs (list python-sphinx))
    (native-inputs
     (list python-codecov
           python-coverage
           python-cython
           python-pytest
           python-pytest-cov))
    (home-page "https://github.com/astropy/sphinx-automodapi")
    (synopsis "Sphinx extension for auto-generating API documentation for entire modules")
    (description
     "This is a Sphinx extension to automatically generate API pages for whole
modules.  It was originally developed for the Astropy project but is now
available as a standalone package since it can be used for any other package.
The documentation can be found on
@url{https://sphinx-automodapi.readthedocs.io/en/latest/, ReadTheDocs}")
    (license license:bsd-3)))

;; 20221109T100750+0000
(define-public python-sphinx-changelog
  (package
    (name "python-sphinx-changelog")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "sphinx_changelog" version))
       (sha256
        (base32 "1hllh2k5lp8nb6386q8pax60pa3303qmdqd1kg6ynh0a6sljac56"))))
    (build-system python-build-system)
    (arguments (list #:tests? #f)) ;; No tests
    (propagated-inputs (list python-sphinx python-towncrier))
    (native-inputs (list python-setuptools-scm))
    (home-page "https://github.com/OpenAstronomy/sphinx-changelog")
    (synopsis "Changelog renderer for sphinx")
    (description
     "This package provides a sphinx extension designed to facilitate rendering
changelogs into your sphinx documentation.  Currently this supports
@code{towncrier} and inclusion of a @code{ReST} changelog file.")
    (license license:bsd-3)))

;; TODO: (Sharlatan-20221109T232349+0000): This package contains bundeled
;; Bootstrap /sphinx_bootstrap_theme/bootstrap/static/
;;
;; 20221109T232135+0000
(define-public python-sphinx-bootstrap-theme
  (package
    (name "python-sphinx-bootstrap-theme")
    (version "0.8.1")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "sphinx-bootstrap-theme" version))
       (sha256
        (base32 "1pw0svqsd3041mzfgsc7fwaxjjzzjp7xwvpp940xvnj8airkngk8"))))
    (build-system python-build-system)
    (home-page "https://ryan-roemer.github.io/sphinx-bootstrap-theme/README.html")
    (synopsis "Sphinx Bootstrap Theme.")
    (description "This Sphinx theme integrates the Bootstrap CSS / JavaScript framework with
various layout options, hierarchical menu navigation, and mobile-friendly
responsive design.  It is configurable, extensible, and can use any number of
different Bootswatch CSS themes")
    (license license:expat)))
