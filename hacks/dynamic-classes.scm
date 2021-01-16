(use-modules (guix packages)
             (guix utils)
             (guix build-system asdf)
             (guix build-system trivial)
             (guix download)
             (guix git-download)
             ((guix licenses) #:prefix license:)
             (gnu packages)
             (gnu packages pkg-config)
             (gnu packages lisp)
             (gnu packages lisp-xyz)
             (ice-9 match))

(define-public sbcl-dynamic-classes
  (package
    (name "sbcl-dynamic-classes")
    (version "1.0.2")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/gwkkwg/dynamic-classes")
                    (commit (string-append "version-" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1z3ag6w4ff0v6715xa9zhvwjqnp4i6zrjfmxdz8m115sklbwgm6c"))))
    (build-system asdf-build-system/sbcl)
    (inputs
     `(("metatilities-base" ,sbcl-metatilities-base)))
    (arguments
     ;; NOTE: (Sharlatan-20210106222900+0000) Circular dependencies and failing
     ;; test suites. lift-standard.config contains referances to depricated
     ;; functionality.
     `(#:tests? #f))
    (home-page "https://common-lisp.net/project/dynamic-classes/")
    (synopsis "Classes how you want them, when you want them")
    (description "Dynamic-Classes helps to easy prototyping process.")
    (license license:expat)))

(define-public ecl-dynamic-classes
  (sbcl-package->ecl-package sbcl-dynamic-classes))

(define-public cl-dynamic-classes
  (sbcl-package->cl-source-package sbcl-dynamic-classes))

cl-dynamic-classes
