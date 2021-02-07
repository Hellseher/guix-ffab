(use-modules (guix packages)
             (guix build-system asdf)
             (guix git-download)
             ((guix licenses) #:prefix license:)
             (gnu packages lisp)
             (gnu packages lisp-xyz))

(define-public sbcl-parse-float
  (let ((commit "3074765101e41222b6b624a66aaf1e6416379f9c")
        (revision "2"))
    (package
      (name "sbcl-parse-float")
      (version (git-version "0.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/soemraws/parse-float")
               (commit commit)))
         (sha256
          (base32 "0jd2spawc3v8vzqf8ky4cngl45jm65fhkrdf20mf6dcbn3mzpkmr"))
         (file-name (git-file-name "proc-parse" version))))
      (build-system asdf-build-system/sbcl)
      (arguments
       ;; FIXME: https://github.com/soemraws/parse-float/issues/12
       `(#:asd-systems '("parse-float" "parse-float-tests")))
      (native-inputs
       `(("lisp-unit" ,sbcl-lisp-unit)))
      (inputs
       `(("alexandria" ,sbcl-alexandria)
         ("babel" ,sbcl-babel)))
      (home-page "https://github.com/soemraws/parse-float")
      (synopsis "Parse a floating point value from a string in Common Lisp")
      (description
       "This package exports the following function to parse floating-point
values from a string in Common Lisp.")
      (license license:public-domain))))

sbcl-parse-float
