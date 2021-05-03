(define-module (ffab packages lisp-xyz)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages databases)
  #:use-module (gnu packages image)
  #:use-module (gnu packages lisp)
  #:use-module (gnu packages lisp-xyz)
  #:use-module (gnu packages mp3)
  #:use-module (gnu packages sdl)
  #:use-module (guix build-system asdf)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix packages))


;; Set of systems which are maintained by Dimitri Fontaine
;; https://github.com/dimitri
;;+begin-dimitri

(define-public sbcl-qmynd
  (let ((commit "7e56daf73f0ed5f49a931c01af75fb874bcf3445")
        (revision "1"))
    (package
      (name "sbcl-qmynd")
      (version (git-version "1.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/qitab/qmynd")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32
           "06gw5wxcpdclb6a5i5k9lbmdlyqsp182czrm9bm1cpklzbj0ihrl"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("asdf-finalizers" ,sbcl-asdf-finalizers)
         ("babel" ,sbcl-babel)
         ("chipz" ,sbcl-chipz)
         ("cl+ssl" ,sbcl-cl+ssl)
         ("flexi-streams" ,sbcl-flexi-streams)
         ("ironclad" ,sbcl-ironclad)
         ("salza2" ,sbcl-salza2)
         ("trivial-gray-streams" ,sbcl-trivial-gray-streams)
         ("usocket" ,sbcl-usocket)))
      (home-page "https://github.com/dimitri/cl-abnf")
      (synopsis "QITAB MySQL Native Driver for Common Lisp")
      (description "QMyND, the QITAB MySQL Native Driver, is a MySQL client
library that directly talks to a MySQL server in its native network protocol.

It's a part of QITAB umbrella project.")
      (license license:expat ))))

(define-public ecl-qmynd
  (sbcl-package->ecl-package sbcl-qmynd))

(define-public cl-qmynd
  (sbcl-package->cl-source-package sbcl-qmynd))

(define-public sbcl-db3
  (let ((commit "38e5ad35f025769fb7f8dcdc6e56df3e8efd8e6d")
        (revision "1"))
  (package
    (name "sbcl-db3")
    (version (git-version "0.0.0" revision commit))
    (source (origin
             (method git-fetch)
             (uri (git-reference
                   (url "https://github.com/dimitri/cl-db3")
                   (commit commit)))
             (file-name (git-file-name name version))
             (sha256
              (base32
               "1i7j0mlri6kbklcx1lsm464s8kmyhhij5c4xh4aybrw8m4ixn1s5"))))
    (build-system asdf-build-system/sbcl)
    (home-page "https://github.com/dimitri/cl-db3")
    (synopsis "Common Lisp library to read dbf files version 3")
    (description "Allows processing data found in dbf and db3 files.")
    (license license:public-domain))))

(define-public ecl-db3
  (sbcl-package->ecl-package sbcl-db3))

(define-public cl-db3
  (sbcl-package->cl-source-package sbcl-db3))

(define-public sbcl-cl-ixf
  (let ((commit "ed26f87e4127e4a9e3aac4ff1e60d1f39cca5183")
        (revision "1"))
  (package
    (name "sbcl-cl-ixf")
    (version (git-version "0.1.0" revision commit))
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/dimitri/cl-ixf")
                    (commit commit)))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1wjdnf4vr9z7lcfc49kl43g6l2i23q9n81siy494k17d766cdvqa"))))
    (build-system asdf-build-system/sbcl)
    (inputs
     `(("split-sequence" ,sbcl-split-sequence)
       ("md5" ,sbcl-md5)
       ("alexandria" ,sbcl-alexandria)
       ("babel" ,sbcl-babel)
       ("local-time" ,sbcl-local-time)
       ("cl-ppcre" ,sbcl-cl-ppcre)
       ("ieee-floats" ,sbcl-ieee-floats)))
    (arguments
     `(#:asd-systems '("ixf")))
    (home-page "https://github.com/dimitri/cl-ixf")
    (synopsis "Parse IBM Integration Exchange Format (IXF)")
    (description "Tools to handle IBM PC version of IXF file format.")
    (license license:public-domain))))

(define-public ecl-cl-ixf
  (sbcl-package->ecl-package sbcl-cl-ixf))

(define-public cl-ixf
  (sbcl-package->cl-source-package sbcl-cl-ixf))
;;+end-dimitri

;; Set of systems which are maintained by Michael Fiano
;; https://git.mfiano.net/mfiano
;;+begin-mfiano

(define-public sbcl-origin
  (let ((commit "d646134302456408d6d43580bb05299f1695ab8e")
        (revision "1"))
    (package
      (name "sbcl-origin")
      (version (git-version "0.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://git.mfiano.net/mfiano/origin")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "1n9aszaif3yh8prs5r8v51fbj4r5jd1a048mivd5yij3hplkm82b"))))
      (build-system asdf-build-system/sbcl)
      (native-inputs
       `(("parachute" ,sbcl-parachute)))
      (inputs
       `(("golden-utils" ,sbcl-golden-utils)
         ("specialization-store" ,sbcl-specialization-store)))
      (home-page "https://git.mfiano.net/mfiano/origin")
      (synopsis "Common Lisp graphics math library")
      (description
       "A native Common Lisp graphics math library with an emphasis on
performance and correctness.

This package provides 1 system: @code{ORIGIN}")
      (license license:expat))))

(define-public ecl-origin
  (sbcl-package->ecl-package sbcl-origin))

(define-public cl-origin
  (sbcl-package->cl-source-package sbcl-origin))

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
;;+end-mfiano

;; Dist: http://dist.tymoon.eu/shirakumo.txt
;; Set of system which are maintained under Shirakumo distribution
;;+begin-shirakumo

;; <2021-04-22>
(define-public sbcl-terrable
  (let ((commit "e4fe23ffa08e8d53a8168105b413861da59cc786")
        (revision "1"))
    (package
     (name "sbcl-terrable")
     (version (git-version "1.0.0" revision commit))
     (source
      (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Shirakumo/terrable.git")
             (commit commit)))
       (file-name (git-file-name name version))
       (sha256
        (base32
         "0pnqflgz410zydc1ivwnd8hcl24bgr7x12yjzr7g4lq3ibc8y97b"))))
     (build-system asdf-build-system/sbcl)
     (inputs
      `(("documentation-utils" ,sbcl-documentation-utils)
        ("fast-io" ,sbcl-fast-io)
        ("ieee-floats" ,sbcl-ieee-floats)
        ("static-vectors" ,sbcl-static-vectors)
        ("trivial-garbage" ,sbcl-trivial-garbage)))
     (home-page "https://shirakumo.github.io/terrable/")
     (synopsis "File parser library for Terragen TER terrain files")
     (description
      "TBC")
     (license license:zlib))))

(define-public ecl-terrable
  (sbcl-package->ecl-package sbcl-terrable))

(define-public cl-terrable
  (sbcl-package->cl-source-package sbcl-terrable))

;; <2021-04-21>
(define-public sbcl-pathname-utils
  (let ((commit "70f517e44e13a38e0c8f296613236376d679fa8f")
        (revision "1"))
    (package
     (name "sbcl-pathname-utils")
     (version (git-version "1.1.0" revision commit))
     (source
      (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Shinmera/pathname-utils.git")
             (commit commit)))
       (file-name (git-file-name name version))
       (sha256
        (base32
         "1zm4bf6gajpgmhr7zwf7600zlaf8fs1fcyzabqsh2ma2crkgqdxq"))))
     (build-system asdf-build-system/sbcl)
     (native-inputs
      `(("parachute" ,sbcl-parachute)))
     (home-page "https://shinmera.github.io/pathname-utils")
     (synopsis "Collection of utilities to help with pathname operations")
     (description
      "This package provides Common Lisp system with collection of common tests
and operations to help handling pathnames.  It does not actually deal in handling
the accessing of files on the underlying system however.")
     (license license:zlib))))

(define-public ecl-pathname-utils
  (sbcl-package->ecl-package sbcl-pathname-utils))

(define-public cl-pathname-utils
  (sbcl-package->cl-source-package sbcl-pathname-utils))

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

(define-public sbcl-trivial-arguments
  (let ((commit "ecd84ed9cf9ef8f1e873d7409e6bd04979372aa7")
        (revision "1"))
    (package
      (name "sbcl-trivial-arguments")
      (version (git-version "1.1.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shinmera/trivial-arguments")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "02vaqfavhj8jqxnr68nnzvzshm8jbgcy6m9lvyv4daa6f7ihqf88"))))
      (build-system asdf-build-system/sbcl)
      (home-page "https://github.com/Shinmera/trivial-arguments")
      (synopsis "Tiny Common Lisp library to retrieve the arguments list of a function")
      (description
       "A simple library to retrieve the lambda-list of a function.

This package produces 1 system: @code{TRIVIAL-ARGUMENTS}")
      (license license:zlib))))

(define-public ecl-trivial-arguments
  (sbcl-package->ecl-package sbcl-trivial-arguments))

(define-public cl-trivial-arguments
  (sbcl-package->cl-source-package sbcl-trivial-arguments))

(define-public sbcl-piping
  (let ((commit "c7a4163c00dea7e72bf6ad33d6abac0d5826a656")
        (revision "1"))
    (package
      (name "sbcl-piping")
      (version (git-version "2.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shinmera/piping/")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0in84qnfkynm36d4n4d6v87vprpi27xrydnga462wfhplji6klv5"))))
      (build-system asdf-build-system/sbcl)
      (home-page "https://shinmera.github.io/piping/")
      (synopsis "Library to enable simple message pipelines")
      (description
       "A Common Lisp library to enable simple message pipelines.

This package produces 1 system: @code{PIPING}")
      (license license:zlib))))

(define-public ecl-piping
  (sbcl-package->ecl-package sbcl-piping))

(define-public cl-piping
  (sbcl-package->cl-source-package sbcl-piping))

(define-public sbcl-modularize-hooks
  (let ((commit "e0348ed3ffd59a9ec31ca4ab28289e748bfbf96a")
        (revision "1"))
    (package
      (name "sbcl-modularize-hooks")
      (version (git-version "1.0.2" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shinmera/modularize-hooks")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "12kjvin8hxidwkzfb7inqv5b6g5qzcssnj9wc497v2ixc56fqdz7"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("modularize" ,sbcl-modularize)
         ("closer-mop" ,sbcl-closer-mop)
         ("trivial-arguments" ,sbcl-trivial-arguments)
         ("lambda-fiddle" ,sbcl-lambda-fiddle)))
      (home-page "https://shinmera.github.io/modularize-hooks/")
      (synopsis "Programmatical interfaces extension for Modularize")
      (description
       "This is a simple extension to @code{MODULARIZE} that allows modules to
define and trigger hooks, which other modules can hook on to.

This package produces 1 system: @code{MODULARIZE-HOOKS}")
      (license license:zlib))))

(define-public ecl-modularize-hooks
  (sbcl-package->ecl-package sbcl-modularize-hooks))

(define-public cl-modularize-hooks
  (sbcl-package->cl-source-package sbcl-modularize-hooks))

(define-public sbcl-modularize-interfaces
  (let ((commit "96353657afb8c7aeba7ef5b51eb04c5ed3bcb6ef")
        (revision "1"))
    (package
      (name "sbcl-modularize-interfaces")
      (version (git-version "0.9.3" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shinmera/modularize-interfaces")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0bjf4wy39cwf75m7vh0r7mmcchs09yz2lrbyap98hnq8blq70fhc"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("modularize" ,sbcl-modularize)
         ("trivial-indent" ,sbcl-trivial-indent)
         ("trivial-arguments" ,sbcl-trivial-arguments)
         ("lambda-fiddle" ,sbcl-lambda-fiddle)))
      (home-page "https://shinmera.github.io/modularize-interfaces/")
      (synopsis "Programmatical interfaces extension for Modularize")
      (description
       "This is an extension to @code{MODULARIZE} that allows your application to
define interfaces in-code that serve both as a primary documentation and as
compliance control.

This package produces 1 system: @code{MODULARIZE-INTERFACES}")
      (license license:zlib))))

(define-public ecl-modularize-interfaces
  (sbcl-package->ecl-package sbcl-modularize-interfaces))

(define-public cl-modularize-interfaces
  (sbcl-package->cl-source-package sbcl-modularize-interfaces))

(define-public sbcl-cl-mpg123
  (let ((commit "5f042c839d2ea4a2ff2a7b60c839d8633d64161d")
        (revision "1"))
    (package
      (name "sbcl-cl-mpg123")
      (version (git-version "1.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shirakumo/cl-mpg123")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "1hl721xaczxck008ax2y3jpkm509ry1sg3lklh2k76764m3ndrjf"))
         (modules '((guix build utils)))
         (snippet
          '(begin
             ;; Remove bundled pre-compiled libraries.
             (delete-file-recursively "static")
             #t))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:asd-files '("cl-mpg123.asd" "cl-mpg123-example.asd")
         #:asd-systems '("cl-mpg123" "cl-mpg123-example")
         #:phases
         (modify-phases %standard-phases
           (add-after 'unpack 'fix-paths
             (lambda* (#:key inputs #:allow-other-keys)
               (substitute* "low-level.lisp"
                 (("libmpg123.so" all)
                  (string-append (assoc-ref inputs "libmpg123")
                                        "/lib/" all))))))))
      (inputs
       `(("cffi" ,sbcl-cffi)
         ("cl-out123" ,sbcl-cl-out123)
         ("documentation-utils" ,sbcl-documentation-utils)
         ("libmpg123" ,mpg123)
         ("trivial-features" ,sbcl-trivial-features)
         ("trivial-garbage" ,sbcl-trivial-garbage)
         ("verbose" ,sbcl-verbose)))
      (home-page "https://shirakumo.github.io/cl-mpg123/")
      (synopsis "Bindings to libmpg123, allowing fast MPG1/2/3 decoding")
      (description
       "This is a bindings and wrapper library to @code{libmpg123} allowing for
convenient, extensive, and fast decoding of MPEG1/2/3 (most prominently mp3)
files.

This package produces 2 systems: @code{CL-MPG123} @code{CL-MPG123-EXAMPLE}")
      (license license:zlib))))

(define-public ecl-cl-mpg123
  (sbcl-package->ecl-package sbcl-cl-mpg123))

(define-public cl-mpg123
  (sbcl-package->cl-source-package sbcl-cl-mpg123))

(define-public sbcl-cl-out123
  (let ((commit "6b58d3f8c2a28ad09059ac4c60fb3c781b9b421b")
        (revision "1"))
    (package
      (name "sbcl-cl-out123")
      (version (git-version "1.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shirakumo/cl-out123")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0mdwgfax6sq68wvdgjjp78i40ah7wqkpqnvaq8a1c509k7ghdgv1"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:phases
         (modify-phases %standard-phases
           ;; NOTE: (Sharlatan-20210127T215142+0000): Project includes compiled
           ;; libraries in `static' which are available in Guix under `mpg123'
           ;; package - removing whole `static' directory.
           (add-after 'unpack 'clean-up
             (lambda _
               (delete-file-recursively "static")
               #t))
           (add-after 'unpack 'fix-paths
             (lambda* (#:key inputs #:allow-other-keys)
               (substitute* "low-level.lisp"
                 (("libout123.so" all) (string-append
                                        (assoc-ref inputs "libout123")
                                        "/lib/" all)))))
           ;; NOTE: (Sharlatan-20210129T134529+0000): ECL package `ext' has no
           ;; exported macro `without-interrupts' it's moved to `mp' package
           ;; https://github.com/Shirakumo/cl-out123/issues/2
           ;; https://gitlab.com/embeddable-common-lisp/ecl/-/blob/develop/src/lsp/mp.lsp
           (add-after 'unpack 'fix-ecl-package-name
             (lambda _
               (substitute* "wrapper.lisp"
                 (("ext:without-interrupts.*") "mp:without-interrupts\n"))
               #t)))))
      (inputs
       `(("libout123" ,mpg123)
         ("cffi" ,sbcl-cffi)
         ("trivial-features" ,sbcl-trivial-features)
         ("trivial-garbage" ,sbcl-trivial-garbage)
         ("documentation-utils" ,sbcl-documentation-utils)
         ("bordeaux-threads" ,sbcl-bordeaux-threads)))
      (home-page "https://shirakumo.github.io/cl-out123/")
      (synopsis "Bindings to libout123, allowing cross-platform audio output")
      (description
       "This is a bindings library to @code{libout123} which allows easy
cross-platform audio playback.

This package produces 1 system: @code{CL-OUT123}")
      (license license:zlib))))

(define-public ecl-cl-out123
  (sbcl-package->ecl-package sbcl-cl-out123))

(define-public cl-out123
  (sbcl-package->cl-source-package sbcl-cl-out123))

(define-public sbcl-modularize
  (let ((commit "86c5d9a11fbd2df9f0f03ac10b5d71837c8934ba")
        (revision "1"))
    (package
      (name "sbcl-modularize")
      (version (git-version "1.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shinmera/modularize")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "1zys29rfkb649rkgl3snxhajk8d5yf7ryxkrwy020kwdh7zdsg7d"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:test-asd-file "modularize-test-module.asd"
         #:asd-files '("modularize.asd" "modularize-test-module.asd")
         #:asd-systems '("modularize" "modularize-test-module")))
      (inputs
       `(("documentation-utils" ,sbcl-documentation-utils)
         ("trivial-package-local-nicknames" ,sbcl-trivial-package-local-nicknames)))
      (home-page "https://shinmera.github.io/modularize/")
      (synopsis "Common Lisp modularization framework")
      (description
       "@code{MODULARIZE} is an attempt at providing a common interface to
segregate major application components.  This is achieved by adding special
treatment to packages.  Each module is a package that is specially registered,
which allows it to interact and co-exist with other modules in better ways.  For
instance, by adding module definition options you can introduce mechanisms to
tie modules together in functionality, hook into each other and so on.

This package produces 1 system: @code{MODULARIZE}")
      (license license:zlib))))

(define-public ecl-modularize
  (sbcl-package->ecl-package sbcl-modularize))

(define-public cl-modularize
  (sbcl-package->cl-source-package sbcl-modularize))

(define-public sbcl-deploy
  (let ((commit "9b20e64fe924b9e31832304d87a3a72c383dc6d8")
        (revision "1"))
    (package
      (name "sbcl-deploy")
      (version (git-version "1.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shinmera/deploy")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "07pfkibaridihg8lbq2czwa4iqifqk24n6rx7bfnv7i49p1ppja1"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:test-asd-file "deploy-test.asd"
         #:asd-files
         '("deploy.asd"
           "deploy-test.asd")))
      (inputs
       `(("cffi" ,sbcl-cffi)
         ("cl-mpg123" ,sbcl-cl-mpg123)
         ("cl-out123" ,sbcl-cl-out123)
         ("documentation-utils" ,sbcl-documentation-utils)
         ("trivial-features" ,sbcl-trivial-features)))
      (home-page "https://shinmera.github.io/deploy/")
      (synopsis "Deployment tools for standalone Common Lisp applications ")
      (description
       "This package provides functionality to deploy standalone Common Lisp
applications as binaries, it's based on @code{(asdf:make)} and similar to
@code{buildapp}.

This package produces 1 system: @code{DEPLOY}")
      (license license:zlib))))

(define-public ecl-deploy
  (sbcl-package->ecl-package sbcl-deploy))

(define-public cl-deploy
  (sbcl-package->cl-source-package sbcl-deploy))

(define-public sbcl-ubiquitous
  (let ((commit "35eb7bd9e1b3daee1705f6b41260775180cce8af")
        (revision "1"))
    (package
      (name "sbcl-ubiquitous")
      (version (git-version "2.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shinmera/ubiquitous")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "1xlkaqmjcpkiv2xl2s2pvvrv976dlc846wm16s1lj62iy1315i49"))))
      (build-system asdf-build-system/sbcl)
      (propagated-inputs
       `(("bordeaux-threads" ,sbcl-bordeaux-threads)))
      (home-page "https://shinmera.github.io/ubiquitous/")
      (synopsis "Provides universal application configuration mechanism")
      (description
       "@code{UBIQUITOUS} is a very easy-to-use library for persistent
configuration storage.  It automatically takes care of finding a suitable place
to save your data, and provides simple functions to access and modify the data
within.

This package produces 2 systems: @code{UBIQUITOUS} @code{UBIQUITOUS-CONCURRENT}")
      (license license:zlib))))

(define-public ecl-ubiquitous
  (sbcl-package->ecl-package sbcl-ubiquitous))

(define-public cl-ubiquitous
  (sbcl-package->cl-source-package sbcl-ubiquitous))

(define-public sbcl-radiance
  (let ((commit "5ffbe1f157edd17a13194495099efd81e052df85")
        (revision "1"))
    (package
     (name "sbcl-radiance")
     (version (git-version "2.1.2" revision commit))
     (source
      (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Shirakumo/radiance")
             (commit commit)))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0hbkcnmnlj1cqzbv18zmla2iwbl65kxilz9764hndf8x8as1539c"))))
     (build-system asdf-build-system/sbcl)
     (arguments
      `(#:asd-files '("radiance-core.asd" "radiance.asd")
        #:asd-systems '("radiance-core" "radiance")))
     (inputs
      `(("babel" ,sbcl-babel)
        ("bordeaux-threads" ,sbcl-bordeaux-threads)
        ("cl-ppcre" ,sbcl-cl-ppcre)
        ("closer-mop" ,sbcl-closer-mop)
        ("documentation-utils" ,sbcl-documentation-utils)
        ("deploy" ,sbcl-deploy)
        ("form-fiddle" ,sbcl-form-fiddle)
        ("lambda-fiddle" ,sbcl-lambda-fiddle)
        ("local-time" ,sbcl-local-time)
        ("modularize-hooks" ,sbcl-modularize-hooks)
        ("modularize-interfaces" ,sbcl-modularize-interfaces)
        ("puri" ,sbcl-puri)
        ("trivial-indent" ,sbcl-trivial-indent)
        ("trivial-mimes" ,sbcl-trivial-mimes)))
     (propagated-inputs
      `(("ubiquitous-concurrent" ,sbcl-ubiquitous)))
     (home-page "https://shirakumo.github.io/radiance/")
     (synopsis "Common Lisp web application environment")
     (description
      "Radiance is a web application environment, which is sort of like a web
framework, but more general, more flexible.  It should let you write personal
websites and generally deployable applications easily and in such a way that
they can be used on practically any setup without having to undergo special
adaptations.

This package produces 2 systems: @code{RADIANCE} @code{RADIANCE-CORE}")
      (license license:zlib))))

(define-public ecl-radiance
  (sbcl-package->ecl-package sbcl-radiance))

(define-public cl-radiance
  (sbcl-package->cl-source-package sbcl-radiance))
;;+end-shirakumo

;;+begin-misc

(define-public sbcl-uax-15
  (let ((commit "a3f17a053cf6f6091c44c8036a0b5fc171be6e23")
         (revision "1"))
  (package
    (name "sbcl-uax-15")
    (version (git-version "0.0.0" revision commit))
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/sabracrolleton/uax-15")
                    (commit commit)))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0qabzwijhcs7z8spls636nklxr0xzl65402ab2niaj4mr8pwb8ll"))))
    (build-system asdf-build-system/sbcl)
    (inputs
     `(("split-sequence" ,sbcl-split-sequence)
       ("cl-ppcre" ,sbcl-cl-ppcre)))
    (arguments
     `(#:asd-files '("uax-15.asd")
       #:asd-systems '("uax-15/tests"
                       "uax-15")))
    (home-page "https://github.com/sabracrolleton/uax-15")
    (synopsis "Common Lisp implementation of unicode normalization functions")
    (description "This package supports UNICODE normalization and providing
support for RFC8264 and RFC7564.")
    (license license:expat))))

(define-public ecl-asdf-uax-15
  (sbcl-package->ecl-package sbcl-uax-15))

(define-public cl-asdf-uax-15
  (sbcl-package->cl-source-package sbcl-uax-15))

(define-public sbcl-trivial-timeout
  (let ((commit "feb869357f40f5e109570fb40abad215fb370c6c")
        (revision "1"))
    (package
      (name "sbcl-trivial-timeout")
      (version (git-version "0.1.5" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/gwkkwg/trivial-timeout/")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "1kninxwvvih9nhh7a9y8lfgi7pdr76675y1clw4ss17vz8fbim5p"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       ;; NOTE: (Sharlatan-20210202T231437+0000): Due to the age of this library
       ;; tests use some deprecated functionality and keep failing.
       `(#:tests? #f))
      (home-page "https://github.com/gwkkwg/trivial-timeout/")
      (synopsis "OS and Implementation independent access to timeouts")
      (description
       "Portable and possibly dangerous timeout library for Common Lisp.

This package provides 1 system: @code{TRIVIAL-TIMEOUT}")
      (license license:expat))))

(define-public ecl-trivial-timeout
  (sbcl-package->ecl-package sbcl-trivial-timeout))

(define-public cl-trivial-timeout
  (sbcl-package->cl-source-package sbcl-trivial-timeout))

(define-public sbcl-specialization-store
  (let ((commit "8d39a866a6f24986aad3cc52349e9cb2653496f3")
        (revision "1"))
    (package
      (name "sbcl-specialization-store")
      (version (git-version "0.0.5" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/markcox80/specialization-store")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0r0bgb46q4gy72l78s7djkxq8ibb4bb3yh9brsry5lih7br8lhi0"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:asd-systems
         '("specialization-store"
           "specialization-store-features")))
      (inputs
       `(("alexandria" ,sbcl-alexandria)
         ("introspect-environment" ,sbcl-introspect-environment)))
      (home-page "https://github.com/markcox80/specialization-store")
      (synopsis "Different type of generic function for Common Lisp")
      (description
       "SPECIALIZATION-STORE system provides a new kind of function, called
a store function, whose behavior depends on the types of objects passed to the
function.

 This package provides 2 systems: @code{SPECIALIZATION-STORE}
@code{SPECIALIZATION-STORE-FEATURES}")
      (license license:bsd-3))))

(define-public ecl-specialization-store
  (sbcl-package->ecl-package sbcl-specialization-store))

(define-public cl-specialization-store
  (sbcl-package->cl-source-package sbcl-specialization-store))

(define-public sbcl-cl-slug
  (let ((commit "ffb229d10f0d3f7f54e706791725225e200bf749")
        (revision "1"))
    (package
      (name "sbcl-cl-slug")
      (version (git-version "0.4.1" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/EuAndreh/cl-slug")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "1asdq6xllmsvfw5fky9wblqcx9isac9jrrlkfl7vyxcq1wxrnflx"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:asd-files '("cl-slug-test.asd" "cl-slug.asd")
         #:asd-systems '("cl-slug-test" "cl-slug")))
      (native-inputs
       `(("prove" ,sbcl-prove)))
      (inputs
       `(("ppcre" ,sbcl-cl-ppcre)))
      (home-page "https://github.com/EuAndreh/cl-slug")
      (synopsis "Multy languages slag formater")
      (description
       "Small library to make slugs, mainly for URIs, from english and beyond.

This package provides 1 system: @code{CL-SLUG}")
      (license license:expat))))

(define-public ecl-cl-slug
  (sbcl-package->ecl-package sbcl-cl-slug))

(define-public cl-slug
  (sbcl-package->cl-source-package sbcl-cl-slug))

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

(define-public sbcl-printv
  (let ((commit "646d31978dbbb460fffb160fd65bb2be9a5a434e")
        (revision "1"))
    (package
      (name "sbcl-printv")
      (version (git-version "0.1.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/danlentz/printv")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "08jvy82abm7qi3wrxh6gvmwg9gy0zzhg4cfqajdwrggbah8mj5a6"))))
      (build-system asdf-build-system/sbcl)
      (home-page "https://github.com/danlentz/printv")
      (synopsis "Common Lisp tracing and debug-logging macro")
      (description
       "@code{PRINTV} is a 'batteries-included' tracing and debug-logging macro.

This package provides 1 system: @code{PRINTV}")
      (license license:asl2.0))))

(define-public ecl-printv
  (sbcl-package->ecl-package sbcl-printv))

(define-public cl-printv
  (sbcl-package->cl-source-package sbcl-printv))

(define-public sbcl-postmodern
  (package
    (name "sbcl-postmodern")
    (version "1.32.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/marijnh/Postmodern")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0bfx0hcb9wv47qd334xs0fpmisl75dpvasq1zai210s5wqg0km6d"))))
    (build-system asdf-build-system/sbcl)

    (native-inputs
     `(("fiveam" ,sbcl-fiveam)))
    (inputs
     `(("alexandria" ,sbcl-alexandria)
       ("bordeaux-threads" ,sbcl-bordeaux-threads)
       ("cl-base64" ,sbcl-cl-base64)
       ("cl-unicode" ,sbcl-cl-unicode)
       ("closer-mop" ,sbcl-closer-mop)
       ("global-vars" ,sbcl-global-vars)
       ("ironclad" ,sbcl-ironclad)
       ("local-time" ,sbcl-local-time)
       ("md5" ,sbcl-md5)
       ("split-sequence" ,sbcl-split-sequence)
       ("uax-15" ,sbcl-uax-15)
       ("usocket" ,sbcl-usocket)))
    (arguments
     `(#:tests? #f
       #:asd-systems '("postmodern"
                       "cl-postgres"
                       "s-sql"
                       "simple-date")))
    (synopsis "Common Lisp library for interacting with PostgreSQL")
    (description
     "@code{postmodern} is a Common Lisp library for interacting with
PostgreSQL databases.  It provides the following features:

@itemize
@item Efficient communication with the database server without need for
foreign libraries.
@item Support for UTF-8 on Unicode-aware Lisp implementations.
@item A syntax for mixing SQL and Lisp code.
@item Convenient support for prepared statements and stored procedures.
@item A metaclass for simple database-access objects.
@end itemize\n

This package produces 4 systems: postmodern, cl-postgres, s-sql, simple-date

@code{SIMPLE-DATE} is a very basic implementation of date and time objects, used
to support storing and retrieving time-related SQL types.  It is not loaded by
default and you can use local-time (which has support for timezones) instead.

@code{CL-POSTGRES} is the low-level library used for interfacing with a PostgreSQL
server over a socket.

@code{S-SQL} is used to compile s-expressions to strings of SQL code, escaping
any Lisp values inside, and doing as much as possible of the work at compile
time.

@code{Postmodern} itself is a wrapper around these packages and provides higher
level functions, a very simple data access object that can be mapped directly to
database tables and some convient utilities.  It then tries to put all these
things together into a convenient programming interface")
    (home-page "https://marijnhaverbeke.nl/postmodern/")
    (license license:zlib)))

(define-public cl-postmodern
  (sbcl-package->cl-source-package sbcl-postmodern))

(define-public ecl-postmodern
  (sbcl-package->ecl-package sbcl-postmodern))

(define-public sbcl-garbage-pools
  (let ((commit "9a7cb7f48b04197c0495df3b6d2e8395ad13f790")
        (revision "1"))
    (package
      (name "sbcl-garbage-pools")
      (version (git-version "0.1.2" revision commit))
      (source (origin
                (method git-fetch)
                (uri (git-reference
                      (url "https://github.com/archimag/garbage-pools")
                      (commit commit)))
                (file-name (git-file-name name version))
                (sha256
                 (base32
                  "04jqwr6j138him6wc4nrwjzm4lvyj5j31xqab02nkf8h9hmsf5v1"))))
      (build-system asdf-build-system/sbcl)
      (home-page "https://github.com/archimag/garbage-pools")
      (synopsis "Implementation pools for resource management")
      (description "GARBAGE-POOLS is Common Lisp re-implementation of the APR
Pools for resource management.")
      (license license:expat))))

(define-public ecl-garbage-pools
  (sbcl-package->ecl-package sbcl-garbage-pools))

(define-public cl-garbage-pools
  (sbcl-package->cl-source-package sbcl-garbage-pools))

(define-public sbcl-dynamic-classes
  (package
    (name "sbcl-dynamic-classes")
    (version "1.0.2")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/gwkkwg/dynamic-classes")
                    (commit (string-append "version-" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1z3ag6w4ff0v6715xa9zhvwjqnp4i6zrjfmxdz8m115sklbwgm6c"))))
    (build-system asdf-build-system/sbcl)
    (inputs
     `(("metatilities-base" ,sbcl-metatilities-base)))
    (arguments
     ;; NOTE: (Sharlatan-20210106222900+0000) Circular dependencies and failing
     ;; test suites. lift-standard.config contains referances to depricated
     ;; functionality.
     `(#:tests? #f))
    (home-page "https://common-lisp.net/project/dynamic-classes/")
    (synopsis "Classes how you want them, when you want them")
    (description "Dynamic-Classes helps to easy prototyping process.")
    (license license:expat)))

(define-public ecl-dynamic-classes
  (sbcl-package->ecl-package sbcl-dynamic-classes))

(define-public cl-dynamic-classes
  (sbcl-package->cl-source-package sbcl-dynamic-classes))

(define-public sbcl-cl-markdown
  ;; NOTE: (Sharlatan-20210106214629+0000) latest version tag
  ;; "version-0.10.6_version-0.10.6" is failing to build due to missing system
  ;; #:container-dynamic-classes
  (package
    (name "sbcl-cl-markdown")
    (version "0.10.4")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/gwkkwg/cl-markdown")
                    (commit (string-append "version-" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1wdjbdd1zyskxf7zlilcp6fmwkivybj0wjp64vvzb265d5xi7p8p"))))
    (build-system asdf-build-system/sbcl)
    (inputs
     `(("anaphora" ,sbcl-anaphora)
       ("cl-containers" ,sbcl-cl-containers)
       ("cl-ppcre" ,sbcl-cl-ppcre)
       ("dynamic-classes" ,sbcl-dynamic-classes)
       ("metabang-bind" ,sbcl-metabang-bind)
       ("metatilities-base" ,sbcl-metatilities-base)))
    (arguments
     ;; NOTE: (Sharlatan-20210107213629+0000) Tests depend on too many not
     ;; available systems, which  themself are abandoned.
     `(#:tests? #f))
     (home-page "https://common-lisp.net/project/cl-markdown/")
     (synopsis "A Common Lisp rewrite of Markdown")
     (description "Implementation of Markdown parser in Common Lisp.")
     (license license:expat)))

(define-public ecl-cl-markdown
  (sbcl-package->ecl-package sbcl-cl-markdown))

(define-public cl-markdown
  (sbcl-package->cl-source-package sbcl-cl-markdown))

(define-public sbcl-mssql
  (let ((commit "045602a19a32254108f2b75871049293f49731eb")
        (revision "1"))
    (package
      (name "sbcl-mssql")
      (version (git-version "0.0.3" revision commit))
      (source (origin
                (method git-fetch)
                (uri (git-reference
                      (url "https://github.com/archimag/cl-mssql")
                      (commit commit)))
                (file-name (git-file-name name version))
                (sha256
                 (base32
                  "09i50adppgc1ybm3ka9vbindhwa2x29f9n3n0jkrryymdhb8zknm"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("cffi" ,sbcl-cffi)
         ("freetds" ,freetds)
         ("garbage-pools" ,sbcl-garbage-pools)
         ("iterate" ,sbcl-iterate)
         ("parse-number" ,sbcl-parse-number)))
      (arguments
       `(#:phases
         (modify-phases %standard-phases
           (add-after 'unpack 'fix-paths
             (lambda* (#:key inputs #:allow-other-keys)
               (substitute* "src/mssql.lisp"
                 (("libsybdb" all)
                  (string-append (assoc-ref inputs "freetds")"/lib/" all)))
               #t)))))
      (home-page "https://github.com/archimag/cl-mssql")
      (synopsis "Common Lisp library which interacts with MS-SQL Server databases")
      (description
       "@code{cl-mssql} provides interface to connect to Microsof SQL server.  It
uses foriegn library @code{libsybdb} providing by FreeTDS project.")
      (license license:llgpl))))

(define-public ecl-mssql
  (sbcl-package->ecl-package sbcl-mssql))

(define-public cl-mssql
  (sbcl-package->cl-source-package sbcl-mssql))

(define-public sbcl-cl-mustache
  (package
    (name "sbcl-cl-mustache")
    (version "0.12.1")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/kanru/cl-mustache")
                    (commit (string-append "v" version))))
              (file-name (git-file-name "cl-mustache" version))
              (sha256
               (base32
                "149xbb6wxq1napliwm9cv729hwcgfnjli6y8hingfixz7f10lhks"))))
    (build-system asdf-build-system/sbcl)
    (home-page "https://github.com/kanru/cl-mustache")
    (synopsis "Common Lisp Mustache Template Renderer")
    (description "It's a template system implemented for Common Lisp, more
details on standard available at http://mustache.github.io")
    (license license:expat)))

(define-public cl-cl-mustache
  (sbcl-package->cl-source-package sbcl-cl-mustache))

(define-public ecl-cl-mustache
  (sbcl-package->ecl-package sbcl-cl-mustache))

(define-public sbcl-asdf-finalizers
  (let ((commit "7f537f6c598b662ae987c6acc268dd27c25977e0")
        (revision "1"))
    (package
      (name "sbcl-asdf-finalizers")
      (version (git-version "0.0.0" revision commit))
      (source (origin
                (method git-fetch)
                (uri (git-reference
                      (url "https://gitlab.common-lisp.net/asdf/asdf-finalizers")
                      (commit commit)))
                (file-name (git-file-name name version))
                (sha256
                 (base32
                  "1w56c9yjjydjshsgqxz57qlp2v3r4ilbisnsgiqphvxnhvd41y0v"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:tests? #f
         #:phases
         (modify-phases %standard-phases
           (add-after 'unpack 'disable-asdf-finalizers-test
               ;; Tests depend on asdf-finalizers which is not available on the
               ;; build phase
             (lambda _
               (delete-file "asdf-finalizers-test.asd")
               #t)))
         #:asd-systems '("asdf-finalizers"
                         "list-of")))
      (home-page "https://github.com/dimitri/cl-abnf")
      (synopsis "Enforced calling of finalizers for Lisp code")
      (description "This library allows you to implement and enforce proper
finalization of compile-time constructs while building Lisp source files.

It produces two systems: asdf-finalizers list-of")
      (license license:expat ))))

(define-public ecl-asdf-finalizers
  (sbcl-package->ecl-package sbcl-asdf-finalizers))

(define-public cl-asdf-finalizers
  (sbcl-package->cl-source-package sbcl-asdf-finalizers))

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

(define-public sbcl-cl-online-learning
  (let ((commit "87fbef8a340219e853adb3a5bf44a0470da76964")
        (revision "1"))
    (package
      (name "sbcl-cl-online-learning")
      (version (git-version "0.5" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/masatoi/cl-online-learning")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32
           "1lfq04lnxivx59nq5dd02glyqsqzf3vdn4s9b8wnaln5fs8g2ph9"))))
      (build-system asdf-build-system/sbcl)
      (native-inputs
       `(("prove" ,sbcl-prove)))
      (inputs
       `(("cl-libsvm-format" ,sbcl-cl-libsvm-format)
         ("cl-store" ,sbcl-cl-store)))
      (arguments
       `(#:test-asd-file "cl-online-learning-test.asd"
         #:asd-systems
         (list
          "cl-online-learning-test"
          "cl-online-learning")))
      (home-page "https://github.com/masatoi/cl-online-learning")
      (synopsis "Online Machine Learning for Common Lisp")
      (description
       "This library contains a collection of machine learning algorithms for
online linear classification written in Common Lisp.")
      (license license:expat))))

(define-public cl-online-learning
  (sbcl-package->cl-source-package sbcl-cl-online-learning))

(define-public ecl-cl-online-learning
  (sbcl-package->ecl-package sbcl-cl-online-learning))

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

;; <2021-04-15 Thu>
(define-public sbcl-png
  (let ((commit "11b965fe378fd0561abe3616b18ff03af5179648")
        (revision "1"))
    (package
      (name "sbcl-png")
      (version (git-version "2.1.2" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/ljosa/cl-png")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "173hqwpd0rwqf95mfx1h9l9c3i8bb0gvnpspzmmz3g5x3440czy4"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:phases
         (modify-phases %standard-phases
           (add-after 'unpack 'fix-lib-paths
             (lambda* (#:key inputs #:allow-other-keys)
               (substitute* "libpng.lisp"
                 (("\"libpng\"") (string-append "\""
                                        (assoc-ref inputs "libpng")
                                        "/lib/libpng\""))))))))
      (inputs
       `(("cffi" ,sbcl-cffi)
         ("libpng" ,libpng)))
      (home-page "https://github.com/ljosa/cl-png")
      (synopsis "Read and write PNG file format")
      (description
       "This package provides Common Lisp system @code{PNG} to operate with
Portable Network Graphics file format.")
      (license license:lgpl2.0))))

(define-public ecl-png
  (sbcl-package->ecl-package sbcl-png))

(define-public cl-png
  (sbcl-package->cl-source-package sbcl-png))

;; <2021-04-15 Thu>
(define-public sbcl-fare-mop
  (let ((commit "538aa94590a0354f382eddd9238934763434af30")
        (revision "1"))
    (package
      (name "sbcl-fare-mop")
      (version (git-version "1.0.1" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               ;; Other mirror, Fare is most active on GitHub.
               ;; https://gitlab.common-lisp.net/frideau/fare-mop
               (url "https://github.com/fare/fare-mop")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32
           "0maxs8392953fhnaa6zwnm2mdbhxjxipp4g4rvypm06ixr6pyv1c"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("close-mop" ,sbcl-closer-mop)
         ("fare-utils" ,sbcl-fare-utils)))
      (home-page "https://github.com/fare/fare-mop")
      (synopsis "General purpose Common Lisp utilities using the Meta-Object Project")
      (description
       "FARE-MOP is a small collection of utilities using the MOP.  It notably
contains a method SIMPLE-PRINT-OBJECT, and a mixin SIMPLE-PRINT-OBJECT-MIXIN
that allow you to trivially define PRINT-OBJECT methods that print the
interesting slots in your objects, which is great for REPL interaction and
debugging.")
      (license license:unlicense))))

(define-public ecl-fare-mop
  (sbcl-package->ecl-package sbcl-fare-mop))

(define-public cl-fare-mop
  (sbcl-package->cl-source-package sbcl-fare-mop))

;; <2021-04-15 Thu>
(define-public sbcl-inferior-shell
  (let ((commit "15c2d04a7398db965ea1c3ba2d49efa7c851f2c2")
        (revision "1"))
    (package
      (name "sbcl-inferior-shell")
      (version (git-version "2.0.5" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               ;; Other mirror, Fare is most active on GitHub.
               ;; https://gitlab.common-lisp.net/frideau/inferior-shell
               (url "https://github.com/fare/inferior-shell")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "02qx37zzk5j4xmwh77k2qa2wvnzvaj6qml5dh2q7b6b1ljvgcj4m"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("alexandira" ,sbcl-alexandria)
         ("trivia" ,sbcl-trivia)
         ("fare-utils" ,sbcl-fare-utils)
         ("fare-quasiquote" ,sbcl-fare-quasiquote)
         ("fare-mop" ,sbcl-fare-mop)))
      (home-page "https://github.com/fare/inferior-shell")
      (synopsis "Spawn local or remote processes and shell pipes")
      (description
       "This package provides Common Lisp system helping in scripting, it uses
@code{uiop:run-program} as a backend.")
      (license license:expat))))

(define-public ecl-inferior-shell
  (sbcl-package->ecl-package sbcl-inferior-shell))

(define-public cl-inferior-shell
  (sbcl-package->cl-source-package sbcl-fare-mop))

;; <2021-04-15 Thu>
(define-public sbcl-cl-svg
  (let ((commit "1e988ebd2d6e2ee7be4744208828ef1b59e5dcdc")
        (revision "1"))
    (package
      (name "sbcl-cl-svg")
      (version (git-version "0.0.3" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/wmannis/cl-svg")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "11rmzimy6j7ln7q5y1h2kw1225rsfb6fpn89qjcq7h5lc8fay0wz"))))
      (build-system asdf-build-system/sbcl)
      (home-page "https://github.com/wmannis/cl-svg")
      (synopsis "Write SVG file format")
      (description
       "This package provides Common Lisp system @code{CL-SVG} to produce
Scalable Vector Graphics files.")
      (license license:expat))))

(define-public ecl-cl-svg
  (sbcl-package->ecl-package sbcl-cl-svg))

(define-public cl-svg
  (sbcl-package->cl-source-package sbcl-fare-mop))

;; <2021-04-15 Thu>
;; NOTE: (Sharlatan-20210425T171922+0100): Not aplicable with Guix licence policy
(define-public sbcl-weir
  (let ((commit "beb4f6f47f0538d2c6d73b1d3c9d7f58ac8aa0e9")
        (revision "1"))
    (package
      (name "sbcl-weir")
      (version (git-version "4.9.1" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/inconvergent/weir")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "1vm10kb51g4ba2nl5yixswkk47vwqgwqdlz5031xfff8h9z2a6ad"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       ;; FIXME: (Sharlatan-20210415T165228+0100): All tests have been passed
       ;; but terminated with error status after `check' phase is completed.
       ;;
       ;;  tests:  303
       ;;  fails:  0
       ;;  passes: 303
       ;; "--- at least one catastrophe! ---"
       ;; terminated with status: 1
       ;; ;
       ;; ; compilation unit aborted
       ;; ;   caught 1 fatal ERROR condition
       ;; ;   caught 3 STYLE-WARNING conditions
       ;; ;   printed 91 notes
       `(#:tests? #f))
      (inputs
       `(("alexandira" ,sbcl-alexandria)
         ("cl-json" ,sbcl-cl-json)
         ("cl-svg" ,sbcl-cl-svg)
         ("inferior-shell" ,sbcl-inferior-shell)
         ("lparallel" ,sbcl-lparallel)
         ("png" ,sbcl-png)
         ("split-sequence" ,sbcl-split-sequence)
         ("zpng" ,sbcl-zpng)))
      (home-page "https://github.com/inconvergent/weir")
      (synopsis "System for making generative systems")
      (description
       "This package provides Common Lisp system for generating 2d and 3d vector
artworks with SVG and PNG export format.")
      (license license:expat))))

(define-public ecl-weir
  (sbcl-package->ecl-package sbcl-weir))

(define-public cl-weir
  (sbcl-package->cl-source-package sbcl-fare-mop))

;; TODO: (Sharlatan-20210415T222020+0100):
(define-public sbcl-sdl2
  (let ((commit "bb2aa2a41cf799e3bb1ddf50de41fe389c6db668")
        (revision "1"))
    (package
      (name "sbcl-sdl2")
      (version (git-version "0.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/lispgames/cl-sdl2")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "1a4904310z2wwq80grnlixmyz30452vgd4lh74y105j2yrr43z97"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:tests? #f
         ;; #:asd-files '("sdl2.asd")
         ;; #:asd-systems '("sdl2")
         #:phases
         (modify-phases %standard-phases
           (add-after 'unpack 'fix-paths
             (lambda* (#:key inputs #:allow-other-keys)
               (substitute* "src/library.lisp"
                 (("libSDL2-2.0.so.0" all)
                  (string-append (assoc-ref inputs "libsdl2") "/lib/" all)))
               #t)))))
      (inputs
       `(("alexandria" ,sbcl-alexandria)
         ("cl-autowrap" ,sbcl-cl-autowrap)
         ("cl-ppcre" ,sbcl-cl-ppcre)
         ("libsdl2" ,sdl2)
         ("trivial-channels" ,sbcl-trivial-channels)
         ("trivial-features" ,sbcl-trivial-features)))
      (home-page "https://github.com/lispgames/cl-sdl2")
      (synopsis "Common Lisp bindings for SDL2 using C2FFI")
      (description
       "This pckage provides CL-SDL2 Commn Lisp wrapper system for SDL 2.0 C
Library.")
      (license license:expat))))

(define-public ecl-sdl2
  (sbcl-package->ecl-package sbcl-sdl2))

(define-public cl-sdl2
  (sbcl-package->cl-source-package sbcl-sdl2))

;; <2021-04-29 Thu>
(define-public sbcl-unit-test
  (let ((commit "266afaf4ac091fe0e8803bac2ae72d238144e735")
        (revision "1"))
    (package
      (name "sbcl-unit-test")
      (version (git-version "0.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/hanshuebner/unit-test")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32
           "11hpksz56iqkv7jw25p2a8r3n9dj922fyarn16d98589g6hdskj9"))))
      (build-system asdf-build-system/sbcl)
      (home-page "https://github.com/hanshuebner/unit-test")
      (synopsis "Unit-testing framework for common lisp")
      (description
"Unit-testing framework for common lisp")
      (license license:unlicense))))

(define-public ecl-unit-test
  (sbcl-package->ecl-package sbcl-unit-test))

(define-public cl-unit-test
  (sbcl-package->cl-source-package sbcl-unit-test))

;; <2021-04-29 Thu>
(define-public sbcl-bknr-datastore
  (let ((commit "c98d44f47cc88d19ff91ca3eefbd9719a8ace022")
        (revision "1"))
    (package
      (name "sbcl-bknr-datastore")
      (version (git-version "0.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               ;; Some other similar repository
               ;; https://github.com/sharplispers/bknr.datastore
               (url "https://github.com/hanshuebner/bknr-datastore")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "1vi3w65fnczqvswkm381n6liqfrzjrg40y698qvj7skj28dm5vrm"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:asd-systems
         '("bknr.datastore"
           "bknr.impex"
           "bknr.indices"
           "bknr.skip-list"
           "bknr.utils"
           "bknr.xml")
         #:phases
         (modify-phases %standard-phases
           (add-after 'unpack 'chdir
             (lambda _
               (chdir "src")
               #t)))))
      (native-inputs
       `(("unit-test" ,sbcl-unit-test)))
      (inputs
       `(("alexandria" ,sbcl-alexandria)
         ("bordeaux-threads" ,sbcl-bordeaux-threads)
         ("closer-mop" ,sbcl-closer-mop)
         ("cl-interpol" ,sbcl-cl-interpol)
         ("cl-ppcre" ,sbcl-cl-ppcre)
         ("cl-store" ,sbcl-cl-store)
         ("cxml" ,sbcl-cxml)
         ("flexi-streams" ,sbcl-flexi-streams)
         ("md5" ,sbcl-md5)
         ("trivial-utf-8" ,sbcl-trivial-utf-8)
         ("yason" ,sbcl-yason)))
      (home-page "https://github.com/hanshuebner/bknr-datastore")
      (synopsis "MOP-Based in-memory database with transactions for Common Lisp")
      (description
       "BKNR.DATASTORE is an in-memory CLOS based data store.  This package
produces 6 systems: BKNR.DATASTORE BKNR.IMPEX BKNR.INDICES BKNR.SKIP-LIST
BKNR.UTILS BKNR.XML")
      (license license:bsd-2))))

;; NOTE: (Sharlatan-20210429T191426+0100):
;; There is no port for ECL in upstream yet
;; (define-public ecl-bknr-datastore
;;   (sbcl-package->ecl-package sbcl-bknr-datastore))

(define-public cl-bknr-datastore
  (sbcl-package->cl-source-package sbcl-bknr-datastore))
