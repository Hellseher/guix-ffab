(define-module (ffab packages python-web)
  #:use-module (ffab packages python-xyz)
  #:use-module (ffab packages python-crypto)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages python-web)
  #:use-module (gnu packages web)
  #:use-module (gnu packages python-check)
  #:use-module (gnu packages check)
  #:use-module (gnu packages python-compression)
  #:use-module (gnu packages databases)
  #:use-module (guix build-system python)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix packages))

(define-public python-pywb
  (package
    (name "python-pywb")
    (version "2.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "pywb" version))
       (sha256
        (base32 "1agsr9hhk77ylc320hfxn7b4jjwnj0ld4dx22dvr65iy187hqkmk"))))
    (build-system python-build-system)
    (arguments
     ;; FIXME: (Sharlatan-20210602T213319+0100): Test failed to pass
     ;;
     ;; Could not find suitable distribution for Requirement.parse('fakeredis<1.0')
     ;;
     ;; current availalbe version in Guix - 1.2.1
     `(#:tests? #f))
    (native-inputs
     `(("python-pytest" ,python-pytest)
       ("python-fakeredis" ,python-fakeredis)
       ("python-pytest-cov" ,python-pytest-cov)))
    (propagated-inputs
     `(("python-babel" ,python-babel)
       ("python-brotli" ,python-brotli)
       ("python-gevent" ,python-gevent)
       ("python-jinja2" ,python-jinja2)
       ("python-portalocker" ,python-portalocker)
       ("python-py3amf" ,python-py3amf)
       ("python-pyyaml" ,python-pyyaml)
       ("python-redis" ,python-redis)
       ("python-requests" ,python-requests)
       ("python-six" ,python-six)
       ("python-surt" ,python-surt)
       ("python-tldextract" ,python-tldextract)
       ("python-warcio" ,python-warcio)
       ("python-webassets" ,python-webassets)
       ("python-webencodings" ,python-webencodings)
       ("python-werkzeug" ,python-werkzeug)
       ("python-wsgiprox" ,python-wsgiprox)
       ("redis" ,redis)))
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
       (method url-fetch)
       (uri (pypi-uri "surt" version))
       (sha256
        (base32 "08271j6fb997nz1i6qjvml2yr2f01szsdg7rxrbzf90zq2v7w5i4"))))
    (build-system python-build-system)
    (arguments
     `(#:tests? #f
       ;; #:phases
    ;;    (modify-phases %standard-phases
    ;;      (replace 'check
    ;;        (lambda _
    ;;          (setenv "PYTHONPATH" (string-append "./build/lib:"
    ;;                                              (getenv "PYTHONPATH")))
    ;;          (invoke "pytest" "-vv" "tests")
    ;;          #t)))
          ))
    (native-inputs
     `(("python-pytest" ,python-pytest)
       ("python-pytest-cov" ,python-pytest-cov)))
    (propagated-inputs
     `(("python-six" ,python-six)
       ("python-tldextract" ,python-tldextract)))
    (home-page "https://github.com/internetarchive/surt")
    (synopsis "Sort-friendly URI Reordering Transform (SURT) python package.")
    (description
     "Sort-friendly URI Reordering Transform (SURT) python package.")
    (license license:agpl3+)))

(define-public python-warcio
  (package
    (name "python-warcio")
    (version "1.7.4")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "warcio" version))
       (sha256
        (base32 "0lga8f8p936if8vj1a0l3dxq4mas6dzj8wq9bgg59inaksnrv271"))))
    (build-system python-build-system)
    (arguments
     ;; FIXME: Test failed to pass
     ;;
     ;; E   ImportError: attempted relative import with no known parent package
     ;;
     `(#:tests? #f))
    (native-inputs
     `(("python-wsgiprox" ,python-wsgiprox)
       ("python-httpbin" ,python-httpbin)
       ("python-pytest" ,python-pytest)
       ("python-pytest-cov" ,python-pytest-cov)))
    (propagated-inputs
     `(("python-six" ,python-six)))
    (home-page "https://github.com/webrecorder/warcio")
    (synopsis "Streaming WARC (and ARC) IO library")
    (description
     "Streaming WARC (and ARC) IO library")
    (license license:asl2.0)))

(define-public python-wsgiprox
  (package
    (name "python-wsgiprox")
    (version "1.5.2")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "wsgiprox" version))
       (sha256
        (base32 "11fsm199pvwbmqx2lccznvws65aam1rqqv0w79gal8hispwgd5rs"))))
    (build-system python-build-system)
    (arguments
     ;; FIXME: Test failed with:
     ;;
     ;; error: unrecognized arguments: --doctest-module test/
     ;;
     `(#:tests? #f))
    (native-inputs
     `(("python-waitress" ,python-waitress)
       ("python-websocket-client" ,python-websocket-client)
       ("python-gevent" ,python-gevent)
       ("python-pytest" ,python-pytest)
       ("python-mock" ,python-mock)
       ("python-pytest-cov" ,python-pytest-cov)))
    (propagated-inputs
     `(("python-certauth" ,python-certauth)
       ("python-six" ,python-six)))
    (home-page "https://github.com/webrecorder/wsgiprox")
    (synopsis "HTTP/S proxy with WebSockets over WSGI")
    (description
     "HTTP/S proxy with WebSockets over WSGI")
    (license license:asl2.0)))
