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

(define-public ecl-asdf-system-connections
  (sbcl-package->ecl-package sbcl-asdf-system-connections))

(define-public cl-asdf-system-connections
  (sbcl-package->cl-source-package sbcl-asdf-system-connections))

cl-asdf-system-connections
