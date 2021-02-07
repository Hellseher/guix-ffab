(use-modules (guix packages)
             (guix build-system asdf)
             (guix git-download)
             ((guix licenses) #:prefix license:)
             (gnu packages lisp-xyz))

(define-public sbcl-piping
  (let ((commit "c7a4163c00dea7e72bf6ad33d6abac0d5826a656")
        (revision "1"))
    (package
      (name "sbcl-piping")
      (version (git-version "2.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shinmera/piping/")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0in84qnfkynm36d4n4d6v87vprpi27xrydnga462wfhplji6klv5"))))
      (build-system asdf-build-system/sbcl)
      (home-page "https://shinmera.github.io/piping/")
      (synopsis "Library to enable simple message pipelines")
      (description
       "A Common Lisp library to enable simple message pipelines.

This package produces 1 system: @code{PIPING}")
      (license license:zlib))))

(define-public ecl-piping
  (sbcl-package->ecl-package sbcl-piping))

(define-public cl-piping
  (sbcl-package->cl-source-package sbcl-piping))

ecl-piping
