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
      (synopsis "")
      (description
       "This is an extension to @code{MODULARIZE} that allows your application to
define interfaces in-code that serve both as a primary documentation and as
compliance control.

This package produces 1 system: @code{MODULARIZE-INTERFACES}")
      (license license:zlib))))

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
               (url "https://github.com/Shinmera/radiance")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0hbkcnmnlj1cqzbv18zmla2iwbl65kxilz9764hndf8x8as1539c"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("modularize-hooks" ,sbcl-modularize-hooks)
         ("modularize-interfaces" ,sbcl-modularize-interfaces)
         ("ubiquitous-concurrent" ,sbcl-ubiquitous)
         ("trivial-indent" ,sbcl-trivial-indent)
         ("cl-ppcre" ,sbcl-cl-ppcre)
         ("trivial-mimes" ,sbcl-trivial-mimes)
         ("local-time" ,sbcl-local-time)
         ("lambda-fiddle" ,sbcl-lambda-fiddle)
         ("form-fiddle" ,sbcl-form-fiddle)
         ("bordeaux-threads" ,sbcl-bordeaux-threads)
         ("documentation-utils" ,sbcl-documentation-utils)
         ("babel" ,sbcl-babel)
         ("puri" ,sbcl-puri)
         ("closer-mop" ,sbcl-closer-mop)))
       (home-page "https://shinmera.github.io/radiance/")
       (synopsis "Common Lisp web application environment")
       (description
        "Radiance is a web application environment, which is sort of like a web
framework, but more general, more flexible.  It should let you write personal
websites and generally deployable applications easily and in such a way that
they can be used on practically any setup without having to undergo special
adaptations.

This package produces 2 systems: @code{RADIANCE} @code{RADIANCE-CORE}")
      (license license:zlib))))

sbcl-radiance
