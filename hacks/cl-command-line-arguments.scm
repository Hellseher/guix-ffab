(use-modules (guix packages)
             (guix build lisp-utils)
             (guix build-system asdf)
             (guix download)
             (guix git-download)
             ((guix licenses) #:prefix license:)
             (gnu packages)
             (gnu packages lisp)
             (gnu packages lisp-xyz))

(define-public sbcl-command-line-arguments
  (let ((commit "fbac862fb01c0e368141204f3f639920462c23fe")
        (revision "1"))
  (package
   (name "sbcl-command-line-arguments")
   (version (git-version "2.0.0" revision commit))
   (source (origin
            (method git-fetch)
            (uri (git-reference
                  (url "https://github.com/fare/command-line-arguments")
                  (commit commit)))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "054m1ikndzqf72mb9ajaa64136cwr3bgag4yfbi1574a9vq75mjq"))))
   (build-system asdf-build-system/sbcl)
   (home-page "https://github.com/fare/command-line-arguments")
   (synopsis "Trivial command-line argument parsing library for Common Lisp")
   (description "A library to abstract away the parsing of Unix-style
command-line arguments.  Use it in conjunction with asdf:program-op or cl-launch
for portable processing of command-line arguments.")
   (license license:expat))))

(define-public ecl-command-line-arguments
  (sbcl-package->ecl-package sbcl-command-line-arguments))

(define-public cl-command-line-arguments
  (sbcl-package->cl-source-package sbcl-command-line-arguments))

cl-command-line-arguments
