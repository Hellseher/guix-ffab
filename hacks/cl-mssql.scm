(use-modules (guix packages)
             (guix utils)
             (guix build-system asdf)
             (guix build-system gnu)
             (guix build-system trivial)
             (guix download)
             (guix git-download)
             ((guix licenses) #:prefix license:)
             (gnu packages)
             (gnu packages pkg-config)
             (gnu packages lisp)
             (gnu packages lisp-xyz)
             (ice-9 match))

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
    (synopsis "It's a free implementation of Sybase's DB-Library, CT-Library,
and ODBC libraries")
    (description
     "MS SQL and Sybase client library (static libs and headers) FreeTDS is an
implementation of the Tabular DataStream protocol, used for connecting to MS SQL
and Sybase servers over TCP/IP.")
    (license license:gpl2+)))

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

cl-mssql
