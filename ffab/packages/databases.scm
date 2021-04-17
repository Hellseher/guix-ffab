(define-module (ffab packages databases)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix build-system gnu)
  #:use-module (gnu packages lisp-xyz)
  #:use-module (gnu packages lisp)
  #:use-module (gnu packages python)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix packages))

;; TODO: (Sharlatan-20210415T223822+0100): New version released 1.2.20
(define-public freetds
  (package
    (name "freetds")
    (version "1.2.18")
    (source
     (origin
       (method url-fetch)
       (uri (string-append
             "ftp://ftp.freetds.org/pub/freetds/stable/" name "-" version ".tar.gz"))
       (sha256
        (base32 "1hspvwxwdd1apadsy2b40dpjik8kfwcvdamvhpg3lnm15n02fb50"))))
    (build-system gnu-build-system)
    (arguments
     ;; NOTE: (Sharlatan-20210110213908+0000) some tests require DB connection,
     ;; disabled for now.
     `(#:tests? #f))
    (home-page "http://www.freetds.org/")
    (synopsis "FreeTDS is a free implementation of Sybase's DB-Library,
CT-Library, and ODBC libraries")
    (description
     "MS SQL and Sybase client library (static libs and headers) FreeTDS is an
implementation of the Tabular DataStream protocol, used for connecting to MS SQL
and Sybase servers over TCP/IP.")
    (license license:gpl2+)))

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
