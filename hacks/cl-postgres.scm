(use-modules (guix packages)
             (guix build lisp-utils)
             (guix build-system asdf)
             (guix download)
             (guix git-download)
             ((guix licenses) #:prefix license:)
             (gnu packages)
             (gnu packages lisp)
             (gnu packages lisp-xyz))

(define-public sbcl-cl-postgres
  (package
    (name "sbcl-cl-postgres")
    (version "1.32.4")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/marijnh/Postmodern")
                    (commit version)))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1a1bxg8h97v05zplzciaprv4dxq79pxk7mq6xabcfkgdg4xwab77"))))
    (build-system asdf-build-system/sbcl)
    (inputs
     `(("md5" ,sbcl-md5)
       ("split-sequence" ,sbcl-split-sequence)
       ("ironclad" ,sbcl-ironclad)
       ("cl-base64" ,sbcl-cl-base64)
       ("uax-15" ,sbcl-uax-15)))
    (home-page "https://github.com/marijnh/Postmodern")
    (synopsis "Low-level client library for PostgreSQL")
    (description "It is a part of Postmodern project, system produces low-level
client for PostgreSQL database.")
    (license license:zlip )))
