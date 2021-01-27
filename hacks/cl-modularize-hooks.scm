(use-modules (guix packages)
             (guix build-system asdf)
             (guix git-download)
             ((guix licenses) #:prefix license:)
             (gnu packages lisp)
             (gnu packages lisp-xyz))

(define-public sbcl-modularize-hooks
  (let ((commit "e0348ed3ffd59a9ec31ca4ab28289e748bfbf96a")
        (revision "1"))
    (package
      (name "sbcl-modularize-hooks")
      (version (git-version "1.0.2" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shinmera/modularize-hooks")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "12kjvin8hxidwkzfb7inqv5b6g5qzcssnj9wc497v2ixc56fqdz7"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("modularize" ,sbcl-modularize)
         ("closer-mop" ,sbcl-closer-mop)
         ("trivial-arguments" ,sbcl-trivial-arguments)
         ("lambda-fiddle" ,sbcl-lambda-fiddle)))
      (home-page "https://shinmera.github.io/modularize-hooks/")
      (synopsis "Programmatical interfaces extension for Modularize")
      (description
       "This is a simple extension to @code{MODULARIZE} that allows modules to
define and trigger hooks, which other modules can hook on to.

This package produces 1 system: @code{MODULARIZE-HOOKS}")
      (license license:zlib))))

(define-public ecl-modularize-hooks
  (sbcl-package->ecl-package sbcl-modularize-hooks))

(define-public cl-modularize-hooks
  (sbcl-package->cl-source-package sbcl-modularize-hooks))

sbcl-modularize-hooks
