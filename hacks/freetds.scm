(use-modules ((guix licenses) #:prefix license:)
             (gnu packages compression)
             (gnu packages base)
             (gnu packages image)
             (gnu packages documentation)
             (gnu packages gettext)
             (gnu packages gperf)
             (gnu packages perl)
             (gnu packages autotools)
             (gnu packages pkg-config)
             (gnu packages perl)
             (gnu packages)
             (guix build-system gnu)
             (guix git-download)
             (guix download)
             (guix packages)
             )

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

freetds
