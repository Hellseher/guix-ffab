(use-modules (guix packages)
             (guix build-system asdf)
             (guix git-download)
             ((guix licenses) #:prefix license:)
             (gnu packages lisp)
             (gnu packages lisp-xyz))

(define-public sbcl-modularize-interfaces
  (let ((commit "96353657afb8c7aeba7ef5b51eb04c5ed3bcb6ef")
        (revision "1"))
    (package
      (name "sbcl-modularize-interfaces")
      (version (git-version "0.9.3" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shinmera/modularize-interfaces")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0bjf4wy39cwf75m7vh0r7mmcchs09yz2lrbyap98hnq8blq70fhc"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("modularize" ,sbcl-modularize)
         ("trivial-indent" ,sbcl-trivial-indent)
         ("trivial-arguments" ,sbcl-trivial-arguments)
         ("lambda-fiddle" ,sbcl-lambda-fiddle)))
      (home-page "https://shinmera.github.io/modularize-interfaces/")
      (synopsis "Programmatical interfaces extension for Modularize")
      (description
       "This is an extension to @code{MODULARIZE} that allows your application to
define interfaces in-code that serve both as a primary documentation and as
compliance control.

This package produces 1 system: @code{MODULARIZE-INTERFACES}")
      (license license:zlib))))

(define-public ecl-modularize-interfaces
  (sbcl-package->ecl-package sbcl-modularize-interfaces))

(define-public cl-modularize-interfaces
  (sbcl-package->cl-source-package sbcl-modularize-interfaces))

sbcl-modularize-interfaces
