(define-module (hellseher packages astronomy)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix build-system cargo)
  #:use-module (guix download)
  #:use-module (gnu packages crates-io)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages tls)
  #:use-module (guix packages))

(define-public drill
  (package
    (name "drill")
    (version "0.7.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "drill" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1m73d7rzi0p5c1hn0081d2235kcyapdza7h0vqf5jhnirpnjn793"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
        (("rust-async-trait" ,rust-async-trait-0.1)
         ("rust-clap" ,rust-clap-2)
         ("rust-colored" ,rust-colored-1)
         ("rust-csv" ,rust-csv-1)
         ("rust-futures" ,rust-futures-0.3)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-linked-hash-map" ,rust-linked-hash-map-0.5)
         ("rust-num-cpus" ,rust-num-cpus-1)
         ("rust-rand" ,rust-rand-0.7)
         ("rust-regex" ,rust-regex-1)
         ("rust-reqwest" ,rust-reqwest-0.10)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-tokio" ,rust-tokio-0.2)
         ("rust-url" ,rust-url-2)
         ("rust-yaml-rust" ,rust-yaml-rust-0.4))))
    (native-inputs
     `(("pkg-config" ,pkg-config)))
    (inputs
     `(("openssl" ,openssl)))
    (home-page "https://github.com/fcsonline/drill")
    (synopsis "HTTP load testing application")
    (description
      "Drill is a HTTP load testing application written in Rust inspired by
Ansible syntax.  Benchmark files can be written in YAML.")
    (license license:gpl3)))
