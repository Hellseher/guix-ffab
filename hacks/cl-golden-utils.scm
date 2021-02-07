(use-modules (guix packages)
             (guix build-system asdf)
             (guix git-download)
             ((guix licenses) #:prefix license:)
             (gnu packages lisp)
             (gnu packages lisp-xyz))

(define-public sbcl-golden-utils
  (let ((commit "9424419d867d5c2f819196ee41667a818a5058e7")
        (revision "1"))
    (package
      (name "sbcl-golden-utils")
      (version (git-version "0.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://git.mfiano.net/mfiano/golden-utils")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "15x0phm6820yj3h37ibi06gjyh6z45sd2nz2n8lcbfflwm086q0h"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("alexandria" ,sbcl-alexandria)))
      (home-page "https://git.mfiano.net/mfiano/golden-utils")
      (synopsis "Common Lisp utility library")
      (description
       "This package provides 1 system: @code{GOLDEN-UTILS}")
      (license license:expat))))

(define-public ecl-golden-utils
  (sbcl-package->ecl-package sbcl-golden-utils))

(define-public cl-golden-utils
  (sbcl-package->cl-source-package sbcl-golden-utils))

sbcl-golden-utils
