(use-modules (guix packages)
             (guix build-system asdf)
             (guix git-download)
             ((guix licenses) #:prefix license:)
             (gnu packages lisp)
             (gnu packages mp3)
             (gnu packages lisp-xyz))

(define-public sbcl-deploy
  (let ((commit "9b20e64fe924b9e31832304d87a3a72c383dc6d8")
        (revision "1"))
    (package
      (name "sbcl-deploy")
      (version (git-version "1.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shinmera/deploy")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "07pfkibaridihg8lbq2czwa4iqifqk24n6rx7bfnv7i49p1ppja1"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:test-asd-file "deploy-test.asd"
         #:asd-files
         '("deploy.asd"
           "deploy-test.asd")))
      (inputs
       `(("cffi" ,sbcl-cffi)
         ("cl-mpg123" ,sbcl-cl-mpg123)
         ("cl-out123" ,sbcl-cl-out123)
         ("documentation-utils" ,sbcl-documentation-utils)
         ("trivial-features" ,sbcl-trivial-features)))
      (home-page "https://shinmera.github.io/deploy/")
      (synopsis "Deployment tools for standalone Common Lisp applications ")
      (description
       "This package provides functionality to deploy standalone Common Lisp
applications as binaries, it's based on @code{(asdf:make)} and similar to
@code{buildapp}.

This package produces 1 system: @code{DEPLOY}")
      (license license:zlib))))

(define-public ecl-deploy
  (sbcl-package->ecl-package sbcl-deploy))

(define-public cl-deploy
  (sbcl-package->cl-source-package sbcl-deploy))

sbcl-deploy
