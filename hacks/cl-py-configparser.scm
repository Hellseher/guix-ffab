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

(define-public sbcl-py-configparser
  ;; NOTE: (Sharlatan <2021-01-05 Tue> <19:52:19 UTC+0000>) Project updated last
  ;; time 8y ago, it looks like abandoned. VCS of the project:
  ;; https://svn.common-lisp.net/py-configparser/trunk
  (let ((url "https://common-lisp.net/project/py-configparser/releases/")
        (name-origin "py-configparser"))
    (package
     (name "sbcl-py-configparser")
     (version "1.0.3")
     (source (origin
              (method url-fetch)
              (uri (string-append url name-origin "-" version ".tar.gz"))
            (sha256
             (base32
              "0i4rqz5cv7d7c2w81x5lwy05s6fbi3zikf4k5kpi3bkx3cabwdxj"))))
   (build-system asdf-build-system/sbcl)
   (inputs
    `(("parse-number" ,sbcl-parse-number)))
   (home-page "http://common-lisp.net/project/py-configparser/")
   (synopsis "It implements the ConfigParser Python module functionality in Common Lisp")
   (description "The py-configparser package implements the ConfigParser Python
module functionality in Common Lisp.  In short, it implements reading and writing
of .INI-file style configuration files with sections containing key/value pairs
of configuration options.  In line with the functionalities in the python module,
does this package implement basic interpolation of option values in other
options.")
   (license license:expat))))

(define-public cl-py-configparser
  (sbcl-package->cl-source-package sbcl-py-configparser))

(define-public ecl-py-configparser
  (sbcl-package->ecl-package sbcl-py-configparser))

sbcl-py-configparser
