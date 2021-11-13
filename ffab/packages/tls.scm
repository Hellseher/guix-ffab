(define-module (ffab packages tls)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages xml)
  #:use-module (guix build-system cmake)
  #:use-module (guix build-system gnu)
  #:use-module (guix build-system python)
  #:use-module (guix git-download)
  #:use-module (gnu packages autotools)
  #:use-module (guix packages))

(define-public wolfssl
  (package
    (name "wolfssl")
    (version "5.0.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                     (url "https://github.com/wolfSSL/wolfssl")
                     (commit (string-append "v" version "-stable"))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "18a2dw7piiqriqcaiw7c0wlzlh0j92v422w67gsw2i1nzvw47zxf"))))
    (build-system gnu-build-system)
    (arguments
     '(#:configure-flags
       '("--enable-reproducible-build")))
    (native-inputs
     `(("autoconf" ,autoconf)
       ("automake" ,automake)
       ("libtool" ,libtool)))
    (synopsis "SSL/TLS implementation")
    (description "The wolfSSL embedded SSL library (formerly CyaSSL) is an
SSL/TLS library written in ANSI C and targeted for embedded, RTOS, and
resource-constrained environments - primarily because of its small size, speed,
and feature set.  wolfSSL supports industry standards up to the current TLS 1.3
and DTLS 1.2, is up to 20 times smaller than OpenSSL, and offers progressive
ciphers such as ChaCha20, Curve25519, NTRU, and Blake2b.")
    (home-page "https://www.wolfssl.com/")
    (license license:gpl2+))) ; Audit
