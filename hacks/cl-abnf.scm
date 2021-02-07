(use-modules (guix packages)
             (guix build-system python)
             (guix git-download)
             ((guix licenses) #:prefix license:))

(use-modules (guix packages)
             (guix utils)
             (guix build-system asdf)
             (guix build-system trivial)
             (guix download)
             (guix git-download)
             ((guix licenses) #:prefix license:)
             (gnu packages)
             (gnu packages pkg-config)
             (gnu packages lisp)
             (gnu packages lisp-xyz)
             (ice-9 match))

(define-public sbcl-cl-abnf
  ;; There are no releases
  (let ((commit "ba1fbb104dedbdaddb1ef93d2e4da711bd96cd70")
        (revision "1"))
    (package
     (name "sbcl-cl-abnf")
     (version (git-version "0" revision commit))
     (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/dimitri/cl-abnf")
                    (commit commit)))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0f09nsndxa90acm71zd4qdnp40v705a4sqm04mnv9x76h6dlggmz"))))
     (build-system asdf-build-system/sbcl)
     (inputs
      `(("esrap" ,sbcl-esrap)
        ("cl-ppcre" ,sbcl-cl-ppcre)))
     (arguments
      `(#:asd-systems '("abnf")))
     (home-page "https://github.com/dimitri/cl-abnf")
     (synopsis "ABNF Parser Generator, per RFC2234")
     (description "This Common Lisp librairie implements a parser generator for
the ABNF grammar format as described in RFC2234. The generated parser is a
regular expression scanner provided by the cl-ppcre lib, which means that we
can't parse recursive grammar definition. One such definition is the ABNF
definition as given by the RFC. Fortunately, as you have this lib, you most
probably don't need to generate another parser to handle that particular ABNF
grammar.")
     (license license:expat))))

(define-public ecl-cl-abnf
  (sbcl-package->ecl-package sbcl-cl-abnf))

(define-public cl-abnf
  (sbcl-package->cl-source-package sbcl-cl-abnf))

ecl-cl-abnf
