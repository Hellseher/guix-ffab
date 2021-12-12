(define-module (ffab packages golang)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages base)
  #:use-module (gnu packages golang)
  #:use-module (gnu packages check)
  #:use-module (gnu packages ruby)
  #:use-module (guix build-system go)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix packages))


(define-public go-golang-org-x-tools
  (let ((commit "d824a7481dff873bb36f76c5b92c46c97852d52e")
        (revision "2"))
    (package
      (name "go-golang-org-x-tools")
      (version (git-version "0.1.4" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://go.googlesource.com/tools")
               (commit commit)))
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
      (license license:bsd-3))))

;; 20210710T203819+0100
(define-public go-golang-org-x-tools-gopls
  (package
    (inherit go-golang-org-x-tools)
    (name "go-golang-org-x-tools-gopls")
    (arguments
     '(#:import-path "golang.org/x/tools/gopls"
       #:unpack-path "golang.org/x/tools"))
    (native-inputs
     `(
       ("go-github-com-sergi-go-diff" ,go-github-com-sergi-go-diff)
       ("go-golang-org-x-xerrors" ,go-golang-org-x-xerrors)
       ("go-golang.org-x-sync-errgroup" ,go-golang.org-x-sync-errgroup)
       ("go-mvdan-cc-gofumpt" ,go-mvdan-cc-gofumpt)
       ("go-mvdan-cc-xurls-v2" ,go-mvdan-cc-xurls-v2)
       ))
    (synopsis "Official language server for the Go language")
    (description
     "@code{gopls} (pronounced \"Go please\") is the official Go language server
developed by the Go team. It provides IDE features to any LSP-compatible
editor.")
    (home-page "https://pkg.go.dev/golang.org/x/tools/gopls")))

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
      `(("go-gopkg-in-check-v1" ,go-gopkg-in-check-v1)
        ("go-github-com-rogpeppe-go-internal" ,go-github-com-rogpeppe-go-internal)))
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
