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

(define-public sbcl-db3
  (let ((commit "38e5ad35f025769fb7f8dcdc6e56df3e8efd8e6d")
        (revision "1"))
  (package
    (name "sbcl-db3")
    (version (git-version "0.0.0" revision commit))
    (source (origin
             (method git-fetch)
             (uri (git-reference
                   (url "https://github.com/dimitri/cl-db3")
                   (commit commit)))
             (file-name (git-file-name name version))
             (sha256
              (base32
               "1i7j0mlri6kbklcx1lsm464s8kmyhhij5c4xh4aybrw8m4ixn1s5"))))
    (build-system asdf-build-system/sbcl)
    (home-page "https://github.com/dimitri/cl-db3")
    (synopsis "Common Lisp library to read dbf files version 3")
    (description "Allows processing data found in dbf and db3 files.")
    (license license:public-domain))))

(define-public ecl-db3
  (sbcl-package->ecl-package sbcl-db3))

(define-public cl-db3
  (sbcl-package->cl-source-package sbcl-db3))

cl-db3
