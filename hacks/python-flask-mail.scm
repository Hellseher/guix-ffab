
(use-modules (guix packages)
             ((guix licenses) #:prefix license:)
             (guix download)
             (guix build-system python)
             (gnu packages check)
             (gnu packages databases)
             (gnu packages python)
             (gnu packages python-xyz)
             (gnu packages python-web)
             (gnu packages python-crypto))

(define-public python-speaklater
(package
  (name "python-speaklater")
  (version "1.3")
  (source
    (origin
      (method url-fetch)
      (uri (pypi-uri "speaklater" version))
      (sha256
        (base32
          "1ab5dbfzzgz6cnz4xlwx79gz83id4bhiw67k1cgqrlzfs0va7zjr"))))
  (build-system python-build-system)
  (arguments
  ;; There are mo tests provided 28/04/2020 #Rλatan
   `(#:tests? #f))
  (home-page
    "http://github.com/mitsuhiko/speaklater")
  (synopsis
    "implements a lazy string for python useful for use with gettext")
  (description
    "implements a lazy string for python useful for use with gettext")
  (license #f)))

(package
  (name "python-flask-mail")
  (version "0.9.1")
  (source
    (origin
      (method url-fetch)
      (uri (pypi-uri "Flask-Mail" version))
      (sha256
        (base32
          "0hazjc351s3gfbhk975j8k65cg4gf31yq404yfy0gx0bjjdfpr92"))))
  (build-system python-build-system)
  (propagated-inputs
    `(("python-blinker" ,python-blinker)
      ("python-nose" ,python-nose)
      ("python-flask" ,python-flask)))
  (native-inputs
   `(("python-mock" ,python-mock)
     ("python-speaklater" ,python-speaklater)))
  (home-page
    "https://github.com/rduplain/flask-mail")
  (synopsis "Flask extension for sending email")
  (description "Flask extension for sending email")
  (license license:bsd-3))
