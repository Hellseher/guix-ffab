(use-modules (guix packages)
             (guix build-system asdf)
             (guix git-download)
             ((guix licenses) #:prefix license:)
             (gnu packages lisp)
             (gnu packages lisp-xyz))


(define-public sbcl-3b-bmfont
  (let ((commit "d1b5bec0de580c2d08ec947a93c56b1400f2a37a")
        (revision "1"))
    (package
      (name "sbcl-3b-bmfont")
      (version (git-version "0.0.1" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/3b/3b-bmfont/")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "12sgf7m0h6fqzhvkas7vmci6mprj3j3fnz778jlbqbsydln6v2yc"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:asd-systems
         '("3b-bmfont"
           "3b-bmfont/text"
           "3b-bmfont/common"
           "3b-bmfont/xml"
           "3b-bmfont/json")))
      (inputs
       `(("flexi-streams" ,sbcl-flexi-streams)
         ("alexandria" ,sbcl-alexandria)
         ("cxml" ,sbcl-cxml)
         ("jsown" ,sbcl-jsown)
         ("split-sequence" ,sbcl-split-sequence)))
      (home-page "https://github.com/3b/3b-bmfont/")
      (synopsis "Read/write bmfont metadata files")
      (description
       "Common Lisp library which provides functionality to Read/Write Bit Map
Font (BMF) into text, JSON and XML.

This package provides 5 systems: @code{3B-BMFONT} @code{3B-BMFONT/TEXT}
@code{3B-BMFONT/COMMON} @code{3B-BMFONT/XML} @code{3B-BMFONT/JSON}")
      (license license:expat))))

(define-public ecl-3b-bmfont
  (sbcl-package->ecl-package sbcl-3b-bmfont))

(define-public cl-3b-bmfont
  (sbcl-package->cl-source-package sbcl-3b-bmfont))

sbcl-3b-bmfont
