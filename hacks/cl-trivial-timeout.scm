(use-modules (guix packages)
             (guix build-system asdf)
             (guix git-download)
             ((guix licenses) #:prefix license:)
             (gnu packages lisp)
             (gnu packages lisp-xyz))

(define-public sbcl-trivial-timeout
  (let ((commit "feb869357f40f5e109570fb40abad215fb370c6c")
        (revision "1"))
    (package
      (name "sbcl-trivial-timeout")
      (version (git-version "0.1.5" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/gwkkwg/trivial-timeout/")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "1kninxwvvih9nhh7a9y8lfgi7pdr76675y1clw4ss17vz8fbim5p"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       ;; NOTE: (Sharlatan-20210202T231437+0000): Due to the age of this library
       ;; tests use some deprecated functionality and keep failing.
       `(#:tests? #f))
      (home-page "https://github.com/gwkkwg/trivial-timeout/")
      (synopsis "OS and Implementation independent access to timeouts")
      (description
       "Portable and possibly dangerous timeout library for Common Lisp.

This package provides 1 system: @code{TRIVIAL-TIMEOUT}")
      (license license:expat))))

(define-public ecl-trivial-timeout
  (sbcl-package->ecl-package sbcl-trivial-timeout))

(define-public cl-trivial-timeout
  (sbcl-package->cl-source-package sbcl-trivial-timeout))

sbcl-trivial-timeout
