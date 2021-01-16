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

(define-public sbcl-asdf-system-connections
  ;; NOTE: (Sharlatan-210106212146+0000) It's a quite old extension for ASDF
  ;; v2.27.
  (let ((commit "9f085240febccccff99d9d3bb687fcaafffd3f5e")
        (revision "1"))
  (package
    (name "sbcl-asdf-system-connections")
    (version (git-version "0.8.4" revision commit))
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/gwkkwg/asdf-system-connections")
                    (commit commit)))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "06kg0m8bv383qq3r34x0f8hz6p6zxcw02qn7kj960vcnrp5a5b3y"))))
    (build-system asdf-build-system/sbcl)
    (home-page "https://common-lisp.net/project/asdf-system-connections/")
    (synopsis "ASDF extansion to enable auto-load")
    (description "Allows for ASDF system to be connected so that auto-loading may
occur.")
    (license license:expat))))

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

(define-public sbcl-cl-markdown
  ;; NOTE: (Sharlatan-20210106214629+0000) latest version tag
  ;; "version-0.10.6_version-0.10.6" is failing to build due to missing system
  ;; #:container-dynamic-classes
  (package
    (name "sbcl-cl-markdown")
    (version "0.10.4")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/gwkkwg/cl-markdown")
                    (commit (string-append "version-" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1wdjbdd1zyskxf7zlilcp6fmwkivybj0wjp64vvzb265d5xi7p8p"))))
    (build-system asdf-build-system/sbcl)
    (inputs
     `(("anaphora" ,sbcl-anaphora)
       ("cl-containers" ,sbcl-cl-containers)
       ("cl-ppcre" ,sbcl-cl-ppcre)
       ("dynamic-classes" ,sbcl-dynamic-classes)
       ("metabang-bind" ,sbcl-metabang-bind)
       ("metatilities-base" ,sbcl-metatilities-base)))
    (arguments
     ;; NOTE: (Sharlatan-20210107213629+0000) Tests depend on too many not
     ;; available systems, which  themself are abandoned.
     `(#:tests? #f))
     (home-page "https://common-lisp.net/project/cl-markdown/")
     (synopsis "A Common Lisp rewrite of Markdown")
     (description "Implementation of Markdown parser in Common Lisp.")
     (license license:expat)))

(define-public ecl-cl-markdown
  (sbcl-package->ecl-package sbcl-cl-markdown))

(define-public cl-markdown
  (sbcl-package->cl-source-package sbcl-cl-markdown))

cl-markdown
