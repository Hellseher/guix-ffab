(use-modules (guix packages)
             (guix build lisp-utils)
             (guix build-system asdf)
             (guix download)
             (guix git-download)
             ((guix licenses) #:prefix license:)
             (gnu packages)
             (gnu packages lisp)
             (gnu packages lisp-xyz))

(define-public sbcl-cl-log
  (package
   (name "sbcl-cl-log")
   (version "1.0.1")
   (source
    (origin
     (method git-fetch)
     (uri (git-reference
           (url "https//github.com/nicklevine/cl-log")
           (commit "8f4b766d51e02245c310526cf1e4534ce634f837")))
     (sha256
      (base32 "1s8sw34yafh8brdnafbgi77hwbrixcl8fhkshjqzphbqi2nkp4l7"))
     (file-name (git-file-name "cl-log" version))))
   (build-system asdf-build-system/sbcl)
   (synopsis "Common Lisp general purpose logging utility")
   (description "CL-LOG is a general purpose logging utility, loosely modelled
in some respects after Gary King's Log5. Its features include: logging to
several destinations at once, via \"messengers\", each messenger is tailored to
accept some log messages and reject others, and this tailoring can be changed
on-the-fly, very rapid processing of messages which are rejected by all
messengers, fully independent use of the utility by several different
sub-systems in an application, support for messengers which cl:format text to a
stream, support for messengers which do not invoke cl:format, timestamps in
theory accurate to internal-time-units-per-second.")
   (home-page "https://github.com/nicklevine/cl-log")
   (license license:expat)))

(define-public pgloader
  (package
    (name "pgloader")
    (version "v3.6.2")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/dimitri/pgloader")
                    (commit version)))
              (sha256
               (base32 "0418jzkb6qrfjv9v6f090dzb1rkp3xc2yry5fi7ph8lq4fsppxzl"))
              (file-name (git-file-name name version))))
    (build-system asdf-build-system/sbcl)
    (inputs
     `(("uiop" sbcl-uiop)
       ("cl-log" ,sbcl-cl-log)
       ("postmodern" ,sbcl-postmodern)
       ("cl-postgres" ,sbcl-cl-postgres)
       ("simple-date" ,sbcl-simple-date)
       ("qmynd" ,sbcl-qmynd)
       ("split-sequence" ,sbcl-split-sequence)
       ("cl-csv" ,sbcl-cl-csv)
       ("cl-fad" ,sbcl-cl-fad)
       ("lparallel" ,sbcl-lparallel)
       ("esrap" ,sbcl-esrap)
       ("alexandria" ,sbcl-alexandria)
       ("drakma" ,sbcl-drakma)
       ("flexi-streams" ,sbcl-flexi-streams)
       ("usocket" ,sbcl-usocket)
       ("local-time" ,sbcl-local-time)
       ("command-line-argume" ,sbcl-command-line-argume)
       ("abnf" ,sbcl-abnf)
       ("db3" ,sbcl-db3)
       ("ixf" ,sbcl-ixf)
       ("py-configparser" ,sbcl-py-configparser)
       ("sqlite" ,sbcl-sqlite)
       ("cl-base64" ,sbcl-cl-base64)
       ("trivial-backtrace" ,sbcl-trivial-backtrace)
       ("cl-markdown" ,sbcl-cl-markdown)
       ("metabang-bind" ,sbcl-metabang-bind)
       ("mssql" ,sbcl-mssql)
       ("uuid" ,sbcl-uuid)
       ("quri" ,sbcl-quri)
       ("cl-ppcre" ,sbcl-cl-ppcre)
       ("cl-mustache" ,sbcl-cl-mustache)
       ("yason" ,sbcl-yason)
       ("closer-mop" ,sbcl-closer-mop)
       ("zs3" ,sbcl-zs3)))
    (home-page "https://github.com/dimitri/pgloader")
    (synopsis "Migrate to PostgreSQL in a single command!")
    (description "")
    (license license:public-domain)))
