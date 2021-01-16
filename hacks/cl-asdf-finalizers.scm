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

(define-public sbcl-asdf-finalizers
  (let ((commit "7f537f6c598b662ae987c6acc268dd27c25977e0")
        (revision "1"))
    (package
      (name "sbcl-asdf-finalizers")
      (version (git-version "0.0.0" revision commit))
      (source (origin
                (method git-fetch)
                (uri (git-reference
                      (url "https://gitlab.common-lisp.net/asdf/asdf-finalizers")
                      (commit commit)))
                (file-name (git-file-name name version))
                (sha256
                 (base32
                  "1w56c9yjjydjshsgqxz57qlp2v3r4ilbisnsgiqphvxnhvd41y0v"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:tests? #f
         #:phases
         (modify-phases %standard-phases
           (add-after 'unpack 'disable-asdf-finalizers-test
               ;; Tests depend on asdf-finalizers which is not available on the
               ;; build phase
             (lambda _
               (delete-file "asdf-finalizers-test.asd")
               #t)))
         #:asd-systems '("asdf-finalizers"
                         "list-of")))
      (home-page "https://github.com/dimitri/cl-abnf")
      (synopsis "Enforced calling of finalizers for Lisp code")
      (description "This library allows you to implement and enforce proper
finalization of compile-time constructs while building Lisp source files.

It produces two systems: asdf-finalizers list-of")
      (license license:expat ))))

(define-public ecl-asdf-finalizers
  (sbcl-package->ecl-package sbcl-asdf-finalizers))

(define-public cl-asdf-finalizers
  (sbcl-package->cl-source-package sbcl-asdf-finalizers))

ecl-asdf-finalizers
