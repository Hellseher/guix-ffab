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

(define-public sbcl-uax-15
  (let ((commit "a3f17a053cf6f6091c44c8036a0b5fc171be6e23")
         (revision "1"))
  (package
    (name "sbcl-uax-15")
    (version (git-version "0.0.0" revision commit))
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/sabracrolleton/uax-15")
                    (commit commit)))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0qabzwijhcs7z8spls636nklxr0xzl65402ab2niaj4mr8pwb8ll"))))
    (build-system asdf-build-system/sbcl)
    (inputs
     `(("split-sequence" ,sbcl-split-sequence)
       ("cl-ppcre" ,sbcl-cl-ppcre)))
    (arguments
     `(#:asd-files '("uax-15.asd")
       #:asd-systems '("uax-15/tests"
                       "uax-15")))
    (home-page "https://github.com/sabracrolleton/uax-15")
    (synopsis "Common Lisp implementation of unicode normalization functions")
    (description "This package supports UNICODE normalization and providing
support for RFC8264 and RFC7564.")
    (license license:expat))))

(define-public ecl-asdf-uax-15
  (sbcl-package->ecl-package sbcl-uax-15))

(define-public cl-asdf-uax-15
  (sbcl-package->cl-source-package sbcl-uax-15))

sbcl-uax-15
