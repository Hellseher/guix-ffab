(use-modules (guix packages)
             (guix build-system asdf)
             (guix git-download)
             ((guix licenses) #:prefix license:)
             (gnu packages lisp)
             (gnu packages lisp-xyz))


(define-public sbcl-specialization-store
  (let ((commit "8d39a866a6f24986aad3cc52349e9cb2653496f3")
        (revision "1"))
    (package
      (name "sbcl-specialization-store")
      (version (git-version "0.0.5" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/markcox80/specialization-store")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0r0bgb46q4gy72l78s7djkxq8ibb4bb3yh9brsry5lih7br8lhi0"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:asd-systems
         '("specialization-store"
           "specialization-store-features")))
      (inputs
       `(("alexandria" ,sbcl-alexandria)
         ("introspect-environment" ,sbcl-introspect-environment)))
      (home-page "https://github.com/markcox80/specialization-store")
      (synopsis "Different type of generic function for Common Lisp")
      (description
       "SPECIALIZATION-STORE system provides a new kind of function, called
a store function, whose behavior depends on the types of objects passed to the
function.

 This package provides 2 systems: @code{SPECIALIZATION-STORE}
@code{SPECIALIZATION-STORE-FEATURES}")
      (license license:bsd-3))))

(define-public ecl-specialization-store
  (sbcl-package->ecl-package sbcl-specialization-store))

(define-public cl-specialization-store
  (sbcl-package->cl-source-package sbcl-specialization-store))

sbcl-specialization-store
