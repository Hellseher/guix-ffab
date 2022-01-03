(define-module (ffab packages golang)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages base)
  #:use-module (gnu packages golang)
  #:use-module ((gnu packages syncthing) #:select (go-github-com-kballard-go-shellquote))
  #:use-module (gnu packages check)
  #:use-module (gnu packages vim)
  #:use-module (guix build-system go)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix packages))

(define-public go-golang-org-x-tools
  (package
    (name "go-golang-org-x-tools")
    (version "0.1.8")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://go.googlesource.com/tools")
             (commit (string-append "v" version))))
       (file-name (string-append "go.googlesource.com-tools-"
                                 version "-checkout"))
       (sha256
        (base32 "07mfghhp4ry934hab8845jcyin6b7niwbpbz7x5kclmf1sy1j97f"))))
    (build-system go-build-system)
    (arguments
     `(#:import-path "golang.org/x/tools"
       ;; Source-only package
       #:tests? #f
       #:phases
       (modify-phases %standard-phases
         ;; Source-only package
         (delete 'build))))
    (synopsis "Tools that support the Go programming language")
    (description "This package provides miscellaneous tools that support the
Go programming language.")
    (home-page "https://go.googlesource.com/tools/")
    (license license:bsd-3)))

;; 20210710T203819+0100
(define-public go-golang-org-x-tools-gopls
  (package
    (version "0.7.4")
    (name "go-golang-org-x-tools-gopls")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://go.googlesource.com/tools")
             (commit (string-append "gopls/v" version))))
       (file-name (string-append "gopls-" version))
       (sha256
        (base32 "07mfghhp4ry934hab8845jcyin6b7niwbpbz7x5kclmf1sy1j97f"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "golang.org/x/tools/gopls"
       #:unpack-path "golang.org/x/tools"))
    (native-inputs
     (list go-github-com-sergi-go-diff
           go-golang-org-x-xerrors
           go-golang.org-x-sync-errgroup
           go-mvdan-cc-gofumpt
           go-mvdan-cc-xurls-v2))
    (synopsis "Official language server for the Go language")
    (description
     "@code{gopls} (pronounced \"Go please\") is the official Go language server
developed by the Go team. It provides IDE features to any LSP-compatible
editor.")
    (home-page "https://pkg.go.dev/golang.org/x/tools/gopls")
    (license license:bsd-3)))

;; 20210710T203807+0100
(define-public go-mvdan-cc-xurls-v2
  (package
    (name "go-mvdan-cc-xurls-v2")
    (version "2.2.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/mvdan/xurls")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0w7i1yfl5q24wvmsfb3fz1zcqsdh4c6qikjnmswxbjc7wva8rngg"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "mvdan.cc/xurls/v2"))
    (propagated-inputs
     (list go-gopkg-in-check-v1
           go-github-com-rogpeppe-go-internal))
    (home-page "https://mvdan.cc/xurls/v2")
    (synopsis "xurls")
    (description
      "Package xurls extracts urls from plain text using regular expressions.")
    (license license:bsd-3)))

(define-public go-mvdan-cc-gofumpt
  (package
    (name "go-mvdan-cc-gofumpt")
    (version "0.1.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/mvdan/gofumpt")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0q97nywfs7i2zm9hdhm0df3kdaj6lrrps151j75nl1fgs0kp2wrh"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "mvdan.cc/gofumpt"
       ;; FIXME: Test faild with:
       ;;
       ;; imports gopkg.in/errgo.v2/fmt/errors: cannot find package "gopkg.in/errgo.v2/fmt/errors" in any of:
       ;; /gnu/store/...-go-1.14.15/src/gopkg.in/errgo.v2/fmt/errors (from $GOROOT)
       ;; /tmp/guix-build-go-mvdan-cc-gofumpt-0.1.1.drv-0/src/gopkg.in/errgo.v2/fmt/errors (from $GOPATH)
       ;;
       ;; even if the package 'gopkg-in-errgo-fmt-errors' is in in inputs
       #:tests? #f))
    (native-inputs
     `(("gopkg-in-errgo-fmt-errors" ,gopkg-in-errgo-fmt-errors)))
    (propagated-inputs
      `(("go-github-com-google-go-cmp-cmp" ,go-github-com-google-go-cmp-cmp)
        ("go-github-com-rogpeppe-go-internal" ,go-github-com-rogpeppe-go-internal)
        ("go-golang-org-x-mod" ,go-golang-org-x-mod)))
    (home-page "https://github.com/mvdan/gofumpt")
    (synopsis "More strict version then official gofmt")
    (description
      "Enforce a stricter format than @code{gofmt}, while being backwards
compatible.  That is, @code{gofumpt} is happy with a subset of the formats that
@code{gofmt} is happy with.

The tool is a modified fork of @code{gofmt}, so it can be used as a drop-in
replacement.  Running @code{gofmt} after @code{gofumpt} should be a no-op.")
    (license license:bsd-3)))

;; 20210710T210538+0100
(define-public go-golang-org-x-mod
  (package
    (name "go-golang-org-x-mod")
    (version "0.4.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://go.googlesource.com/mod")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0z1p17i291z2k6va08i80ljyzyij2b6qsz78lnz0wi8zsnkfdz43"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "golang.org/x/mod"
       ;; Source-only package
       #:tests? #f
       #:phases
       (modify-phases %standard-phases
         ;; Source-only package
         (delete 'build))))
    (propagated-inputs
     `(("go-golang-org-x-xerrors" ,go-golang-org-x-xerrors)
       ("go-golang-org-x-tools" ,go-golang-org-x-tools)
       ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)))
    (home-page "https://golang.org/x/mod")
    (synopsis "mod")
    (description
     "This package holds tools for writing that work directly with Go module
mechanics.  That is, it is for direct manipulation of Go modules themselves.")
    (license license:bsd-3)))

(define-public go-github-com-hashicorp-hcl
  (package
    (name "go-github-com-hashicorp-hcl")
    (version "1.0.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/hashicorp/hcl")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32
         "0q6ml0qqs0yil76mpn4mdx4lp94id8vbv575qm60jzl1ijcl5i66"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/hashicorp/hcl"))
    (native-inputs
     `(("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)))
    (synopsis "Go implementation of HashiCorp Configuration Language V1")
    (description
     "This package contains the main implementation of the @acronym{HCL,
HashiCorp Configuration Language}.  HCL is designed to be a language for
expressing configuration which is easy for both humans and machines to read.")
    (home-page "https://github.com/hashicorp/hcl")
    (license license:mpl2.0)))

(define-public go-github-com-hashicorp-hcl-v2
  (package
    (name "go-github-com-hashicorp-hcl-v2")
    (version "2.11.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/hashicorp/hcl")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32
         "0f9flmmkj7fr1337fc56cqy73faq87ix375hnz3id4wc023przv1"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/hashicorp/hcl/v2"))
    (native-inputs
     `(("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)))
    (inputs
     `(("go-github-com-agext-levenshtein"
        ,go-github-com-agext-levenshtein)
       ("go-github-com-mitchellh-go-wordwrap"
        ,go-github-com-mitchellh-go-wordwrap)
       ("go-github-com-zclconf-go-cty"
        ,go-github-com-zclconf-go-cty)
       ("go-github-com-apparentlymart-go-textseg-v13"
        ,go-github-com-apparentlymart-go-textseg-v13)))
    (synopsis "Go implementation of HashiCorp Configuration Language V2")
    (description
     "This package contains the main implementation of the @acronym{HCL,
HashiCorp Configuration Language}.  HCL is designed to be a language for
expressing configuration which is easy for both humans and machines to read.")
    (home-page "https://github.com/hashicorp/hcl")
    (license license:mpl2.0)))

(define-public go-github-com-agext-levenshtein
  (package
    (name "go-github-com-agext-levenshtein")
    (version "1.2.3")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/agext/levenshtein")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0a26c8pp9h5w66bhd9vb6lpvmhp30mz46pnh3a8vrjx50givb2lw"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/agext/levenshtein"))
    (home-page "https://github.com/agext/levenshtein")
    (synopsis "Calculating the Levenshtein distance between two strings in Go")
    (description
      "Package levenshtein implements distance and similarity metrics for
strings, based on the Levenshtein measure.")
    (license license:asl2.0)))

(define-public go-github-com-apparentlymart-go-textseg-v13
  (package
    (name "go-github-com-apparentlymart-go-textseg-v13")
    (version "13.0.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/apparentlymart/go-textseg")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0gdgi0d52rq1xsdn9icc8lghn0f2q927cifmrlfxflf7bf21vism"))))
    (build-system go-build-system)
    (arguments
     '(#:unpack-path "github.com/apparentlymart/go-textseg/v13"
       #:import-path "github.com/apparentlymart/go-textseg/v13/textseg"))
    (native-inputs
     `(("ruby" ,ruby)))
    (home-page "https://github.com/apparentlymart/go-textseg")
    (synopsis "Go implementation of Unicode Text Segmentation")
    (description
     "This package provides an implementation of the Unicode Text Segmentation
specification for Go. Specifically, it currently includes only the grapheme
cluster segmentation algorithm.")
    ;; TODO: (Sharlatan-20211211T234916+0000): some not clear for me mixture of
    ;; licenses, need verification
    ;; https://github.com/apparentlymart/go-textseg/blob/master/LICENSE
    (license #f)))

(define-public go-github-com-apparentlymart-go-textseg-autoversion
  (package
    (inherit go-github-com-apparentlymart-go-textseg-v13)
    (name "go-github-com-apparentlymart-go-textseg-autoversion")
    (arguments
     '(#:unpack-path "github.com/apparentlymart/go-textseg/autoversion"
       #:import-path "github.com/apparentlymart/go-textseg/autoversion/textseg"))))

(define-public go-github-com-zclconf-go-cty
  (package
    (name "go-github-com-zclconf-go-cty")
    (version "1.10.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/zclconf/go-cty")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0f9a6vy45gcx5pg5bnfs63manaqw80h7xzvmj3b80af38304zr71"))))
    (build-system go-build-system)
    (arguments
     '(#:unpack-path "github.com/zclconf/go-cty"
       #:import-path "github.com/zclconf/go-cty/cty"))
    (native-inputs
     `(("go-github-com-google-go-cmp-cmp" ,go-github-com-google-go-cmp-cmp)))
    (propagated-inputs
      `(("go-golang-org-x-text" ,go-golang-org-x-text)
        ("go-github-com-vmihailenco-msgpack-v4"
         ,go-github-com-vmihailenco-msgpack-v4)
        ("go-github-com-apparentlymart-go-textseg-v13"
         ,go-github-com-apparentlymart-go-textseg-v13)))
    (home-page "https://github.com/zclconf/go-cty")
    (synopsis "Type system for dynamic values in Go applications")
    (description
      "@code{cty} (pronounced \"see-tie\") is a dynamic type system for
applications written in Go that need to represent user-supplied values without
losing type information. The primary intended use is for implementing
configuration languages, but other uses may be possible too.")
    (license license:expat)))

(define-public go-github-com-vmihailenco-msgpack-v4
  (package
    (name "go-github-com-vmihailenco-msgpack-v4")
    (version "4.3.12")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/vmihailenco/msgpack")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0aiavk7b5fn050bbc0naldk2bsl60f8wil5i6a1cfp3lxxnvmvng"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/vmihailenco/msgpack/v4"))
    (native-inputs
     `(("go-gopkg-in-check-v1" ,go-gopkg-in-check-v1)))
    (propagated-inputs
     `(("go-github-com-vmihailenco-tagparser"
        ,go-github-com-vmihailenco-tagparser)))
    (home-page "https://github.com/vmihailenco/msgpack")
    (synopsis "MessagePack encoding for Golang")
    (description
     "This package provides implementation of MessagePack encoding for Go
programming language")
    (license license:bsd-2)))

(define-public go-github-com-vmihailenco-tagparser
  (package
    (name "go-github-com-vmihailenco-tagparser")
    (version "2.0.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/vmihailenco/tagparser")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "13arliaz3b4bja9jj7cr5ax4zvxaxm484fwrn0q6d6jjm1l35m1k"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/vmihailenco/tagparser"))
    (home-page "https://github.com/vmihailenco/tagparser")
    (synopsis "Tag parser for Golang")
    (description "Simple Golang implementation of tag parser")
    (license license:bsd-2)))

;; 20211212T190623+0000
(define-public go-github-com-hashicorp-terraform
  (package
    (name "go-github-com-hashicorp-terraform")
    (version "1.1.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/hashicorp/terraform")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1399hd6ccp89xdrdad2cmkbdnq45glwc0bcgik75da5d12hhqxly"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/hashicorp/terraform"))
    (propagated-inputs
      `(("go-github-com-golang-jwt-jwt-v4" ,go-github-com-golang-jwt-jwt-v4)
        ("go-github-com-golang-mock" ,go-github-com-golang-mock)
        ("go-google-golang-org-grpc" ,go-google-golang-org-grpc)
        ("go-sigs-k8s-io-yaml" ,go-sigs-k8s-io-yaml)
        ("go-sigs-k8s-io-structured-merge-diff-v4" ,go-sigs-k8s-io-structured-merge-diff-v4)
        ("go-k8s-io-klog-v2" ,go-k8s-io-klog-v2)
        ("go-gopkg-in-yaml-v2" ,go-gopkg-in-yaml-v2)
        ("go-gopkg-in-ini-v1" ,go-gopkg-in-ini-v1)
        ("go-gopkg-in-inf-v0" ,go-gopkg-in-inf-v0)
        ("go-gopkg-in-check-v1" ,go-gopkg-in-check-v1)
        ("go-google-golang-org-genproto" ,go-google-golang-org-genproto)
        ("go-google-golang-org-appengine" ,go-google-golang-org-appengine)
        ("go-golang-org-x-xerrors" ,go-golang-org-x-xerrors)
        ("go-golang-org-x-time" ,go-golang-org-x-time)
        ("go-golang-org-x-lint" ,go-golang-org-x-lint)
        ("go-go-uber-org-zap" ,go-go-uber-org-zap)
        ("go-go-uber-org-multierr" ,go-go-uber-org-multierr)
        ("go-go-uber-org-atomic" ,go-go-uber-org-atomic)
        ("go-go-opencensus-io" ,go-go-opencensus-io)
        ("go-github-com-vmihailenco-tagparser" ,go-github-com-vmihailenco-tagparser)
        ("go-github-com-vmihailenco-msgpack-v4" ,go-github-com-vmihailenco-msgpack-v4)
        ("go-github-com-ulikunitz-xz" ,go-github-com-ulikunitz-xz)
        ("go-github-com-spf13-pflag" ,go-github-com-spf13-pflag)
        ("go-github-com-smartystreets-goconvey" ,go-github-com-smartystreets-goconvey)
        ("go-github-com-smartystreets-assertions" ,go-github-com-smartystreets-assertions)
        ("go-github-com-sergi-go-diff" ,go-github-com-sergi-go-diff)
        ("go-github-com-satori-go-uuid" ,go-github-com-satori-go-uuid)
        ("go-github-com-oklog-run" ,go-github-com-oklog-run)
        ("go-github-com-nu7hatch-gouuid" ,go-github-com-nu7hatch-gouuid)
        ("go-github-com-mozillazg-go-httpheader" ,go-github-com-mozillazg-go-httpheader)
        ("go-github-com-modern-go-reflect2" ,go-github-com-modern-go-reflect2)
        ("go-github-com-modern-go-concurrent" ,go-github-com-modern-go-concurrent)
        ("go-github-com-mitchellh-iochan" ,go-github-com-mitchellh-iochan)
        ("go-github-com-mitchellh-go-testing-interface" ,go-github-com-mitchellh-go-testing-interface)
        ("go-github-com-mattn-go-colorable" ,go-github-com-mattn-go-colorable)
        ("go-github-com-masterzen-simplexml" ,go-github-com-masterzen-simplexml)
        ("go-github-com-kr-pty" ,go-github-com-kr-pty)
        ("go-github-com-kr-pretty" ,go-github-com-kr-pretty)
        ("go-github-com-klauspost-compress" ,go-github-com-klauspost-compress)
        ("go-github-com-jtolds-gls" ,go-github-com-jtolds-gls)
        ("go-github-com-jstemmer-go-junit-report" ,go-github-com-jstemmer-go-junit-report)
        ("go-github-com-json-iterator-go" ,go-github-com-json-iterator-go)
        ("go-github-com-imdario-mergo" ,go-github-com-imdario-mergo)
        ("go-github-com-huandu-xstrings" ,go-github-com-huandu-xstrings)
        ("go-github-com-hashicorp-yamux" ,go-github-com-hashicorp-yamux)
        ("go-github-com-hashicorp-serf" ,go-github-com-hashicorp-serf)
        ("go-github-com-hashicorp-jsonapi" ,go-github-com-hashicorp-jsonapi)
        ("go-github-com-hashicorp-golang-lru" ,go-github-com-hashicorp-golang-lru)
        ("go-github-com-hashicorp-go-slug" ,go-github-com-hashicorp-go-slug)
        ("go-github-com-hashicorp-go-safetemp" ,go-github-com-hashicorp-go-safetemp)
        ("go-github-com-hashicorp-go-rootcerts" ,go-github-com-hashicorp-go-rootcerts)
        ("go-github-com-hashicorp-go-msgpack" ,go-github-com-hashicorp-go-msgpack)
        ("go-github-com-hashicorp-go-immutable-radix" ,go-github-com-hashicorp-go-immutable-radix)
        ("go-github-com-gopherjs-gopherjs" ,go-github-com-gopherjs-gopherjs)
        ("go-github-com-googleapis-gnostic" ,go-github-com-googleapis-gnostic)
        ("go-github-com-googleapis-gax-go-v2" ,go-github-com-googleapis-gax-go-v2)
        ("go-github-com-google-gofuzz" ,go-github-com-google-gofuzz)
        ("go-github-com-google-go-querystring" ,go-github-com-google-go-querystring)
        ("go-github-com-golang-groupcache" ,go-github-com-golang-groupcache)
        ("go-github-com-golang-jwt-jwt-v4" ,go-github-com-golang-jwt-jwt-v4)
        ("go-github-com-gogo-protobuf" ,go-github-com-gogo-protobuf)
        ("go-github-com-gofrs-uuid" ,go-github-com-gofrs-uuid)
        ("go-github-com-go-logr-logr" ,go-github-com-go-logr-logr)
        ("go-github-com-fatih-color" ,go-github-com-fatih-color)
        ("go-github-com-dylanmei-iso8601" ,go-github-com-dylanmei-iso8601)
        ("go-github-com-dimchansky-utfbom" ,go-github-com-dimchansky-utfbom)
        ("go-github-com-coreos-go-systemd" ,go-github-com-coreos-go-systemd)
        ("go-github-com-coreos-go-semver" ,go-github-com-coreos-go-semver)
        ("go-github-com-bgentry-go-netrc" ,go-github-com-bgentry-go-netrc)
        ("go-github-com-baiyubin-aliyun-sts-go-sdk" ,go-github-com-baiyubin-aliyun-sts-go-sdk)
        ("go-github-com-armon-go-radix" ,go-github-com-armon-go-radix)
        ("go-github-com-armon-go-metrics" ,go-github-com-armon-go-metrics)
        ("go-github-com-apparentlymart-go-textseg-v13" ,go-github-com-apparentlymart-go-textseg-v13)
        ("go-github-com-antchfx-xquery" ,go-github-com-antchfx-xquery)
        ("go-github-com-antchfx-xpath" ,go-github-com-antchfx-xpath)
        ("go-github-com-abdullin-seq" ,go-github-com-abdullin-seq)
        ("go-github-com-microsoft-go-winio" ,go-github-com-microsoft-go-winio)
        ("go-github-com-masterminds-sprig" ,go-github-com-masterminds-sprig)
        ("go-github-com-masterminds-semver" ,go-github-com-masterminds-semver)
        ("go-github-com-masterminds-goutils" ,go-github-com-masterminds-goutils)
        ("go-github-com-christrenkamp-goxpath" ,go-github-com-christrenkamp-goxpath)
        ("go-github-com-burntsushi-toml" ,go-github-com-burntsushi-toml)
        ("go-github-com-azure-go-ntlmssp" ,go-github-com-azure-go-ntlmssp)
        ("go-github-com-azure-go-autorest-tracing" ,go-github-com-azure-go-autorest-tracing)
        ("go-github-com-azure-go-autorest-logger" ,go-github-com-azure-go-autorest-logger)
        ("go-github-com-azure-go-autorest-autorest-validation" ,go-github-com-azure-go-autorest-autorest-validation)
        ("go-github-com-azure-go-autorest-autorest-to" ,go-github-com-azure-go-autorest-autorest-to)
        ("go-github-com-azure-go-autorest-autorest-date" ,go-github-com-azure-go-autorest-autorest-date)
        ("go-github-com-azure-go-autorest-autorest-azure-cli" ,go-github-com-azure-go-autorest-autorest-azure-cli)
        ("go-github-com-azure-go-autorest-autorest-adal" ,go-github-com-azure-go-autorest-autorest-adal)
        ("go-github-com-azure-go-autorest" ,go-github-com-azure-go-autorest)
        ("go-cloud-google-com-go" ,go-cloud-google-com-go)
        ("go-k8s-io-utils" ,go-k8s-io-utils)
        ("go-k8s-io-client-go" ,go-k8s-io-client-go)
        ("go-k8s-io-apimachinery" ,go-k8s-io-apimachinery)
        ("go-k8s-io-api" ,go-k8s-io-api)
        ("go-honnef-co-go-tools" ,go-honnef-co-go-tools)
        ("go-google-golang-org-protobuf" ,go-google-golang-org-protobuf)
        ("go-google-golang-org-grpc-cmd-protoc-gen-go-grpc" ,go-google-golang-org-grpc-cmd-protoc-gen-go-grpc)
        ("go-google-golang-org-api" ,go-google-golang-org-api)
        ("go-golang-org-x-tools" ,go-golang-org-x-tools)
        ("go-golang-org-x-text" ,go-golang-org-x-text)
        ("go-golang-org-x-term" ,go-golang-org-x-term)
        ("go-golang-org-x-sys" ,go-golang-org-x-sys)
        ("go-golang-org-x-oauth2" ,go-golang-org-x-oauth2)
        ("go-golang-org-x-net" ,go-golang-org-x-net)
        ("go-golang-org-x-mod" ,go-golang-org-x-mod)
        ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
        ("go-go-etcd-io-etcd" ,go-go-etcd-io-etcd)
        ("go-github-com-zclconf-go-cty-yaml" ,go-github-com-zclconf-go-cty-yaml)
        ("go-github-com-zclconf-go-cty-debug" ,go-github-com-zclconf-go-cty-debug)
        ("go-github-com-zclconf-go-cty" ,go-github-com-zclconf-go-cty)
        ("go-github-com-xlab-treeprint" ,go-github-com-xlab-treeprint)
        ("go-github-com-xanzy-ssh-agent" ,go-github-com-xanzy-ssh-agent)
        ("go-github-com-tombuildsstuff-giovanni" ,go-github-com-tombuildsstuff-giovanni)
        ("go-github-com-tencentyun-cos-go-sdk-v5" ,go-github-com-tencentyun-cos-go-sdk-v5)
        ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tag" ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tag)
        ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-common" ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-common)
        ("go-github-com-spf13-afero" ,go-github-com-spf13-afero)
        ("go-github-com-posener-complete" ,go-github-com-posener-complete)
        ("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
        ("go-github-com-pkg-browser" ,go-github-com-pkg-browser)
        ("go-github-com-packer-community-winrmcp" ,go-github-com-packer-community-winrmcp)
        ("go-github-com-nishanths-exhaustive" ,go-github-com-nishanths-exhaustive)
        ("go-github-com-mitchellh-reflectwalk" ,go-github-com-mitchellh-reflectwalk)
        ("go-github-com-mitchellh-mapstructure" ,go-github-com-mitchellh-mapstructure)
        ("go-github-com-mitchellh-gox" ,go-github-com-mitchellh-gox)
        ("go-github-com-mitchellh-go-wordwrap" ,go-github-com-mitchellh-go-wordwrap)
        ("go-github-com-mitchellh-go-linereader" ,go-github-com-mitchellh-go-linereader)
        ("go-github-com-mitchellh-go-homedir" ,go-github-com-mitchellh-go-homedir)
        ("go-github-com-mitchellh-copystructure" ,go-github-com-mitchellh-copystructure)
        ("go-github-com-mitchellh-colorstring" ,go-github-com-mitchellh-colorstring)
        ("go-github-com-mitchellh-cli" ,go-github-com-mitchellh-cli)
        ("go-github-com-mattn-go-shellwords" ,go-github-com-mattn-go-shellwords)
        ("go-github-com-mattn-go-isatty" ,go-github-com-mattn-go-isatty)
        ("go-github-com-masterzen-winrm" ,go-github-com-masterzen-winrm)
        ("go-github-com-manicminer-hamilton" ,go-github-com-manicminer-hamilton)
        ("go-github-com-lusis-go-artifactory" ,go-github-com-lusis-go-artifactory)
        ("go-github-com-lib-pq" ,go-github-com-lib-pq)
        ("go-github-com-kardianos-osext" ,go-github-com-kardianos-osext)
        ("go-github-com-joyent-triton-go" ,go-github-com-joyent-triton-go)
        ("go-github-com-jmespath-go-jmespath" ,go-github-com-jmespath-go-jmespath)
        ("go-github-com-hashicorp-terraform-svchost" ,go-github-com-hashicorp-terraform-svchost)
        ("go-github-com-hashicorp-terraform-config-inspect" ,go-github-com-hashicorp-terraform-config-inspect)
        ("go-github-com-hashicorp-hcl-v2" ,go-github-com-hashicorp-hcl-v2)
        ("go-github-com-hashicorp-hcl" ,go-github-com-hashicorp-hcl)
        ("go-github-com-hashicorp-go-version" ,go-github-com-hashicorp-go-version)
        ("go-github-com-hashicorp-go-uuid" ,go-github-com-hashicorp-go-uuid)
        ("go-github-com-hashicorp-go-tfe" ,go-github-com-hashicorp-go-tfe)
        ("go-github-com-hashicorp-go-retryablehttp" ,go-github-com-hashicorp-go-retryablehttp)
        ("go-github-com-hashicorp-go-plugin" ,go-github-com-hashicorp-go-plugin)
        ("go-github-com-hashicorp-go-multierror" ,go-github-com-hashicorp-go-multierror)
        ("go-github-com-hashicorp-go-hclog" ,go-github-com-hashicorp-go-hclog)
        ("go-github-com-hashicorp-go-getter" ,go-github-com-hashicorp-go-getter)
        ("go-github-com-hashicorp-go-cleanhttp" ,go-github-com-hashicorp-go-cleanhttp)
        ("go-github-com-hashicorp-go-checkpoint" ,go-github-com-hashicorp-go-checkpoint)
        ("go-github-com-hashicorp-go-azure-helpers" ,go-github-com-hashicorp-go-azure-helpers)
        ("go-github-com-hashicorp-errwrap" ,go-github-com-hashicorp-errwrap)
        ("go-github-com-hashicorp-consul-sdk" ,go-github-com-hashicorp-consul-sdk)
        ("go-github-com-hashicorp-consul-api" ,go-github-com-hashicorp-consul-api)
        ("go-github-com-hashicorp-aws-sdk-go-base" ,go-github-com-hashicorp-aws-sdk-go-base)
        ("go-github-com-gophercloud-utils" ,go-github-com-gophercloud-utils)
        ("go-github-com-gophercloud-gophercloud" ,go-github-com-gophercloud-gophercloud)
        ("go-github-com-google-uuid" ,go-github-com-google-uuid)
        ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
        ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
        ("go-github-com-go-test-deep" ,go-github-com-go-test-deep)
        ("go-github-com-dylanmei-winrmtest" ,go-github-com-dylanmei-winrmtest)
        ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)
        ("go-github-com-coreos-pkg" ,go-github-com-coreos-pkg)
        ("go-github-com-chzyer-readline" ,go-github-com-chzyer-readline)
        ("go-github-com-bmatcuk-doublestar" ,go-github-com-bmatcuk-doublestar)
        ("go-github-com-bgentry-speakeasy" ,go-github-com-bgentry-speakeasy)
        ("go-github-com-aws-aws-sdk-go" ,go-github-com-aws-aws-sdk-go)
        ("go-github-com-armon-circbuf" ,go-github-com-armon-circbuf)
        ("go-github-com-apparentlymart-go-versions" ,go-github-com-apparentlymart-go-versions)
        ("go-github-com-apparentlymart-go-userdirs" ,go-github-com-apparentlymart-go-userdirs)
        ("go-github-com-apparentlymart-go-shquot" ,go-github-com-apparentlymart-go-shquot)
        ("go-github-com-apparentlymart-go-dump" ,go-github-com-apparentlymart-go-dump)
        ("go-github-com-apparentlymart-go-cidr" ,go-github-com-apparentlymart-go-cidr)
        ("go-github-com-aliyun-aliyun-tablestore-go-sdk" ,go-github-com-aliyun-aliyun-tablestore-go-sdk)
        ("go-github-com-aliyun-aliyun-oss-go-sdk" ,go-github-com-aliyun-aliyun-oss-go-sdk)
        ("go-github-com-aliyun-alibaba-cloud-sdk-go" ,go-github-com-aliyun-alibaba-cloud-sdk-go)
        ("go-github-com-agext-levenshtein" ,go-github-com-agext-levenshtein)
        ("go-github-com-netflix-go-expect" ,go-github-com-netflix-go-expect)
        ("go-github-com-azure-go-autorest-autorest" ,go-github-com-azure-go-autorest-autorest)
        ("go-github-com-azure-azure-sdk-for-go" ,go-github-com-azure-azure-sdk-for-go)
        ("go-cloud-google-com-go-storage" ,go-cloud-google-com-go-storage)))
    (home-page "https://github.com/hashicorp/terraform")
    (synopsis "Terraform")
    (description
      "Terraform is a tool for building, changing, and versioning infrastructure
safely and efficiently. Terraform can manage existing and popular service
providers as well as custom in-house solutions.")
    (license license:mpl2.0)))

(define-public go-github-com-golang-jwt-jwt-v4
  (package
    (name "go-github-com-golang-jwt-jwt-v4")
    (version "4.1.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/golang-jwt/jwt")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "020yxsrplnnm9vcd0jdaaziv6pyhvvs9y0qadzbbrqblqmj0vy4x"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/golang-jwt/jwt/v4"))
    (home-page "https://github.com/golang-jwt/jwt")
    (synopsis "jwt-go")
    (description
      "Package jwt is a Go implementation of JSON Web Tokens:
@url{http://self-issued.info/docs/draft-jones-json-web-token.html,http://self-issued.info/docs/draft-jones-json-web-token.html}
")
    (license license:expat)))

(define-public go-github-com-golang-mock-mockgen
  (package
    (name "go-github-com-golang-mock-mockgen")
    (version "1.6.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/golang/mock")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1hara8j0x431njjhqxfrg1png7xa1gbrpwza6ya4mwlx76hppap4"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/golang/mock/mockgen"
       #:unpack-path "github.com/golang/mock"))
    (propagated-inputs
      `(("go-golang-org-x-tools" ,go-golang-org-x-tools)
        ("go-golang-org-x-mod" ,go-golang-org-x-mod)))
    (home-page "https://github.com/golang/mock")
    (synopsis "gomock")
    (description
      "gomock is a mocking framework for the @url{http://golang.org/,Go
programming language}. It integrates well with Go's built-in @code{testing}
package, but can be used in other contexts too.")
    (license license:asl2.0)))

(define-public go-golang-org-x-tools
  (package
    (name "go-golang-org-x-tools")
    (version "0.1.8")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://go.googlesource.com/tools")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0h9ip7sry1y8z94jypygas4ylb403wji3vljcc5jlb54rf51x3z7"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "golang.org/x/tools"))
    (propagated-inputs
      `(("go-golang-org-x-xerrors" ,go-golang-org-x-xerrors)
        ("go-golang-org-x-text" ,go-golang-org-x-text)
        ("go-golang-org-x-sys" ,go-golang-org-x-sys)
        ("go-golang-org-x-sync" ,go-golang-org-x-sync)
        ("go-golang-org-x-net" ,go-golang-org-x-net)
        ("go-golang-org-x-mod" ,go-golang-org-x-mod)
        ("go-github-com-yuin-goldmark" ,go-github-com-yuin-goldmark)))
    (home-page "https://golang.org/x/tools")
    (synopsis "Go Tools")
    (description
      "This subrepository holds the source for various packages and tools that
support the Go programming language.")
    (license license:bsd-3)))

(define-public go-github-com-getsentry-sentry-go
  (package
    (name "go-github-com-getsentry-sentry-go")
    (version "0.11.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/getsentry/sentry-go")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0hisknhn2r6g2fz3kgypa99jvixxkwz8sfyq7x64jy97y2sh2lil"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/getsentry/sentry-go"))
    (propagated-inputs
      `(("go-github-com-valyala-fasthttp" ,go-github-com-valyala-fasthttp)
        ("go-github-com-urfave-negroni" ,go-github-com-urfave-negroni)
        ("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
        ("go-github-com-pingcap-errors" ,go-github-com-pingcap-errors)
        ("go-github-com-labstack-echo-v4" ,go-github-com-labstack-echo-v4)
        ("go-github-com-kataras-iris-v12" ,go-github-com-kataras-iris-v12)
        ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
        ("go-github-com-go-martini-martini" ,go-github-com-go-martini-martini)
        ("go-github-com-go-errors-errors" ,go-github-com-go-errors-errors)
        ("go-github-com-gin-gonic-gin" ,go-github-com-gin-gonic-gin)))
    (home-page "https://github.com/getsentry/sentry-go")
    (synopsis "Official Sentry SDK for Go")
    (description "Package sentry is the official Sentry SDK for Go.")
    (license license:bsd-2)))

;; 20211217T213122+0000
(define-public go-github-com-valyala-fasthttp
  (package
    (name "go-github-com-valyala-fasthttp")
    (version "1.31.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/valyala/fasthttp")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0ra0n2shcp11736xv37cjnsqn32gvqfm3dkf9v8j98xmch2wqxqg"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/valyala/fasthttp"))
    (propagated-inputs
      (list go-golang-org-x-sys
            go-golang-org-x-net
            go-golang-org-x-crypto
            go-github-com-valyala-tcplisten
            go-github-com-valyala-bytebufferpool
            go-github-com-klauspost-compress
            go-github-com-andybalholm-brotli))
    (home-page "https://github.com/valyala/fasthttp")
    (synopsis "Provides fast HTTP server and client API")
    (description
     "This package provides a Go module @code{fasthttp} which may be used as
replacement for native @code{net/http} module.")
    (license license:expat)))

;; 20211217T213241+0000
(define-public go-github-com-valyala-tcplisten
  (package
    (name "go-github-com-valyala-tcplisten")
    (version "1.0.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/valyala/tcplisten")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1fv5hxmq1jwrjn1rdjvbmjrrkb601zcdh01qhx6d8l7ss6n05zb8"))))
    (build-system go-build-system)
    (arguments
     ;; NOTE: (Sharlatan-20211218T165504+0000): Tests failing:
     ;;
     ;;   tcplisten_test.go:56: cannot create listener 0 using Config
     ;;   &tcplisten.Config{ReusePort:false, DeferAccept:false, FastOpen:false,
     ;;   Backlog:32}: lookup ip6-localhost on [::1]:53: read udp
     ;;   [::1]:33932->[::1]:53: read: connection refused
     ;;
     '(#:tests? #f
       #:import-path "github.com/valyala/tcplisten"))
    (home-page "https://github.com/valyala/tcplisten")
    (synopsis "Customizable TCP net.Listener for Go")
    (description
      "Package tcplisten provides customizable TCP net.Listener with various
performance-related options:")
    (license license:expat)))

;; 20211217T213438+0000
(define-public go-github-com-valyala-bytebufferpool
  (package
    (name "go-github-com-valyala-bytebufferpool")
    (version "1.0.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/valyala/bytebufferpool")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "01lqzjddq6kz9v41nkky7wbgk7f1cw036sa7ldz10d82g5klzl93"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/valyala/bytebufferpool"))
    (home-page "https://github.com/valyala/bytebufferpool")
    (synopsis "Anti-memory-waste byte buffer pool for Golang")
    (description
      "Package @code{bytebufferpool} implements a pool of byte buffers with
anti-fragmentation protection.")
    (license license:expat)))

;; 20211217T213727+0000
(define-public go-github-com-andybalholm-brotli
  (package
    (name "go-github-com-andybalholm-brotli")
    ;; NOTE: (Sharlatan-20211218T165057+0000): v1.0.4 requires Go 1.16+ for
    ;; io.ReadAll
    ;; https://github.com/andybalholm/brotli/blob/v1.0.4/brotli_test.go#L122
    ;; https://go.dev/doc/go1.16#ioutil
    (version "1.0.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/andybalholm/brotli")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0l2z836kwdf3qbmajh97bzl476zh88pr209pn5kxhd0gw3jkdrib"))))
    (build-system go-build-system)
    (arguments
     `(#:import-path "github.com/andybalholm/brotli"))
    (home-page "https://github.com/andybalholm/brotli")
    (synopsis "Pure Go Brotli encoder and decoder")
    (description
     "This package is a brotli compressor and decompressor implemented in Go.  It was
translated from the reference implementation
(@url{https://github.com/google/brotli,https://github.com/google/brotli}) with
the @code{c2go} tool at
@url{https://github.com/andybalholm/c2go,https://github.com/andybalholm/c2go}.")
    (license license:expat)))

;; 20211218T165950+0000
(define-public go-github-com-urfave-negroni
  (package
    (name "go-github-com-urfave-negroni")
    (version "1.0.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/urfave/negroni")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1gp6j74adi1cn8fq5v3wzlzhwl4zg43n2746m4fzdcdimihk3ccp"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/urfave/negroni"))
    (home-page "https://github.com/urfave/negroni")
    (synopsis "Negroni")
    (description
      "Package negroni is an idiomatic approach to web middleware in Go.  It is tiny,
non-intrusive, and encourages use of net/http Handlers.")
    (license license:expat)))

;; 20211218T170054+0000
(define-public go-github-com-pingcap-errors
  (package
    (name "go-github-com-pingcap-errors")
    (version "0.11.4")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/pingcap/errors")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "02k6b30m42aya763fnwx3paq4r8h28yav4i2kv2z4r28r70xxcgn"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/pingcap/errors"))
    (home-page "https://github.com/pingcap/errors")
    (synopsis "errors")
    (description "Package errors provides simple error handling primitives.")
    (license license:bsd-2)))

;;20211218T170204+0000
(define-public go-github-com-labstack-echo-v4
  (package
    (name "go-github-com-labstack-echo-v4")
    (version "4.6.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/labstack/echo")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0j6q2axjr5aslq76xbacpl7wiimz2cx6ask1lhi7didmzmm3349g"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/labstack/echo/v4"))
    (propagated-inputs
     (list go-github-com-golang-jwt-jwt-v4))
    (home-page "https://github.com/labstack/echo")
    (synopsis "Feature Overview")
    (description
      "Package echo implements high performance, minimalist Go web framework.")
    (license license:expat)))

;; 20211220T194459+0000
(define-public go-github-com-stretchr-testify
  (package
    (name "go-github-com-stretchr-testify")
    (version "1.7.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/stretchr/testify")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32
         "0ixgjsvafr3513pz3r6pmgk074s2dxkll0dadvl25gkf30rkmh10"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/stretchr/testify"))
    (propagated-inputs
     (list go-github-com-davecgh-go-spew
           go-github-com-pmezard-go-difflib
           go-github-com-stretchr-objx
           go-gopkg-in-yaml-v3))
    (home-page "https://github.com/stretchr/testify")
    (synopsis "Go helper library for tests and invariant checking")
    (description "This package provide many tools for testifying that your code
will behave as you intend.

Features include:
@itemize
@item Easy assertions
@item Mocking
@item HTTP response trapping
@item Testing suite interfaces and functions.
@end itemize")
    (license license:expat)))

;;; :begin github.com/jesseduffield/lazygit
;;
;; Some packages are introduced in:
;; - github.com/cli/cli: https://issues.guix.gnu.org/47539
;;
;; 20211220T202352+0000
(define-public go-github-com-jesseduffield-lazygit
  (package
    (name "go-github-com-jesseduffield-lazygit")
    (version "0.31.4")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/jesseduffield/lazygit")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "198lpyc1qram3nvq79zy806dlb5q7dix58rc3pq22vw4li8vhdyb"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/jesseduffield/lazygit"))
    (propagated-inputs
     (list go-github-com-atotto-clipboard ;; +1
           go-github-com-aybabtme-humanlog ;; +4
           go-github-com-cli-safeexec ;; +1
           go-github-com-cloudfoundry-jibber-jabber
           go-github-com-creack-pty
           go-github-com-fatih-color
           go-github-com-fsnotify-fsnotify
           go-github-com-go-errors-errors
           go-github-com-go-logfmt-logfmt
           go-github-com-golang-collections-collections
           go-github-com-golang-protobuf
           go-github-com-google-go-cmp
           go-github-com-gookit-color
           go-github-com-imdario-mergo
           go-github-com-integrii-flaggy
           go-github-com-jesseduffield-go-git-v5
           go-github-com-jesseduffield-gocui
           go-github-com-jesseduffield-minimal-gitignore
           go-github-com-jesseduffield-yaml
           go-github-com-kardianos-osext
           go-github-com-konsorten-go-windows-terminal-sequences
           go-github-com-kylelemons-godebug
           go-github-com-kyokomi-emoji-v2
           go-github-com-lucasb-eyer-go-colorful
           go-github-com-mattn-go-colorable
           go-github-com-mattn-go-runewidth
           go-github-com-mgutz-str
           go-github-com-onsi-ginkgo
           go-github-com-onsi-gomega
           go-github-com-sahilm-fuzzy
           go-github-com-sirupsen-logrus
           go-github-com-spkg-bom
           go-github-com-stretchr-testify
           go-github-com-xo-terminfo
           go-golang-org-x-crypto
           go-golang-org-x-net
           go-golang-org-x-sys
           go-golang-org-x-term
           go-golang-org-x-text
           go-gopkg-in-ozeidan-fuzzy-patricia-v3
           go-github-com-openpeedeep-xdg))
    (home-page "https://github.com/jesseduffield/lazygit")
    (synopsis "Table of contents")
    (description
     "This package provides a simple terminal UI for git commands, written in Go with
the @url{https://github.com/jroimartin/gocui,gocui} library.")
    (license license:expat)))

 (define-public go-github-com-atotto-clipboard
  (package
    (name "go-github-com-atotto-clipboard")
    (version "0.1.4")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/atotto/clipboard")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0ycd8zkgsq9iil9svhlwvhcqwcd7vik73nf8rnyfnn10gpjx97k5"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/atotto/clipboard"))
    (home-page "https://github.com/atotto/clipboard")
    (synopsis "Clipboard for Go")
    (description "Package clipboard read/write on clipboard")
    (license license:bsd-3)))

(define-public go-github-com-aybabtme-humanlog
  (package
    (name "go-github-com-aybabtme-humanlog")
    (version "0.4.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/aybabtme/humanlog")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0s2ni1d4qqrdybvw8w8q5m500nhs6yz2a73wihmfhlk9hq36037n"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/aybabtme/humanlog"))
    (propagated-inputs
     (list go-github-com-aybabtme-rgbterm
           go-github-com-fatih-color
           go-github-com-go-logfmt-logfmt
           go-github-com-kr-logfmt
           go-github-com-mattn-go-colorable
           go-github-com-mattn-go-isatty
           go-github-com-urfave-cli
           go-golang-org-x-sys))
    (home-page "https://github.com/aybabtme/humanlog")
    (synopsis "Logs for humans to read")
    (description
     "Read logs from @code{stdin} and prints them back to @code{stdout}, but
prettier.")
    (license license:asl2.0)))

(define-public go-github-com-go-logfmt-logfmt
  (package
    (name "go-github-com-go-logfmt-logfmt")
    (version "0.5.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/go-logfmt/logfmt")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "01fs4x2aqw2qcsz18s4nfvyqv3rcwz5xmgpk3bic6nzgyzsjd7dp"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/go-logfmt/logfmt"))
    (home-page "https://github.com/go-logfmt/logfmt")
    (synopsis "Marshals and unmarshals logfmt messages")
    (description
      "Package logfmt implements utilities to marshal and unmarshal data in the logfmt
format.  The logfmt format records key/value pairs in a way that balances
readability for humans and simplicity of computer parsing.  It is most commonly
used as a more human friendly alternative to JSON for structured logging.")
    (license license:expat)))

(define-public go-github-com-kr-logfmt
  (package
    (name "go-github-com-kr-logfmt")
    (version "0.0.0-20210122060352-19f9bcb100e6")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/kr/logfmt")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1l6322amgy092n30l6br0wzszf3l2a3dkylck3pzpvzr4lqfcyhb"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/kr/logfmt"))
    (home-page "https://github.com/kr/logfmt")
    (synopsis "Parse logfmt messages")
    (description "Package implements the decoding of logfmt key-value pairs.")
    (license license:expat)))

(define-public go-github-com-aybabtme-rgbterm
  (package
    (name "go-github-com-aybabtme-rgbterm")
    (version "0.0.0-20170906152045-cc83f3b3ce59")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/aybabtme/rgbterm")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0wvmxvjn64968ikvnxrflb1x8rlcwzpfl53fzbxff2axbx9lq50q"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/aybabtme/rgbterm"))
    (home-page "https://github.com/aybabtme/rgbterm")
    (synopsis "RGB terminal")
    (description
      "Package rgbterm colorizes bytes and strings using RGB colors, for a full
range of pretty terminal strings.")
    (license license:expat)))

(define-public go-github-com-cli-safeexec
  (package
    (name "go-github-com-cli-safeexec")
    (version "1.0.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/cli/safeexec")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1q80va3721dyw33lrnv7x3gd66kcnbsm38dv3lk7xqhii2adawmk"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/cli/safeexec"))
    (home-page "https://github.com/cli/safeexec")
    (synopsis "Safer version of exec.LookPath on Windows")
    (description
      "This package provides a Go module that provides a safer alternative to
@code{exec.LookPath()} on Windows.")
    (license license:bsd-2)))

;; :end github.com/jesseduffield/lazygit

;;; :begin github.com/cli/cli

(define-public github-cli-v2
  (package
    (name "github-cli-v2")
    (version "2.3.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/cli/cli")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0qf19rkckbfwcsk9rkfnbrzrksb6r50p7gda25lbw86n2c3k18wp"))))
    (build-system go-build-system)
    (arguments
     '(#:unpack-path "github.com/cli/cli/v2"
       #:import-path "github.com/cli/cli/v2"))
    (native-inputs
     (list go-github-com-alecaivazis-survey-v2
           go-github-com-briandowns-spinner
           go-github-com-charmbracelet-glamour
           go-github-com-cli-browser
           go-github-com-cli-oauth
           go-github-com-cli-safeexec
           go-github-com-cpuguy83-go-md2man-v2
           go-github-com-creack-pty
           go-github-com-gabriel-vasile-mimetype
           ;; go-github-com-cli-shurcool-graphql
           ;; go-github-com-google-go-cmp
           ;; go-github-com-google-shlex
           go-github-com-hashicorp-go-version
           ;; go-github-com-henvic-httpretty
           ;; go-github-com-itchyny-gojq
           go-github-com-kballard-go-shellquote
           ;; go-github-com-makenowjust-heredoc
           go-github-com-mattn-go-colorable
           go-github-com-mattn-go-isatty
           go-github-com-mattn-go-runewidth
           go-github-com-mgutz-ansi
           go-github-com-mitchellh-go-homedir
           go-github-com-muesli-termenv
           go-github-com-rivo-uniseg
           ;; go-github-com-shurcool-githubv4
           go-github-com-spf13-cobra
           go-github-com-spf13-pflag
           go-github-com-stretchr-objx
           go-github-com-stretchr-testify
           go-golang-org-x-crypto
           go-golang-org-x-sync
           go-golang-org-x-sys
           go-golang-org-x-term
           go-gopkg-in-yaml-v3))
    (home-page "https://github.com/cli/cli")
    (synopsis "GitHub CLI")
    (description
     "@code{gh} is GitHub on the command line. It brings pull requests, issues,
and other GitHub concepts to the terminal next to where you are already working
with @code{git} and your code.")
    (license license:expat)))

(define-public go-github-com-alecaivazis-survey-v2
  (package
    (name "go-github-com-alecaivazis-survey-v2")
    (version "2.3.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/AlecAivazis/survey")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32
         "1ipzr2p3j7il4rl4fdi6zsn739p81k2achsbj1s4z5vfrb3jj5kn"))))
    (build-system go-build-system)
    (arguments
     ;; NOTE: (Sharlatan-20211223T223516+0000): Test requires vi in PATH wich is
     ;; not packed in Guix https://github.com/AlecAivazis/survey/issues/396
     '(#:tests? #f
       #:import-path "github.com/AlecAivazis/survey"))
    (native-inputs
     (list go-github-com-davecgh-go-spew
           go-github-com-stretchr-testify
           vim))
    (propagated-inputs
     (list go-github-com-hinshun-vt10x
           go-github-com-kballard-go-shellquote
           go-github-com-kr-pty
           go-github-com-mattn-go-colorable
           go-github-com-mattn-go-isatty
           go-github-com-mgutz-ansi
           go-github-com-netflix-go-expect
           go-github-com-pmezard-go-difflib
           go-golang-org-x-crypto
           go-golang-org-x-sys
           go-golang-org-x-text))
    (home-page
     "https://github.com/AlecAivazis/survey")
    (synopsis "Build interactive prompts on terminals")
    (description "This is a library for building interactive prompts on
terminals supporting ANSI escape sequences.")
    (license license:expat)))

(define-public go-github-com-hinshun-vt10x
  (package
    (name "go-github-com-hinshun-vt10x")
    (version "0.0.0-20180616224451-1954e6464174")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/hinshun/vt10x.git")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
         (base32
          "05a7z6qmmwm3672x1jmhy2d6cqyzypyxcpybs6incfdzwrx851pl"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path "github.com/hinshun/vt10x"))
    (home-page "https://github.com/hinshun/vt10x")
    (synopsis "vt10x terminal emulation backend")
    (description "This package is a vt10x terminal emulation backend.  It has
larged been influenced by st, rxvt, xterm, and iTerm as reference.")
    (license license:expat)))

;; archived project: moved to https://github.com/creack/pty
(define-public go-github-com-kr-pty
  (hidden-package
   (package
     (name "go-github-com-kr-pty")
     (version "1.1.8")
     (source
      (origin
        (method git-fetch)
        (uri (git-reference
              (url "https://github.com/kr/pty.git")
              (commit (string-append "v" version))))
        (file-name (git-file-name "go-github-com-kr-pty" version))
        (sha256
         (base32
          "1vcl6f90n0f8s8b4fyh0832ilybjqcypqyj233lqj1hx62fvgdbk"))))
     (build-system go-build-system)
     (arguments
      '(#:import-path "github.com/kr/pty"))
     (propagated-inputs
      (list go-github-com-creack-pty))
     (home-page "https://github.com/kr/pty")
     (synopsis "PTY interface for Go")
     (description "Pty is a Go package for using Unix pseudo-terminals.")
     (license license:expat))))

(define-public go-github-com-netflix-go-expect
  (package
    (name "go-github-com-netflix-go-expect")
    (version "0.0.0-20201125194554-85d881c3777e")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/Netflix/go-expect.git")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32
            "01s59hsdwy2nngngcgzyhncys56pdgzr6lff7k8kjrh26zk6pdv5"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path "github.com/Netflix/go-expect"))
    (native-inputs
      (list go-github-com-stretchr-testify
            go-github-com-kr-pty))
    (home-page "https://github.com/Netflix/go-expect")
    (synopsis "Expect-like library to automate control of terminal programs")
    (description
     "This package provides an expect-like interface to automate control of
applications.  It is unlike expect in that it does not spawn or manage process
lifecycle.  This package only focuses on expecting output and sending input
through it's pseudoterminal.")
    (license license:asl2.0)))

(define-public go-github-com-creack-pty
  (package
    (name "go-github-com-creack-pty")
    (version "1.1.11")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/creack/pty.git")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32
            "0dwhch53vqxpnbiqvfa27cliabx9ma2m4dax4adlrz8rami4sakw"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path "github.com/creack/pty"))
    (home-page "https://github.com/creack/pty")
    (synopsis "PTY interface for Go")
    (description "Pty is a Go package for using Unix pseudo-terminals.")
    (license license:expat)))

(define-public go-github-com-briandowns-spinner
  (package
    (name "go-github-com-briandowns-spinner")
    (version "1.18.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/briandowns/spinner.git")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32
         "11lfyfj97rzmz7n0z6qfhqcgr3lilkjamppg4j9wivagk4879jil"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/briandowns/spinner"))
    (native-inputs
     (list go-github-com-mattn-go-colorable
           go-github-com-fatih-color))
    (home-page
     "https://github.com/briandowns/spinner")
    (synopsis "Progress indicator for any terminal application")
    (description
     "This is a simple package to add a spinner or progress indicator to any
terminal application. ")
    (license license:asl2.0)))

(define-public go-github-com-cli-browser
  (package
    (name "go-github-com-cli-browser")
    (version "1.1.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/cli/browser.git")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32
         "13z27cc0a184bhprspwclzbvrzsrfd5qyk5r2djfx5nm85igxr0n"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/cli/browser"))
    (native-inputs
     (list go-golang-org-x-sys))
    (home-page "https://github.com/cli/browser")
    (synopsis "Helpers to open URLs, or files in the default web browser")
    (description
     "This library provides helpers to open URLs, readers, or files in the
system default web browser.")
    (license license:bsd-2)))

(define-public go-github-com-cli-oauth
  (package
    (name "go-github-com-cli-oauth")
    (version "0.9.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/cli/oauth.git")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32
         "1h45ms2772mcbki0pj1i396i77w7j3jbcbzi7zpn7i6hsmj1rvd3"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/cli/oauth"))
    (native-inputs
     (list go-github-com-cli-browser))
    (home-page "https://github.com/cli/oauth")
    (synopsis "Perform OAuth Device flow and Web application flow in Go")
    (description
     "This is a library for performing OAuth Device flow and Web application
flow in Go client apps.")
    (license license:expat)))

(define-public go-github-com-cpuguy83-go-md2man-v2
  (package
    (name "go-github-com-cpuguy83-go-md2man-v2")
    (version "2.0.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/cpuguy83/go-md2man.git")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32
         "051ljpzf1f5nh631lvn53ziclkzmx5lza8545mkk6wxdfnfdcx8f"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/cpuguy83/go-md2man"))
    (native-inputs
     (list go-github-com-shurcool-sanitized-anchor-name
           go-github-com-russross-blackfriday-v2
           go-github-com-pmezard-go-difflib))
    (home-page "https://github.com/cpuguy83/go-md2man")
    (synopsis "Convert Markdown into Man pages")
    (description
     "This package converts Markdown into Roff Man pages.")
    (license license:expat)))

(define-public go-github-com-russross-blackfriday-v2
  (package
    (name "go-github-com-russross-blackfriday-v2")
    (version "2.1.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/russross/blackfriday")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32
         "0d1rg1drrfmabilqjjayklsz5d0n3hkf979sr3wsrw92bfbkivs7"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/russross/blackfriday"))
    (home-page "https://github.com/russross/blackfriday")
    (synopsis "Markdown processor implemented in Go")
    (description
     "Blackfriday is a Markdown processor implemented in Go. It is paranoid
about its input (so you can safely feed it user-supplied data), it is fast, it
supports common extensions (tables, smart punctuation substitutions, etc.), and
it is safe for all utf-8 (unicode) input.")
    (license license:bsd-2)))

(define-public go-github-com-gabriel-vasile-mimetype
  (package
    (name "go-github-com-gabriel-vasile-mimetype")
    (version "1.4.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/gabriel-vasile/mimetype")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32
         "0ivxwgb62dyvj8viyszn7p74lmykcplfgz38qrv5hwdf8i5xd53a"))))
    (build-system go-build-system)
    (arguments
     ;; FIXME: Cannot open 'supported_mimes.md'
     '(#:tests? #f
       #:import-path
       "github.com/gabriel-vasile/mimetype"
       #:phases
       (modify-phases %standard-phases
         ;; The files are read-only
         (add-before 'reset-gzip-timestamps 'make-gz-files-writable
           (lambda* (#:key outputs #:allow-other-keys)
             (for-each make-file-writable
                       (find-files (string-append (assoc-ref outputs "out"))
                                   ".*\\.gz$"))
             #t)))))
    (propagated-inputs
     (list go-golang-org-x-net))
    (home-page
     "https://github.com/gabriel-vasile/mimetype")
    (synopsis "A fast golang library for MIME type and file extension detection")
    (description "This is a package for detecting MIME types and extensions
based on magic numbers.  Features include

@itemize
@item fast and precise MIME type and file extension detection
@item long list of supported MIME types
@item common file formats are prioritized
@item small and simple API
@item handles MIME type aliases
@item thread safe
@item low memory usage, besides the file header
@end itemize")
    (license license:expat)))



;;; :end github.com/cli/cli
