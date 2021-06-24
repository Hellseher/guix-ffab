(define-module (ffab packages python-check)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages check)
  #:use-module (gnu packages python-build)
  #:use-module (gnu packages python-check)
  #:use-module (gnu packages python-xyz)
  #:use-module (guix build-system python)
  #:use-module (guix download)
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
    (version "0.8.1")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "pytest-mypy" version))
       (sha256
        (base32 "049v7y4zv2l0ymj03casr5fad8hm89lvvhx1rd7ha7dzlhimg98z"))))
    (build-system python-build-system)
    (native-inputs
     `(("python-setuptools-scm" ,python-setuptools-scm/next)))
    (propagated-inputs
     `(("python-attrs" ,python-attrs)
       ("python-filelock" ,python-filelock)
       ("python-mypy" ,python-mypy)
       ("python-pytest" ,python-pytest)))
    (home-page "https://github.com/dbader/pytest-mypy")
    (synopsis "Mypy static type checker plugin for Pytest")
    (description
     "Mypy static type checker plugin for Pytest")
    (license license:expat)))
