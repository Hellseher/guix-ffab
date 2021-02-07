(use-modules (guix packages)
             (guix build-system asdf)
             (guix git-download)
             ((guix licenses) #:prefix license:)
             (gnu packages lisp)
             (gnu packages lisp-xyz))

(define-public sbcl-3bz
  (let ((commit "569614c40408f3aefc77ba233e0e4bd66d3850ad")
        (revision "1"))
    (package
      (name "sbcl-3bz")
      (version (git-version "0.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/3b/3bz")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0kvvlvf50jhhw1s510f3clpr1a68632bq6d698yxcrx722igcrg4"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("alexandria" ,sbcl-alexandria)
         ("babel" ,sbcl-babel)
         ("cffi" ,sbcl-cffi)
         ("mmap" ,sbcl-mmap)
         ("nibbles" ,sbcl-nibbles)
         ("trivial-features" ,sbcl-trivial-features)))
      (arguments
       ;; FIXME: #41437 - Build fails when package name starts from a digit
       `(#:asd-systems '("3bz")))
      (home-page "https://github.com/3b/3bz")
      (synopsis "Deflate decompression for Common Lisp")
      (description
       "3bz is an implementation of Deflate decompression (RFC 1951) optionally
with zlib (RFC 1950) or gzip (RFC 1952) wrappers, with support for reading from
foreign pointers (for use with mmap and similar, etc), and from CL octet
vectors and streams.")
      (license license:expat))))

sbcl-3bz
