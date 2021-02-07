(use-modules (guix packages)
             (guix build-system asdf)
             (guix git-download)
             ((guix licenses) #:prefix license:)
             (gnu packages lisp)
             (gnu packages lisp-xyz))


(define-public sbcl-sdl2
  (let ((commit "bb2aa2a41cf799e3bb1ddf50de41fe389c6db668")
        (revision "1"))
    (package
      (name "sbcl-sdl2")
      (version (git-version "0.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/lispgames/cl-sdl2")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "08jvy82abm7qi3wrxh6gvmwg9gy0zzhg4cfqajdwrggbah8mj5a6"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("alexandria" ,sbcl-alexandria)
         ("cl-autowrap" ,sbcl-cl-autowrap)
         ("cl-plus-c" ,sbcl-cl-plus-c)
         ("cl-ppcre" ,sbcl-cl-ppcre)
         ("trivial-channels" ,sbcl-trivial-channels)
         ("trivial-features" ,sbcl-trivial-features)))
      (home-page "https://github.com/lispgames/cl-sdl2")
      (synopsis "Common Lisp bindings for SDL2 using C2FFI")
      (description
       "

This package provides 1 system: @code{SDL2}")
      (license license:expat))))

(define-public ecl-sdl2
  (sbcl-package->ecl-package sbcl-sdl2))

(define-public cl-sdl2
  (sbcl-package->cl-source-package sbcl-sdl2))

sbcl-sdl2
