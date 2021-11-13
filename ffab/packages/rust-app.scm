(define-module (ffab packages rust-app)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages crates-io)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages tls)
  #:use-module (gnu packages rust)
  #:use-module (guix build-system cargo)
  #:use-module (guix download)
  #:use-module (guix git-download)
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

(define-public rust-analyzer
  (package
    (name "rust-analyzer")
    (version "2021-11-01")
    (source
     (origin
       ;; The crate at "crates.io" is empty.
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/rust-analyzer/rust-analyzer")
             (commit version)))
       (file-name (git-file-name name version))
       (sha256
        (base32
         "11sp0b9ay9a1gir84kpggv4ndxp8df4r009g6nlh2mifird7gdxl"))))
    (build-system cargo-build-system)
    (arguments
     `(#:rust ,rust-1.52
       #:install-source? #f             ; virtual manifest
       #:cargo-test-flags
       '("--release" "--"
         "--skip=tests::test_version_check"         ;; It need rustc's version
         ;; FIXME: Guix's rust not install source in %out/lib/rustlib/src/rust
         ;; so "can't load standard library from sysroot"
         "--skip=tests::test_loading_rust_analyzer"
         "--skip=tidy::cargo_files_are_tidy"        ;; Not need
         "--skip=tidy::check_licenses"              ;; It run cargo metadata.
         "--skip=tidy::check_merge_commits"         ;; It run git rev-list.
         "--skip=tidy::check_code_formatting"       ;; Need rustfmt as cargo fmt
         "--skip=tidy::generate_grammar"            ;; Same
         "--skip=tidy::generate_assists_tests")     ;; Same
       #:cargo-inputs
       (("rust-always-assert" ,rust-always-assert-0.1)
        ("rust-anyhow" ,rust-anyhow-1)
        ("rust-anymap" ,rust-anymap-0.12)
        ("rust-arrayvec" ,rust-arrayvec-0.7)
        ("rust-backtrace" ,rust-backtrace-0.3)
        ("rust-cargo-metadata" ,rust-cargo-metadata-0.13)
        ("rust-cfg-if" ,rust-cfg-if-1)
        ("rust-chalk-ir" ,rust-chalk-ir-0.68)
        ("rust-chalk-recursive" ,rust-chalk-recursive-0.68)
        ("rust-chalk-solve" ,rust-chalk-solve-0.68)
        ("rust-countme" ,rust-countme-2)
        ("rust-cov-mark" ,rust-cov-mark-1)
        ("rust-crossbeam-channel" ,rust-crossbeam-channel-0.5)
        ("rust-dashmap" ,rust-dashmap-4)
        ("rust-dissimilar" ,rust-dissimilar-1)
        ("rust-dot" ,rust-dot-0.1)
        ("rust-drop-bomb" ,rust-drop-bomb-0.1)
        ("rust-either" ,rust-either-1)
        ("rust-ena" ,rust-ena-0.14)
        ("rust-env-logger" ,rust-env-logger-0.8)
        ("rust-expect-test" ,rust-expect-test-1)
        ("rust-flate2" ,rust-flate2-1)
        ("rust-fst" ,rust-fst-0.4)
        ("rust-home" ,rust-home-0.5)
        ("rust-indexmap" ,rust-indexmap-1)
        ("rust-itertools" ,rust-itertools-0.10)
        ("rust-jod-thread" ,rust-jod-thread-0.1)
        ("rust-libc" ,rust-libc-0.2)
        ("rust-libloading" ,rust-libloading-0.7)
        ("rust-log" ,rust-log-0.4)
        ("rust-lsp-server" ,rust-lsp-server-0.5)
        ("rust-lsp-types" ,rust-lsp-types-0.89)
        ("rust-memmap2" ,rust-memmap2-0.2)
        ("rust-mimalloc" ,rust-mimalloc-0.1)
        ("rust-miow" ,rust-miow-0.3)
        ("rust-notify" ,rust-notify-5)
        ("rust-object" ,rust-object-0.24)
        ("rust-once-cell" ,rust-once-cell-1)
        ("rust-oorandom" ,rust-oorandom-11.1)
        ("rust-parking-lot" ,rust-parking-lot-0.11)
        ("rust-perf-event" ,rust-perf-event-0.4)
        ("rust-proc-macro2" ,rust-proc-macro2-1)
        ("rust-pulldown-cmark" ,rust-pulldown-cmark-0.8)
        ("rust-pulldown-cmark-to-cmark" ,rust-pulldown-cmark-to-cmark-6)
        ("rust-quote" ,rust-quote-1)
        ("rust-rayon" ,rust-rayon-1)
        ("rust-rowan" ,rust-rowan-0.13)
        ("rust-rustc-ap-rustc-lexer" ,rust-rustc-ap-rustc-lexer-721)
        ("rust-rustc-hash" ,rust-rustc-hash-1)
        ("rust-salsa" ,rust-salsa-0.17)
        ("rust-scoped-tls" ,rust-scoped-tls-1)
        ("rust-serde" ,rust-serde-1)
        ("rust-serde-json" ,rust-serde-json-1)
        ("rust-serde-path-to-error" ,rust-serde-path-to-error-0.1)
        ("rust-smallvec" ,rust-smallvec-1)
        ("rust-smol-str" ,rust-smol-str-0.1)
        ("rust-snap" ,rust-snap-1)
        ("rust-text-size" ,rust-text-size-1)
        ("rust-threadpool" ,rust-threadpool-1)
        ("rust-tikv-jemalloc-ctl" ,rust-tikv-jemalloc-ctl-0.4)
        ("rust-tikv-jemallocator" ,rust-tikv-jemallocator-0.4)
        ("rust-tracing" ,rust-tracing-0.1)
        ("rust-tracing-subscriber" ,rust-tracing-subscriber-0.2)
        ("rust-tracing-tree" ,rust-tracing-tree-0.1)
        ("rust-ungrammar" ,rust-ungrammar-1)
        ("rust-url" ,rust-url-2)
        ("rust-walkdir" ,rust-walkdir-2)
        ("rust-winapi" ,rust-winapi-0.3)
        ("rust-write-json" ,rust-write-json-0.1)
        ("rust-xflags" ,rust-xflags-0.2)
        ("rust-xshell" ,rust-xshell-0.1))
       #:phases
       (modify-phases %standard-phases
         (add-after 'unpack 'patch-build-failures
           (lambda _
             (chmod ".cargo/config" 420)
             #t))
         (add-before 'check 'fix-tests
           (lambda* (#:key inputs #:allow-other-keys)
             (let ((bash (string-append "#!" (which "bash"))))
               (with-directory-excursion "crates/syntax/test_data/lexer/ok"
                 (substitute* "0010_single_line_comments.txt"
                   (("SHEBANG 19")
                    (string-append "SHEBANG "
                                   (number->string (string-length bash))))
                   (("#!/usr/bin/env bash") bash))))))
         (replace 'install
           (lambda* (#:key outputs #:allow-other-keys)
             (install-file "target/release/rust-analyzer"
                           (string-append (assoc-ref outputs "out")
                                          "/bin")))))))
    (home-page "https://rust-analyzer.github.io/")
    (synopsis "Experimental Rust compiler front-end for IDEs")
    (description "Rust-analyzer is a modular compiler frontend for the Rust
language.  It is a part of a larger rls-2.0 effort to create excellent IDE
support for Rust.")
    (license (list license:expat license:asl2.0))))
