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

(define-public sbcl-cl-mustache
  (package
    (name "sbcl-cl-mustache")
    (version "0.12.1")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/kanru/cl-mustache")
                    (commit (string-append "v" version))))
              (file-name (git-file-name "cl-mustache" version))
              (sha256
               (base32
                "149xbb6wxq1napliwm9cv729hwcgfnjli6y8hingfixz7f10lhks"))))
    (build-system asdf-build-system/sbcl)
    (home-page "https://github.com/kanru/cl-mustache")
    (synopsis "Common Lisp Mustache Template Renderer")
    (description "It's a template system implemented for Common Lisp, more
details on standard available at http://mustache.github.io")
    (license license:expat)))

(define-public cl-cl-mustache
  (sbcl-package->cl-source-package sbcl-cl-mustache))

(define-public ecl-cl-mustache
  (sbcl-package->ecl-package sbcl-cl-mustache))

ecl-cl-mustache
