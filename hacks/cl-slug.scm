(use-modules (guix packages)
             (guix build-system asdf)
             (guix git-download)
             ((guix licenses) #:prefix license:)
             (gnu packages lisp)
             (gnu packages lisp-xyz))

(define-public sbcl-cl-slug
  (let ((commit "ffb229d10f0d3f7f54e706791725225e200bf749")
        (revision "1"))
    (package
      (name "sbcl-cl-slug")
      (version (git-version "0.4.1" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/EuAndreh/cl-slug")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "1asdq6xllmsvfw5fky9wblqcx9isac9jrrlkfl7vyxcq1wxrnflx"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:asd-files '("cl-slug-test.asd" "cl-slug.asd")
         #:asd-systems '("cl-slug-test" "cl-slug")))
      (native-inputs
       `(("prove" ,sbcl-prove)))
      (inputs
       `(("ppcre" ,sbcl-cl-ppcre)))
      (home-page "https://github.com/EuAndreh/cl-slug")
      (synopsis "Multy languages slag formater")
      (description
       "Small library to make slugs, mainly for URIs, from english and beyond.

This package provides 1 system: @code{CL-SLUG}")
      (license license:expat))))

(define-public ecl-cl-slug
  (sbcl-package->ecl-package sbcl-cl-slug))

(define-public cl-slug
  (sbcl-package->cl-source-package sbcl-cl-slug))

sbcl-cl-slug
