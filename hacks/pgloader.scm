(use-modules (guix packages)
             (guix build lisp-utils)
             (guix build-system asdf)
             (guix build-system gnu)
             (guix download)
             (guix git-download)
             ((guix licenses) #:prefix license:)
             (gnu packages)
             (gnu packages lisp)
             (gnu packages python)
             (gnu packages lisp-xyz))

(define-public pgloader
  (package
    (name "pgloader")
    (version "3.6.2")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/dimitri/pgloader")
                    (commit (string-append "v" version))))
              (sha256
               (base32"06i1jd2za3ih5caj2b4vzlzags5j65vv8dfdbz0ggdrp40wfd5lh"))
              (file-name (git-file-name name version))))
    (build-system gnu-build-system)
    (native-inputs
     `(("buildapp" ,buildapp)
       ("sbcl" ,sbcl)
       ("cffi" ,sbcl-cffi)
       ("python" ,python)))
    (inputs
     `(("alexandria" ,sbcl-alexandria)
       ("cl-abnf" ,sbcl-cl-abnf)
       ("cl-base64" ,sbcl-cl-base64)
       ("cl-csv" ,sbcl-cl-csv)
       ("cl-fad" ,sbcl-cl-fad)
       ("cl-log" ,sbcl-cl-log)
       ("cl-markdown" ,sbcl-cl-markdown)
       ("cl-mustache" ,sbcl-cl-mustache)
       ("cl-ppcre" ,sbcl-cl-ppcre)
       ("cl-sqlite" ,sbcl-cl-sqlite)
       ("closer-mop" ,sbcl-closer-mop)
       ("command-line-arguments" ,sbcl-command-line-arguments)
       ("db3" ,sbcl-db3)
       ("drakma" ,sbcl-drakma)
       ("esrap" ,sbcl-esrap)
       ("flexi-streams" ,sbcl-flexi-streams)
       ("ixf" ,sbcl-ixf)
       ("local-time" ,sbcl-local-time)
       ("lparallel" ,sbcl-lparallel)
       ("metabang-bind" ,sbcl-metabang-bind)
       ("mssql" ,sbcl-mssql)
       ("postmodern" ,sbcl-postmodern)
       ("py-configparser" ,sbcl-py-configparser)
       ("qmynd" ,sbcl-qmynd)
       ("quri" ,sbcl-quri)
       ("split-sequence" ,sbcl-split-sequence)
       ("trivial-backtrace" ,sbcl-trivial-backtrace)
       ("usocket" ,sbcl-usocket)
       ("uuid" ,sbcl-uuid)
       ("yason" ,sbcl-yason)
       ("zs3" ,sbcl-zs3)))
    (arguments
     ;; NOTE: (Sharlatan-20210119T211511+0000) Testes are disabled due to be
     ;; dependent on Quicklisp, main build target is `pgloader-standalone' which
     ;; does not require Quicklisp workarounds. There is no `install' target
     ;; configured in Makefile.
     `(#:tests? #f
       #:strip-binaries? #f
       #:make-flags
       (list "pgloader-standalone" "BUILDAPP_SBCL=buildapp")
       #:phases
       (modify-phases %standard-phases
         (delete 'configure)
         (add-after 'unpack 'set-home
           (lambda _
             (setenv "HOME" "/tmp")
             #t))
         (add-after 'unpack 'patch-Makefile
           (lambda _
             (substitute* "Makefile"
               (("--sbcl.*") "--sbcl $(CL) --asdf-path . \\\n"))
             #t))
         (replace 'install
           (lambda* (#:key outputs #:allow-other-keys)
             (let ((bin (string-append (assoc-ref outputs "out") "/bin")))
               (mkdir-p bin)
               (install-file "build/bin/pgloader"  bin))
             #t)))))
    (home-page "https://pgloader.io/")
    (synopsis "Migration to PostgreSQL tool")
    (description
     "It allows to migrate from CSV, DB3, iXF, SQLite, MS-SQL, MySQL to
PostgreSQL.")
    ;; NOTE: (Sharlatan-20210119T212023+0000) It is PostgreSQL license
    ;; https://www.postgresql.org/about/licence/ a liberal Open Source license,
    ;; similar to the BSD or MIT licenses.
    (license license:expat)))

pgloader
