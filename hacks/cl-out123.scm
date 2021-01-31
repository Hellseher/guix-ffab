(use-modules (guix packages)
             (guix build-system asdf)
             (guix git-download)
             ((guix licenses) #:prefix license:)
             (gnu packages lisp)
             (gnu packages mp3)
             (gnu packages lisp-xyz))

(define-public sbcl-cl-out123
  (let ((commit "6b58d3f8c2a28ad09059ac4c60fb3c781b9b421b")
        (revision "1"))
    (package
      (name "sbcl-cl-out123")
      (version (git-version "1.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shirakumo/cl-out123")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0mdwgfax6sq68wvdgjjp78i40ah7wqkpqnvaq8a1c509k7ghdgv1"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:phases
         (modify-phases %standard-phases
           ;; NOTE: (Sharlatan-20210127T215142+0000): Project includes compiled
           ;; libraries in `static' which are available in Guix under `mpg123'
           ;; package - removing whole `static' directory.
           (add-after 'unpack 'clean-up
             (lambda _
               (delete-file-recursively "static")
               #t))
           (add-after 'unpack 'fix-paths
             (lambda* (#:key inputs #:allow-other-keys)
               (substitute* "low-level.lisp"
                 (("libout123.so" all) (string-append
                                        (assoc-ref inputs "libout123")
                                        "/lib/" all))))))))
      (inputs
       `(("libout123" ,mpg123)
         ("cffi" ,sbcl-cffi)
         ("trivial-features" ,sbcl-trivial-features)
         ("trivial-garbage" ,sbcl-trivial-garbage)
         ("documentation-utils" ,sbcl-documentation-utils)
         ("bordeaux-threads" ,sbcl-bordeaux-threads)))
      (home-page "https://shirakumo.github.io/cl-out123/")
      (synopsis "Bindings to libout123, allowing cross-platform audio output")
      (description
       "This is a bindings library to @code{libout123} which allows easy
cross-platform audio playback.

This package produces 1 system: @code{CL-OUT123}")
      (license license:zlib))))

(define-public ecl-cl-out123
  (sbcl-package->ecl-package sbcl-cl-out123))

(define-public cl-out123
  (sbcl-package->cl-source-package sbcl-cl-out123))

sbcl-cl-out123
