(use-modules (guix packages)
             ((guix licenses) #:prefix license:)
             (guix download)
             (guix build-system python)
             (gnu packages check)
             (gnu packages enchant)
             (gnu packages databases)
             (gnu packages python)
             (gnu packages python-xyz)
             (gnu packages python-web)
             (gnu packages python-check)
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
    ;; There is mo any license provided 28/04/2020 #Rλatan
    (license #f)))

(define-public python-pytest-translations
  (package
    (name "python-pytest-translations")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "pytest-translations" version))
       (sha256
        (base32
         "025wh3rqlv82w7j5632wng6524np9w4a4vj803jcbk26hzlsanlg"))))
    (build-system python-build-system)
    (arguments
     ;; There are mo tests provided 28/04/2020 #Rλatan
     `(#:tests? #f))
    (propagated-inputs
     `(("python-polib" ,python-polib)
       ("python-pyenchant" ,python-pyenchant)))
    (native-inputs
     `(("python-pbr" ,python-pbr)))
    (home-page
     "https://github.com/Thermondo/pytest-translations")
    (synopsis "Test your translation files.")
    (description "Test your translation files.")
    (license #f)))

(define-public python-flask-mail
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
    (license license:bsd-3)))

(define-public python-flask-babelex
  (package
    (name "python-flask-babelex")
    (version "0.9.4")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "Flask-BabelEx" version))
       (sha256
        (base32
         "09yfr8hlwvpgvq8kp1y7qbnnl0q28hi0348bv199ssiqx779r99r"))))
    (build-system python-build-system)
    (propagated-inputs
     `(("python-babel" ,python-babel)
       ("python-flask" ,python-flask)
       ("python-jinja2" ,python-jinja2)
       ("python-speaklater" ,python-speaklater)))
    (home-page
     "http://github.com/mrjoes/flask-babelex")
    (synopsis
     "Adds i18n/l10n support to Flask applications")
    (description
     "Adds i18n/l10n support to Flask applications")
    (license license:bsd-3)))

(package
  (name "python-flask-security")
  (version "3.0.0")
  (source
   (origin
     (method url-fetch)
     (uri (pypi-uri "Flask-Security" version))
     (sha256
      (base32
       "0ck4ybpppka56cqv0s26h1jjq6sqvwmqfm85ylq9zy28b9gsl7fn"))))
  (build-system python-build-system)
  ;; (arguments
  ;;  '(#:tests? #f))
  (propagated-inputs
   `(("python-flask" ,python-flask)
     ("python-flask-babelex" ,python-flask-babelex)
     ("python-flask-login" ,python-flask-login)
     ("python-flask-mail" ,python-flask-mail)
     ("python-flask-principal" ,python-flask-principal)
     ("python-flask-wtf" ,python-flask-wtf)
     ("python-itsdangerous" ,python-itsdangerous)
     ("python-passlib" ,python-passlib)))
  (native-inputs
   `(("python-bcrypt" ,python-bcrypt)
     ("python-check-manifest" ,python-check-manifest)
     ("python-coverage" ,python-coverage)
     ("python-flask-babel" ,python-flask-babel)
     ("python-flask-sqlalchemy" ,python-flask-sqlalchemy)
     ("python-isort" ,python-isort)
     ("python-mock" ,python-mock)
     ("python-pydocstyle" ,python-pydocstyle)
     ("python-pytest" ,python-pytest)
     ("python-pytest-runner" ,python-pytest-runner)
     ;; ("python-flask-cli" ,python-flask-cli)
     ;; ("python-flask-mongoengine" ,python-flask-mongoengine)
     ;; ("python-flask-peewee" ,python-flask-peewee)
     ;; ("python-mongoengine" ,python-mongoengine)
     ;; ("python-pony" ,python-pony)
     ("python-pytest-cache" ,python-pytest-cache)
     ("python-pytest-cov" ,python-pytest-cov)
     ("python-pytest-flake8" ,python-pytest-flake8)
     ("python-pytest-flakes" ,python-pytest-flakes)
     ("python-pytest-pep8" ,python-pytest-pep8)
     ("python-pytest-translations" ,python-pytest-translations)
     ("python-sqlalchemy" ,python-sqlalchemy)))
  (home-page
   "https://github.com/mattupstate/flask-security")
  (synopsis "Simple security for Flask apps.")
  (description "Simple security for Flask apps.")
  (license license:expat))
