(define-module (ffab packages python-xyz)
  #:use-module (ffab packages python-check)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages python-compression)
  #:use-module (gnu packages xml)
  #:use-module (gnu packages check)
  #:use-module (gnu packages python-check)
  #:use-module (gnu packages sphinx)
  #:use-module (gnu packages databases)
  #:use-module (guix build-system python)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix packages))

(define-public python-portalocker
  (package
    (name "python-portalocker")
    (version "2.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "portalocker" version))
       (sha256
        (base32 "0k08c0qg21mwz3iqbd20ab22nq705q7cal4a1qr8qnd6ga03v4af"))))
    (build-system python-build-system)
    (arguments
     ;; FIXME: tests failed to pass with `python-pytest' and `python-pytest-6'
     ;;
     ;; Could not find suitable distribution for Requirement.parse('pytest>=5.4.1')
     ;;
     `(#:tests? #f))
    (native-inputs
     `(("python-pytest" ,python-pytest)
       ("python-pytest-cov" ,python-pytest-cov)
       ("python-pytest-flake8" ,python-pytest-flake8)
       ("python-pytest-mypy" ,python-pytest-mypy)
       ("python-redis" ,python-redis)
       ("python-sphinx" ,python-sphinx)))
    (home-page
     "https://github.com/WoLpH/portalocker")
    (synopsis
     "Wraps the portalocker recipe for easy usage")
    (description
     "Extended version of portalocker to lock files in Python using the with
statement.")
    (license license:psfl)))

(define-public python-py3amf
  (package
    (name "python-py3amf")
    (version "0.8.10")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "Py3AMF" version))
       (sha256
        (base32 "0b4m94qjncl4rk6ig329vfk60dbb0b1wvs2lwr8m7bwxl0s2vb3d"))))
    (build-system python-build-system)
    (propagated-inputs
     `(("python-defusedxml" ,python-defusedxml)))
    (home-page "https://github.com/StdCarrot/Py3AMF")
    (synopsis "Action Message Format support for Python")
    (description "AMF support for Python")
    (license license:expat)))
