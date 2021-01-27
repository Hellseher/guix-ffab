(use-modules (guix packages)
             (guix build-system asdf)
             (guix git-download)
             ((guix licenses) #:prefix license:)
             (gnu packages lisp)
             (gnu packages lisp-xyz))

(define-public sbcl-ubiquitous
  (let ((commit "35eb7bd9e1b3daee1705f6b41260775180cce8af")
        (revision "1"))
    (package
      (name "sbcl-ubiquitous")
      (version (git-version "2.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shinmera/ubiquitous")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "1xlkaqmjcpkiv2xl2s2pvvrv976dlc846wm16s1lj62iy1315i49"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("bordeaux-threads" ,sbcl-bordeaux-threads)))
      (home-page "https://shinmera.github.io/ubiquitous/")
      (synopsis "Provides universal application configuration mechanism")
      (description
       "@code{UBIQUITOUS} is a very easy-to-use library for persistent
configuration storage.  It automatically takes care of finding a suitable place
to save your data, and provides simple functions to access and modify the data
within.

This package produces 2 systems: @code{UBIQUITOUS} @code{UBIQUITOUS-CONCURRENT}")
      (license license:zlib))))

(define-public ecl-ubiquitous
  (sbcl-package->ecl-package sbcl-ubiquitous))

(define-public cl-ubiquitous
  (sbcl-package->cl-source-package sbcl-ubiquitous))

sbcl-ubiquitous
