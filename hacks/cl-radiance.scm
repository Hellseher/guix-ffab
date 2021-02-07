(use-modules (guix packages)
             (guix build-system asdf)
             (guix git-download)
             ((guix licenses) #:prefix license:)
             (gnu packages lisp)
             (gnu packages mp3)
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
      (propagated-inputs
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

(define-public sbcl-radiance
  (let ((commit "5ffbe1f157edd17a13194495099efd81e052df85")
        (revision "1"))
    (package
     (name "sbcl-radiance")
     (version (git-version "2.1.2" revision commit))
     (source
      (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Shirakumo/radiance")
             (commit commit)))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0hbkcnmnlj1cqzbv18zmla2iwbl65kxilz9764hndf8x8as1539c"))))
     (build-system asdf-build-system/sbcl)
     (arguments
      `(#:asd-files '("radiance-core.asd" "radiance.asd")
        #:asd-systems '("radiance-core" "radiance")))
     (inputs
      `(("babel" ,sbcl-babel)
        ("bordeaux-threads" ,sbcl-bordeaux-threads)
        ("cl-ppcre" ,sbcl-cl-ppcre)
        ("closer-mop" ,sbcl-closer-mop)
        ("documentation-utils" ,sbcl-documentation-utils)
        ("deploy" ,sbcl-deploy)
        ("form-fiddle" ,sbcl-form-fiddle)
        ("lambda-fiddle" ,sbcl-lambda-fiddle)
        ("local-time" ,sbcl-local-time)
        ("modularize-hooks" ,sbcl-modularize-hooks)
        ("modularize-interfaces" ,sbcl-modularize-interfaces)
        ("puri" ,sbcl-puri)
        ("trivial-indent" ,sbcl-trivial-indent)
        ("trivial-mimes" ,sbcl-trivial-mimes)))
     (propagated-inputs
      `(("ubiquitous-concurrent" ,sbcl-ubiquitous)))
     (home-page "https://shiraku)o.github.io/radiance/")
     (synopsis "Common Lisp web application environment")
     (description
      "Radiance is a web application environment, which is sort of like a web
framework, but more general, more flexible.  It should let you write personal
websites and generally deployable applications easily and in such a way that
they can be used on practically any setup without having to undergo special
adaptations.

This package produces 2 systems: @code{RADIANCE} @code{RADIANCE-CORE}")
      (license license:zlib))))

(define-public ecl-radiance
  (sbcl-package->ecl-package sbcl-radiance))

(define-public cl-radiance
  (sbcl-package->cl-source-package sbcl-radiance))

sbcl-radiance
