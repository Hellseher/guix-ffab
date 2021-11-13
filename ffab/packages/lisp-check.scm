(define-module (ffab packages lisp-check)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages lisp)
  #:use-module (gnu packages lisp-xyz)
  #:use-module (guix build lisp-utils)
  #:use-module (guix build-system asdf)
  #:use-module (guix git-download)
  #:use-module (guix packages))

(define-public sbcl-kaputt
  (let ((commit "f26c9b0f8219fe61d86249198ef85174eecafc10")
        (revision "1"))
    (package
      (name "sbcl-kaputt")
      (version (git-version "0.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/foretspaisibles/cl-kaputt")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "10a78032vnf12kjjpfmq9ign38cad237ycyq37dwnx922nxjjaj4"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("cl-ppcre" ,sbcl-cl-ppcre)))
      (home-page "https://github.com/foretspaisibles/cl-kaputt")
      (synopsis "Simple Interactive Test Framework for Common Lisp")
      (description
       "KAPUTT is a test framework for Common Lisp that focuses on the following
features:

@itemize
@item KAPUTT is simple, it only defines three abstractions testcase, assertion
and protocol and does not add any artefact on the backtrace when errors occur.

@item KAPUTT is extensible, it is possible to add problem-specific assertions to
make test code more informative.

@item KAPUTT fits well interactive development.
@end itemize\n")
      (license license:cecill-b))))

(define-public ecl-kaputt
  (sbcl-package->ecl-package sbcl-kaputt))

(define-public cl-kaputt
  (sbcl-package->cl-source-package sbcl-kaputt))

(define-public sbcl-cacau
  (let ((commit "ba0fb36a284ded884f1dab0bd3f0f41ec14e3038")
        (revision "1"))
    (package
      (name "sbcl-cacau")
      (version (git-version "1.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/noloop/cacau")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0m8v1xw68cr5ldv045rxgvnhigr4iahh7v6v32z6xlq2sj6r55x0"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("assertion-error" ,sbcl-assertion-error)
         ("eventbus" ,sbcl-eventbus)))
      (home-page "https://github.com/noloop/cacau")
      (synopsis "Comon Lisp test runner")
      (description
"TBC")
      (license license:gpl3+))))

(define-public ecl-cacau
  (sbcl-package->ecl-package sbcl-cacau))

(define-public cl-cacau
  (sbcl-package->cl-source-package sbcl-cacau))

(define-public sbcl-assertion-error
  (let ((commit "8eab692a990d4caa193a46bae99af3e13e717b86")
        (revision "1"))
    (package
      (name "sbcl-assertion-error")
      (version (git-version "0.1.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/noloop/assertion-error")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0m8v1xw68cr5ldv045rxgvnhigr4iahh7v6v32z6xlq2sj6r55x0"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("dissect" ,sbcl-dissect)))
      (home-page "https://github.com/noloop/assertion-error")
      (synopsis "Error pattern for assertion libraries in Common Lisp")
      (description
"TBC")
      (license license:gpl3+))))

(define-public ecl-assertion-error
  (sbcl-package->ecl-package sbcl-assertion-error))

(define-public cl-assertion-error
  (sbcl-package->cl-source-package sbcl-assertion-error))

(define-public sbcl-simplet
  (let ((commit "12268f95d2da9b84ea5afc05e2e790963566b0d8")
        (revision "1"))
    (package
      (name "sbcl-simplet")
      (version (git-version "1.2.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/noloop/simplet")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "1scsalzbwxk6z48b61zq532c02l36yr3vl2jdy0xjm2diycq6jgs"))))
      (build-system asdf-build-system/sbcl)
      (home-page "https://github.com/noloop/simplet")
      (synopsis "Simple test runner in Common Lisp")
      (description
"TBC")
      (license license:gpl3+))))

(define-public ecl-simplet
  (sbcl-package->ecl-package sbcl-simplet))

(define-public cl-simplet
  (sbcl-package->cl-source-package sbcl-simplet))
