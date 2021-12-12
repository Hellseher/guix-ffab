(define-module (ffab packages guile-xyz)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages guile)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages guile-xyz)
  #:use-module (gnu packages texinfo)
  #:use-module (gnu packages tls)
  #:use-module (gnu packages autotools)
  #:use-module (guix build-system gnu)
  #:use-module (guix git-download)
  #:use-module (guix packages))

(define-public guile-gitlab
  (package
    (name "guile-gitlab")
    (version "0.1.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/artyom-poptsov/guile-gitlab")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32
         "1vpwwnxxglla8ci9mz6smm3nyqvdz2k082qyrp36ad14v9y70l86"))))
    (build-system gnu-build-system)
    (native-inputs
     `(("autoconf" ,autoconf)
       ("automake" ,automake)
       ("pkg-config" ,pkg-config)
       ("texinfo" ,texinfo)))
    (inputs
     `(("guile"        ,guile-2.2)
       ("guile-json"   ,guile-json-1)
       ("guile-gnutls" ,guile2.2-gnutls)))
    (propagated-inputs
     `(("guile-lib" ,guile2.2-lib)))
    (arguments
     '(#:phases
       (modify-phases %standard-phases
         (add-before 'configure 'set-guilesitedir
           (let ((files (find-files "." "Makefile.in")))
             (lambda _
               (substitute* files
                 (("^guilesitedir =.*$")
                  "guilesitedir = \
$(datadir)/guile/site/$(GUILE_EFFECTIVE_VERSION)\n"))
               #t)))
         (add-after 'unpack 'autoreconf
           (lambda _
             (zero? (system* "autoreconf" "-vfi")))))))
    (home-page "https://github.com/artyom-poptsov/guile-gitlab")
    (synopsis "GitLab module for Guile")
    (description
     "GNU Guile interface to GitLab Community Edition REST API.
This package provides @samp{gitlab-cli} command line tool for interacting with
a GitLab instance.")
    (license license:gpl3)))
