(use-modules (guix packages)
             (guix build-system asdf)
             (guix git-download)
             ((guix licenses) #:prefix license:)
             (gnu packages lisp-xyz))

(define-public sbcl-verbose
  (let ((commit "c5b7ecd465be61b35af17ef57564697b88397174")
        (revision "1"))
    (package
      (name "sbcl-verbose")
      (version (git-version "2.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shinmera/verbose/")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0r51ydj5v7afi2jrlscbhxprv13d9vzg5316g1yzwaxc1kzsdsw6"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("piping" ,sbcl-piping)
         ("local-time" ,sbcl-local-time)
         ("bordeaux-threads" ,sbcl-bordeaux-threads)
         ("dissect" ,sbcl-dissect)
         ("documentation-utils" ,sbcl-documentation-utils)))
      (home-page "https://shinmera.github.io/verbose/")
      (synopsis "Logging framework using the piping library")
      (description
       "A Common Lisp library providing logging faciltiy similar to
@code{CL-LOG}, @code{LOG4CL}.

This package produces 1 system: @code{VERBOSE}")
      (license license:zlib))))

(define-public ecl-verbose
  (sbcl-package->ecl-package sbcl-verbose))

(define-public cl-verbose
  (sbcl-package->cl-source-package sbcl-verbose))

sbcl-verbose
