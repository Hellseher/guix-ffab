(use-modules (guix packages)
             (guix build-system asdf)
             (guix git-download)
             ((guix licenses) #:prefix license:)
             (gnu packages lisp)
             (gnu packages lisp-xyz))

(define-public sbcl-trivial-arguments
  (let ((commit "ecd84ed9cf9ef8f1e873d7409e6bd04979372aa7")
        (revision "1"))
    (package
      (name "sbcl-trivial-arguments")
      (version (git-version "1.1.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shinmera/trivial-arguments")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "02vaqfavhj8jqxnr68nnzvzshm8jbgcy6m9lvyv4daa6f7ihqf88"))))
      (build-system asdf-build-system/sbcl)
      (home-page "https://github.com/Shinmera/trivial-arguments")
      (synopsis "Tiny Common Lisp library to retrieve the arguments list of a function")
      (description
       "A simple library to retrieve the lambda-list of a function.

This package produces 1 system: @code{TRIVIAL-ARGUMENTS}")
      (license license:zlib))))

(define-public ecl-trivial-arguments
  (sbcl-package->ecl-package sbcl-trivial-arguments))

(define-public cl-trivial-arguments
  (sbcl-package->cl-source-package sbcl-trivial-arguments))

sbcl-trivial-arguments
