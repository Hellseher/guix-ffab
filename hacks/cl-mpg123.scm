(use-modules (guix packages)
             (guix build-system asdf)
             (guix git-download)
             ((guix licenses) #:prefix license:)
             (gnu packages lisp)
             (gnu packages mp3)
             (gnu packages lisp-xyz))

(define-public sbcl-cl-mpg123
  (let ((commit "5f042c839d2ea4a2ff2a7b60c839d8633d64161d")
        (revision "1"))
    (package
      (name "sbcl-cl-mpg123")
      (version (git-version "1.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shirakumo/cl-mpg123")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "1hl721xaczxck008ax2y3jpkm509ry1sg3lklh2k76764m3ndrjf"))))
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
                 (("libmpg123.so" all) (string-append
                                        (assoc-ref inputs "libmpg123")
                                        "/lib/" all))))))))
      (inputs
       `(("libmpg123" ,mpg123)
         ("cffi" ,sbcl-cffi)
         ("cl-out123" ,sbcl-cl-out123)
         ("trivial-features" ,sbcl-trivial-features)
         ("trivial-garbage" ,sbcl-trivial-garbage)
         ("documentation-utils" ,sbcl-documentation-utils)))
      (home-page "https://shinmera.github.io/cl-mpg123/")
      (synopsis "Bindings to libmpg123, allowing fast MPG1/2/3 decoding")
      (description
       "This is a bindings and wrapper library to @code{libmpg123} allowing for
convenient, extensive, and fast decoding of MPEG1/2/3 (most prominently mp3)
files.

This package produces 1 system: @code{CL-MPG123}")
      (license license:zlib))))

(define-public ecl-cl-mpg123
  (sbcl-package->ecl-package sbcl-cl-mpg123))

(define-public cl-mpg123
  (sbcl-package->cl-source-package sbcl-cl-mpg123))

sbcl-cl-mpg123
