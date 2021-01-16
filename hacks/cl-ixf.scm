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

(define-public sbcl-cl-ixf
  (let ((commit "ed26f87e4127e4a9e3aac4ff1e60d1f39cca5183")
        (revision "1"))
  (package
    (name "sbcl-cl-ixf")
    (version (git-version "0.1.0" revision commit))
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/dimitri/cl-ixf")
                    (commit commit)))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1wjdnf4vr9z7lcfc49kl43g6l2i23q9n81siy494k17d766cdvqa"))))
    (build-system asdf-build-system/sbcl)
    (inputs
     `(("split-sequence" ,sbcl-split-sequence)
       ("md5" ,sbcl-md5)
       ("alexandria" ,sbcl-alexandria)
       ("babel" ,sbcl-babel)
       ("local-time" ,sbcl-local-time)
       ("cl-ppcre" ,sbcl-cl-ppcre)
       ("ieee-floats" ,sbcl-ieee-floats)))
    (arguments
     `(#:asd-systems '("ixf")))
    (home-page "https://github.com/dimitri/cl-ixf")
    (synopsis "Parse IBM Integration Exchange Format (IXF)")
    (description "Tools to handle IBM PC version of IXF file format.")
    (license license:public-domain))))

(define-public ecl-cl-ixf
  (sbcl-package->ecl-package sbcl-cl-ixf))

(define-public cl-ixf
  (sbcl-package->cl-source-package sbcl-cl-ixf))

ecl-cl-ixf
