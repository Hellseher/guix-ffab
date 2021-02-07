(use-modules (guix packages)
             (guix build-system asdf)
             (guix git-download)
             ((guix licenses) #:prefix license:)
             (gnu packages lisp)
             (gnu packages lisp-xyz))

(define-public sbcl-log4cl
  (let ((commit "8c48d6f41d3a1475d0a91eed0638b9eecc398e35")
        (revision "1"))
    (package
      (name "sbcl-log4cl")
      (build-system asdf-build-system/sbcl)
      (version "1.1.3")
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/sharplispers/log4cl")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0166d9aip366pbpdk5gsi2f6xad6q61lssxgbrypa8zslwjn8736"))))
      (native-inputs
       `(("stefil" ,sbcl-stefil)))
      (inputs
       `(("bordeaux-threads" ,sbcl-bordeaux-threads)))
      (synopsis "Common Lisp logging framework, modeled after Log4J")
      (home-page "https://github.com/7max/log4cl")
      (description "This is a Common Lisp logging framework that can log at
various levels and mix text with expressions.")
      (license license:asl2.0))))

sbcl-log4cl
