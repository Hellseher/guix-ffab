(use-modules (guix packages)
             (guix build-system python)
             (guix download)
             (gnu packages python-xyz)
             ((guix licenses) #:prefix license:))

(define-public python-jplephem
  (package
    (name "python-jplephem")
    (version "2.15")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "jplephem" version))
       (sha256
        (base32 "1ca3dswsslij79qg6dcijjz4l0fj6nzmxld8z93v45ahlkhps0g0"))))
    (build-system python-build-system)
    (arguments
     `(#:phases
       (modify-phases %standard-phases
         (replace 'check
           (lambda* (#:key outputs #:allow-other-keys)
             (let ((out (assoc-ref outputs "out")))
               (setenv "PYTHONPATH"
                       (string-append "./build/lib:"
                                      (getenv "PYTHONPATH")))
               (setenv "PATH" (string-append out "/bin:"
                                             (getenv "PATH")))
               (invoke "python" "-m" "unittest" "discover" "-s" "test")))))))
    (inputs
     `(("python-numpy" ,python-numpy)))
    (home-page "https://github.com/brandon-rhodes/python-jplephem")
    (synopsis "Python version of NASA DE4xx ephemerides")
    (description
     "Use a JPL ephemeris to predict planet positions.")
    (license license:expat)))

python-jplephem
