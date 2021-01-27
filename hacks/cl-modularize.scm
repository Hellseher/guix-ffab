(use-modules (guix packages)
             (guix build-system asdf)
             (guix git-download)
             ((guix licenses) #:prefix license:)
             (gnu packages lisp)
             (gnu packages lisp-xyz))

(define-public sbcl-modularize
  (let ((commit "86c5d9a11fbd2df9f0f03ac10b5d71837c8934ba")
        (revision "1"))
    (package
      (name "sbcl-modularize")
      (version (git-version "1.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shinmera/modularize")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "1zys29rfkb649rkgl3snxhajk8d5yf7ryxkrwy020kwdh7zdsg7d"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:test-asd-file "modularize-test-module.asd"
         #:asd-files '("modularize.asd" "modularize-test-module.asd")
         #:asd-systems '("modularize" "modularize-test-module")))
      (inputs
       `(("documentation-utils" ,sbcl-documentation-utils)
         ("trivial-package-local-nicknames" ,sbcl-trivial-package-local-nicknames)))
      (home-page "https://shinmera.github.io/modularize/")
      (synopsis "Common Lisp modularization framework")
      (description
       "@code{MODULARIZE} is an attempt at providing a common interface to
segregate major application components.  This is achieved by adding special
treatment to packages.  Each module is a package that is specially registered,
which allows it to interact and co-exist with other modules in better ways.  For
instance, by adding module definition options you can introduce mechanisms to
tie modules together in functionality, hook into each other and so on.

This package produces 1 system: @code{MODULARIZE}")
      (license license:zlib))))

(define-public ecl-modularize
  (sbcl-package->ecl-package sbcl-modularize))

(define-public cl-modularize
  (sbcl-package->cl-source-package sbcl-modularize))

sbcl-modularize
