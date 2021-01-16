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

(define-public sbcl-garbage-pools
  (let ((commit "9a7cb7f48b04197c0495df3b6d2e8395ad13f790")
        (revision "1"))
    (package
      (name "sbcl-garbage-pools")
      (version (git-version "0.1.2" revision commit))
      (source (origin
                (method git-fetch)
                (uri (git-reference
                      (url "https://github.com/archimag/garbage-pools")
                      (commit commit)))
                (file-name (git-file-name name version))
                (sha256
                 (base32
                  "04jqwr6j138him6wc4nrwjzm4lvyj5j31xqab02nkf8h9hmsf5v1"))))
      (build-system asdf-build-system/sbcl)
      (home-page "https://github.com/archimag/garbage-pools")
      (synopsis "Implementation pools for resource management")
      (description "GARBAGE-POOLS is Common Lisp re-implementation of the APR
Pools for resource management.")
      (license license:expat))))

(define-public ecl-garbage-pools
  (sbcl-package->ecl-package sbcl-garbage-pools))

(define-public cl-garbage-pools
  (sbcl-package->cl-source-package sbcl-garbage-pools))

cl-garbage-pools
