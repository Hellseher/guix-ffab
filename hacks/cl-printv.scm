(use-modules (guix packages)
             (guix build-system asdf)
             (guix git-download)
             ((guix licenses) #:prefix license:)
             (gnu packages lisp)
             (gnu packages lisp-xyz))

(define-public sbcl-printv
  (let ((commit "646d31978dbbb460fffb160fd65bb2be9a5a434e")
        (revision "1"))
    (package
      (name "sbcl-printv")
      (version (git-version "0.1.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/danlentz/printv")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "08jvy82abm7qi3wrxh6gvmwg9gy0zzhg4cfqajdwrggbah8mj5a6"))))
      (build-system asdf-build-system/sbcl)
      (home-page "https://github.com/danlentz/printv")
      (synopsis "Common Lisp tracing and debug-logging macro")
      (description
       "@code{PRINTV} is a 'batteries-included' tracing and debug-logging macro.

This package provides 1 system: @code{PRINTV}")
      (license license:asl2.0))))

(define-public ecl-printv
  (sbcl-package->ecl-package sbcl-printv))

(define-public cl-printv
  (sbcl-package->cl-source-package sbcl-printv))

sbcl-printv
