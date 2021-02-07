(use-modules (guix packages)
             (guix build-system asdf)
             (guix git-download)
             ((guix licenses) #:prefix license:)
             (gnu packages lisp)
             (gnu packages lisp-xyz))

(define-public sbcl-origin
  (let ((commit "d646134302456408d6d43580bb05299f1695ab8e")
        (revision "1"))
    (package
      (name "sbcl-origin")
      (version (git-version "0.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://git.mfiano.net/mfiano/origin")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "1n9aszaif3yh8prs5r8v51fbj4r5jd1a048mivd5yij3hplkm82b"))))
      (build-system asdf-build-system/sbcl)
      (native-inputs
       `(("parachute" ,sbcl-parachute)))
      (inputs
       `(("golden-utils" ,sbcl-golden-utils)
         ("specialization-store" ,sbcl-specialization-store)))
      (home-page "https://git.mfiano.net/mfiano/origin")
      (synopsis "Common Lisp graphics math library")
      (description
       "A native Common Lisp graphics math library with an emphasis on
performance and correctness.

This package provides 1 system: @code{ORIGIN}")
      (license license:expat))))

(define-public ecl-origin
  (sbcl-package->ecl-package sbcl-origin))

(define-public cl-origin
  (sbcl-package->cl-source-package sbcl-origin))

sbcl-origin
