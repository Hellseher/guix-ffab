;;; GNU Guix --- Functional package management for GNU
;;; Copyright © 2021-2022 Sharlatan Hellseher <sharlatanus@gmail.com>
;;;
;;; This file is NOT part of GNU Guix.
;;;
;;; This program is free software: you can redistribute it and/or modify
;;; it under the terms of the GNU General Public License as published by
;;; the Free Software Foundation, either version 3 of the License, or
;;; (at your option) any later version.
;;;
;;; This program is distributed in the hope that it will be useful,
;;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;; GNU General Public License for more details.
;;;
;;; You should have received a copy of the GNU General Public License
;;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

(define-module (ffab packages golang)
  #:use-module (ffab packages golang-web)
  #:use-module (ffab packages protobuf)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages base)
  #:use-module (gnu packages check)
  #:use-module (gnu packages golang)
  #:use-module (gnu packages golang-build)
  #:use-module (gnu packages golang-check)
  #:use-module (gnu packages golang-crypto)
  #:use-module (gnu packages golang-xyz)
  #:use-module (gnu packages syncthing)
  #:use-module (gnu packages terminals)
  #:use-module (gnu packages version-control)
  #:use-module (gnu packages vim)
  #:use-module (gnu packages xdisorg)
  #:use-module (guix build utils)
  #:use-module (guix build-system go)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages)
  #:use-module (ice-9 match))

;; 20210710T203819+0100
;; NOTE: (Sharlatan-20220813T152536+0100): it needs more lvoe!
(define go-golang-org-x-tools-gopls
  (package
    (version "0.7.4")
    (name "go-golang-org-x-tools-gopls")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://go.googlesource.com/tools")
                    (commit (string-append "gopls/v" version))))
              (file-name (string-append "gopls-" version))
              (sha256
               (base32
                "1zzil5px8maqnx22i30rqxc3avnvw9jrb8dhw64lif6kml9694mn"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "golang.org/x/tools/gopls"
       #:unpack-path "golang.org/x/tools"))
    (native-inputs (list go-github-com-sergi-go-diff go-golang-org-x-xerrors
                         go-golang.org-x-sync-errgroup go-mvdan-cc-gofumpt
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
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/mvdan/xurls")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0w7i1yfl5q24wvmsfb3fz1zcqsdh4c6qikjnmswxbjc7wva8rngg"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "mvdan.cc/xurls/v2"))
    (propagated-inputs (list go-gopkg-in-check-v1
                             go-github-com-rogpeppe-go-internal))
    (home-page "https://github.com/mvdan/xurls")
    (synopsis "Extract urls from text")
    (description
     "Package xurls extracts urls from plain text using regular expressions.")
    (license license:bsd-3)))

;; 20220731T214206+0100
;; NOTE: (Sharlatan-20220813T152559+0100):  https://issues.guix.gnu.org/52915
(define go-mvdan-cc-gofumpt
  (package
    (name "go-mvdan-cc-gofumpt")
    (version "0.1.1")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/mvdan/gofumpt")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0q97nywfs7i2zm9hdhm0df3kdaj6lrrps151j75nl1fgs0kp2wrh"))))
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
    (native-inputs `(("gopkg-in-errgo-fmt-errors" ,gopkg-in-errgo-fmt-errors)))
    (propagated-inputs `(("go-github-com-google-go-cmp-cmp" ,go-github-com-google-go-cmp-cmp)
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

;; 20220731T214024+0100
;; (define-public go-github-com-hashicorp-hcl
;; added-to-downstream-guix 97657689507a0681aa9699407d292383ff22c330
;; CommitDate: Wed Jan 5 23:44:20 2022 +0100

;; <2021-12-12 Sun>
;; (define-public go-github-com-hashicorp-hcl-v2
;; added-to-downstream-guix 63b194080d3038bdfc54d66355bdd59e86197214
;; CommitDate: Fri Jan 28 10:36:01 2022 +0100

;; 20220128T103316+0100
;; (define-public go-github-com-agext-levenshtein
;; added-to-downstream-guix 52850033d37ea2153210974acbb969b616d3ba20
;; CommitDate: Fri Jan 28 10:33:16 2022 +0100

;; 20220128T103150+0100
;; (define-public go-github-com-apparentlymart-go-textseg-v13
;; added-to-downstream-guix 433f04136b443cb935a0911fa7560fa87f029e64
;; CommitDate: Fri Jan 28 10:31:50 2022 +0100

;; 20220128T103150+0100
;; (define-public go-github-com-apparentlymart-go-textseg-autoversion
;; added-to-downstream-guix 433f04136b443cb935a0911fa7560fa87f029e64
;; CommitDate: Fri Jan 28 10:31:50 2022 +0100

;; 20220128T103434+0100
;; (define-public go-github-com-zclconf-go-cty
;; added-to-downstream-guix a222ae9146404e6d04276682a0a5ad4fe4bc6743
;; CommitDate: Fri Jan 28 10:34:34 2022 +0100

;; 20220128T103709+0100
;; (define-public go-github-com-vmihailenco-msgpack-v4
;; added-to-downstream-guix 4db80f3f0cc32d4f6a487cb51a3ac393694affe3
;; CommitDate: Fri Jan 28 10:37:09 2022 +0100

;; 20220128T102859+0100
;; (define-public go-github-com-vmihailenco-tagparser
;; added-to-downstream-guix cd355a8dafb0ccb748ab48604ac3890ba1931e1e
;; CommitDate: Fri Jan 28 10:28:59 2022 +0100

;; 20220731T214100+0100
(define-public go-github-com-golang-jwt-jwt-v4
  (package
    (name "go-github-com-golang-jwt-jwt-v4")
    (version "4.1.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/golang-jwt/jwt")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "020yxsrplnnm9vcd0jdaaziv6pyhvvs9y0qadzbbrqblqmj0vy4x"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/golang-jwt/jwt/v4"))
    (home-page "https://github.com/golang-jwt/jwt")
    (synopsis "Golang implementation of JSON Web Tokens")
    (description
     "This library supports the parsing and verification as well as the generation
and signing of JWTs.  Current supported signing algorithms are HMAC SHA, RSA,
RSA-PSS, and ECDSA, though hooks are present for adding your own.")
    (license license:expat)))

;; 20220731T214217+0100
(define-public go-github-com-golang-mock-mockgen
  (package
    (name "go-github-com-golang-mock-mockgen")
    (version "1.6.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/golang/mock")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1hara8j0x431njjhqxfrg1png7xa1gbrpwza6ya4mwlx76hppap4"))))
    (build-system go-build-system)
    (arguments
     ;; NOTE: (Sharlatan-20220813T151655+0100): Failed tests:
     ;;
     ;; --- FAIL: TestFileParser_ParseFile (0.01s) parse_test.go:25: Unexpected
     ;; error: internal/tests/custom_package_name/greeter/greeter.go:17:11:
     ;; failed parsing returns:
     ;; internal/tests/custom_package_name/greeter/greeter.go:17:14: unknown
     ;; package "client"
     ;;
     ;; --- FAIL: TestFileParser_ParsePackage (0.01s) parse_test.go:56:
     ;; Unexpected error: go/build: go list
     ;; github.com/golang/mock/mockgen/internal/tests/custom_package_name/greeter:
     ;; exit status 1 go: golang.org/x/mod@v0.4.2: Get
     ;; "https://proxy.golang.org/golang.org/x/mod/@v/v0.4.2.mod": dial
     ;; tcp: lookup proxy.golang.org on [::1]:53: read udp
     ;; [::1]:54944->[::1]:53: read: connection refused go:
     ;; golang.org/x/mod@v0.4.2: Get
     ;; "https://proxy.golang.org/golang.org/x/mod/@v/v0.4.2.mod": dial
     ;; tcp: lookup proxy.golang.org on [::1]:53: read udp
     ;; [::1]:54944->[::1]:53: read: connection refused
     ;;
     ;; --- FAIL: TestImportsOfFile (0.01s)
     ;; parse_test.go:96: Expected imports to have key "client"
     ;; parse_test.go:106: Expected import not to have key "v1"
     ;;
     ;; --- FAIL: TestParseArrayWithConstLength (0.00s) parse_test.go:136:
     ;; Unexpected error: internal/tests/const_array_length/input.go:12:5:
     ;; failed parsing returns:
     ;; internal/tests/const_array_length/input.go:12:9: unknown package in
     ;; array length: can't find import: "math"
     ;;
     ;; FAIL
     ;; FAIL    github.com/golang/mock/mockgen  0.119s
     ;; FAI
     '(#:tests? #f
       #:import-path "github.com/golang/mock/mockgen"
       #:unpack-path "github.com/golang/mock"))
    (propagated-inputs (list go-golang-org-x-mod go-golang-org-x-tools
                             go-golang-org-x-xerrors))
    (home-page "https://github.com/golang/mock")
    (synopsis "Mocking framework for Golang")
    (description
     "This package provides the mocking framework for the Golang.  It integrates well
with Golang's built-in @code{testing} package, but can be used in other contexts
too.")
    (license license:asl2.0)))

;; 20220730T151556+0100
;; NOTE: (Sharlatan-20220813T155759+0100): WIP needs more love to complete
;; packaging.
(define go-github-com-getsentry-sentry-go
  (package
    (name "go-github-com-getsentry-sentry-go")
    (version "0.13.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/getsentry/sentry-go")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0hisknhn2r6g2fz3kgypa99jvixxkwz8sfyq7x64jy97y2sh2lil"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/getsentry/sentry-go"))
    (propagated-inputs (list go-github-com-gin-gonic-gin
                             go-github-com-go-errors-errors
                             go-github-com-go-martini-martini
                             go-github-com-google-go-cmp-cmp
                             go-github-com-kataras-iris-v12
                             go-github-com-labstack-echo-v4
                             go-github-com-pingcap-errors
                             go-github-com-pkg-errors
                             go-github-com-urfave-negroni
                             go-github-com-valyala-fasthttp))
    (home-page "https://github.com/getsentry/sentry-go")
    (synopsis "Sentry SDK for Golang")
    (description "This package profides sentry.io SDK integration for Golang.")
    (license license:bsd-2)))

;; 20211217T213122+0000
;; added-to-downstream-guix 61f1ec9f60186c23dd609ad3bc569f06c48f3f61
;; CommitDate: Fri Jan 28 10:47:21 2022 +0100
;; (define-public go-github-com-valyala-fasthttp

;; 20211217T213241+0000
;; added-to-downstream-guix 0467ecbe0dda4aead3afdabf7a29e4143d6afa17
;; CommitDate: Fri Jan 28 10:46:36 2022 +0100
;; (define-public go-github-com-valyala-tcplisten

;; 20211217T213438+0000
;; added-to-downstream-guix 1d948dbd97e93dec92dd486efbb8075271f3fde9
;; CommitDate: Fri Jan 28 10:45:33 2022 +0100
;; (define-public go-github-com-valyala-bytebufferpool

;; 20211217T213727+0000
;; added-to-downstream-guix 72274434a8419d80d036b9e91af50a291cda644c
;; CommitDate: Fri Jan 28 10:44:46 2022 +0100
;; (define-public go-github-com-andybalholm-brotli

;; 20211218T165950+0000
;; NOTE: (Sharlatan-20220813T213022+0100): Can be moved to golang-web
(define-public go-github-com-urfave-negroni
  (package
    (name "go-github-com-urfave-negroni")
    (version "1.0.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/urfave/negroni")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1gp6j74adi1cn8fq5v3wzlzhwl4zg43n2746m4fzdcdimihk3ccp"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/urfave/negroni"))
    (home-page "https://github.com/urfave/negroni")
    (synopsis "Idiomatic HTTP Middleware for Golang")
    (description
     "Package negroni is an idiomatic approach to web middleware in Go.  It is tiny,
non-intrusive, and encourages use of net/http Handlers.")
    (license license:expat)))

;; 20211218T170054+0000
(define-public go-github-com-pingcap-errors
  (package
    (name "go-github-com-pingcap-errors")
    (version "0.11.4")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/pingcap/errors")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "02k6b30m42aya763fnwx3paq4r8h28yav4i2kv2z4r28r70xxcgn"))))
    (build-system go-build-system)
    (arguments
     ;; NOTE: (Sharlatan-20220813T151249+0100): Fix tests
     ;;
     ;; # github.com/pingcap/errors
     ;; src/github.com/pingcap/errors/example_test.go:6:2: cannot find
     ;; package "github.com/pkg/errors" in any of:
     ;; /gnu/store/d06665qgp3zqp05fr0q1sdbfnpvxywsc-go-1.17.11/
     ;; lib/go/src/github.com/pkg/errors
     ;; (from $GOROOT)
     ;; /tmp/guix-build-go-github-com-pingcap-errors-0.11.4.drv-0/
     ;; src/github.com/pkg/errors
     ;; (from $GOPATH)
     ;;
     ;; FAIL    github.com/pingcap/errors [setup failed]
     ;; FAIL
     '(#:tests? #f
       #:import-path "github.com/pingcap/errors"))
    (home-page "https://github.com/pingcap/errors")
    (synopsis "Simple error handling primitives for Golang")
    (description "Package errors provides simple error handling primitives.")
    (license license:bsd-2)))

;;20211218T170204+0000
;; ;;NOTE: (Sharlatan-20220813T150447+0100): Fix build by pack missing inputs
(define go-github-com-labstack-echo-v4
  (package
    (name "go-github-com-labstack-echo-v4")
    (version "4.6.1")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/labstack/echo")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0j6q2axjr5aslq76xbacpl7wiimz2cx6ask1lhi7didmzmm3349g"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/labstack/echo/v4"))
    (propagated-inputs (list go-github-com-golang-jwt-jwt-v4))
    (home-page "https://github.com/labstack/echo")
    (synopsis "Feature Overview")
    (description
     "Package echo implements high performance, minimalist Go web framework.")
    (license license:expat)))

;; 20220731T214252+0100
(define-public go-github-com-atotto-clipboard
  (package
    (name "go-github-com-atotto-clipboard")
    (version "0.1.3")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/atotto/clipboard")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "060n0sjwqarwhlfn3aiw0vyn8vrilg304zyql5vhih4g8r92yq1n"))))
    (build-system go-build-system)
    (arguments
     ;; NOTE: (Sharlatan-20220813T144650+0100): Test need more love to pass, failing on:
     ;;
     ;; starting phase `check'
     ;; --- FAIL: TestCopyAndPaste (0.01s)
     ;; clipboard_test.go:18: exit status 1
     ;; --- FAIL: TestMultiCopyAndPaste (0.00s)
     ;; clipboard_test.go:37: exit status 1
     ;; --- FAIL: Example (0.00s)
     ;; got:
     ;; want:
     ;; 日本語
     ;; FAIL
     ;; FAIL    github.com/atotto/clipboard     0.012s
     ;; FAIL
     '(#:tests? #f
       #:import-path "github.com/atotto/clipboard"))
    (inputs (list xsel))
    (home-page "https://github.com/atotto/clipboard")
    (synopsis "Clipboard for Go")
    (description "Package clipboard read/write on clipboard")
    (license license:bsd-3)))

;; 20220731T214258+0100
(define-public go-github-com-aybabtme-humanlog
  (package
    (name "go-github-com-aybabtme-humanlog")
    (version "0.4.1")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/aybabtme/humanlog")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0s2ni1d4qqrdybvw8w8q5m500nhs6yz2a73wihmfhlk9hq36037n"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/aybabtme/humanlog"))
    (propagated-inputs (list go-github-com-aybabtme-rgbterm
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

;; 20220731T214316+0100
(define-public go-github-com-go-logfmt-logfmt
  (package
    (name "go-github-com-go-logfmt-logfmt")
    (version "0.5.1")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/go-logfmt/logfmt")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "01fs4x2aqw2qcsz18s4nfvyqv3rcwz5xmgpk3bic6nzgyzsjd7dp"))))
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

;; 20220731T214321+0100
(define-public go-github-com-kr-logfmt
  (package
    (name "go-github-com-kr-logfmt")
    (version "0.0.0-20210122060352-19f9bcb100e6")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/kr/logfmt")
                    (commit (go-version->git-ref version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1l6322amgy092n30l6br0wzszf3l2a3dkylck3pzpvzr4lqfcyhb"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/kr/logfmt"))
    (home-page "https://github.com/kr/logfmt")
    (synopsis "Parse logfmt messages")
    (description "Package implements the decoding of logfmt key-value pairs.")
    (license license:expat)))

;; 20220731T214326+0100
(define-public go-github-com-aybabtme-rgbterm
  (let ((commit "cc83f3b3ce5911279513a46d6d3316d67bedaa54")
        (revision "1"))
    (package
      (name "go-github-com-aybabtme-rgbterm")
      (version (git-version "0.0.0" revision commit))
      (source (origin
                (method git-fetch)
                (uri (git-reference
                      (url "https://github.com/aybabtme/rgbterm")
                      (commit commit)))
                (file-name (git-file-name name version))
                (sha256
                 (base32
                  "0wvmxvjn64968ikvnxrflb1x8rlcwzpfl53fzbxff2axbx9lq50q"))))
      (build-system go-build-system)
      (arguments
       '(#:import-path "github.com/aybabtme/rgbterm"))
      (home-page "https://github.com/aybabtme/rgbterm")
      (synopsis "RGB terminal")
      (description
       "Package rgbterm colorizes bytes and strings using RGB colors, for a full
range of pretty terminal strings.")
      (license license:expat))))

;; 20220731T214333+0100
(define-public go-github-com-cli-safeexec
  (package
    (name "go-github-com-cli-safeexec")
    (version "1.0.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/cli/safeexec")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1q80va3721dyw33lrnv7x3gd66kcnbsm38dv3lk7xqhii2adawmk"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/cli/safeexec"))
    (home-page "https://github.com/cli/safeexec")
    (synopsis "Safer version of exec.LookPath on Windows")
    (description
     "This package provides a Go module that provides a safer alternative to
@code{exec.LookPath()} on Windows.")
    (license license:bsd-2)))

;;+end_github.com/jesseduffield

;; 20220731T214415+0100
(define go-github-com-alecaivazis-survey-v2
  (package
    (name "go-github-com-alecaivazis-survey-v2")
    (version "2.3.2")
    (source (origin
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
    (native-inputs (list go-github-com-davecgh-go-spew
                         go-github-com-stretchr-testify vim))
    (propagated-inputs (list go-github-com-hinshun-vt10x
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
    (home-page "https://github.com/AlecAivazis/survey")
    (synopsis "Build interactive prompts on terminals")
    (description "This is a library for building interactive prompts on
terminals supporting ANSI escape sequences.")
    (license license:expat)))

;; 20220731T214428+0100
(define-public go-github-com-hinshun-vt10x
  (package
    (name "go-github-com-hinshun-vt10x")
    (version "0.0.0-20180616224451-1954e6464174")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/hinshun/vt10x")
                    (commit (go-version->git-ref version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "05a7z6qmmwm3672x1jmhy2d6cqyzypyxcpybs6incfdzwrx851pl"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/hinshun/vt10x"))
    (home-page "https://github.com/hinshun/vt10x")
    (synopsis "Terminal emulation backend")
    (description
     "This package is a vt10x terminal emulation backend.  It has
larged been influenced by st, rxvt, xterm, and iTerm as reference.")
    (license license:expat)))

;; 20220731T214435+0100
;; NOTE: (Sharlatan-20220813T155726+0100): archived project: moved to https://github.com/creack/pty
(define go-github-com-kr-pty
  (package
    (name "go-github-com-kr-pty")
    (version "1.1.8")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/kr/pty")
                    (commit (string-append "v" version))))
              (file-name (git-file-name "go-github-com-kr-pty" version))
              (sha256
               (base32
                "1vcl6f90n0f8s8b4fyh0832ilybjqcypqyj233lqj1hx62fvgdbk"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/kr/pty"))
    (propagated-inputs (list go-github-com-creack-pty))
    (home-page "https://github.com/kr/pty")
    (synopsis "PTY interface for Go")
    (description "Pty is a Go package for using Unix pseudo-terminals.")
    (license license:expat)))

;; 20220731T214441+0100
(define-public go-github-com-netflix-go-expect
  (package
    (name "go-github-com-netflix-go-expect")
    (version "0.0.0-20201125194554-85d881c3777e")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/Netflix/go-expect")
                    (commit (go-version->git-ref version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "01s59hsdwy2nngngcgzyhncys56pdgzr6lff7k8kjrh26zk6pdv5"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/Netflix/go-expect"))
    (native-inputs (list go-github-com-stretchr-testify go-github-com-kr-pty))
    (home-page "https://github.com/Netflix/go-expect")
    (synopsis "Expect-like library to automate control of terminal programs")
    (description
     "This package provides an expect-like interface to automate control of
applications.  It is unlike expect in that it does not spawn or manage process
lifecycle.  This package only focuses on expecting output and sending input
through it's pseudoterminal.")
    (license license:asl2.0)))

;; 20220731T214446+0100
(define-public go-github-com-creack-pty
  (package
    (name "go-github-com-creack-pty")
    (version "1.1.11")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/creack/pty")
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

;; 20220731T214451+0100
(define-public go-github-com-briandowns-spinner
  (package
    (name "go-github-com-briandowns-spinner")
    (version "1.18.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/briandowns/spinner")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "11lfyfj97rzmz7n0z6qfhqcgr3lilkjamppg4j9wivagk4879jil"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/briandowns/spinner"))
    (native-inputs (list go-github-com-mattn-go-colorable
                         go-github-com-fatih-color))
    (home-page "https://github.com/briandowns/spinner")
    (synopsis "Progress indicator for any terminal application")
    (description
     "This is a simple package to add a spinner or progress indicator to any
terminal application.")
    (license license:asl2.0)))

;; 20220731T214457+0100
(define-public go-github-com-cli-browser
  (package
    (name "go-github-com-cli-browser")
    (version "1.1.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/cli/browser")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "13z27cc0a184bhprspwclzbvrzsrfd5qyk5r2djfx5nm85igxr0n"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/cli/browser"))
    (native-inputs (list go-golang-org-x-sys))
    (home-page "https://github.com/cli/browser")
    (synopsis "Helpers to open URLs, or files in the default web browser")
    (description
     "This library provides helpers to open URLs, readers, or files in the
system default web browser.")
    (license license:bsd-2)))

;; 20220731T214502+0100
(define-public go-github-com-cli-oauth
  (package
    (name "go-github-com-cli-oauth")
    (version "0.9.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/cli/oauth")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1h45ms2772mcbki0pj1i396i77w7j3jbcbzi7zpn7i6hsmj1rvd3"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/cli/oauth"))
    (native-inputs (list go-github-com-cli-browser))
    (home-page "https://github.com/cli/oauth")
    (synopsis "Perform OAuth Device flow and Web application flow in Go")
    (description
     "This is a library for performing OAuth Device flow and Web application
flow in Go client apps.")
    (license license:expat)))

;; 20220731T214507+0100
(define-public go-github-com-cpuguy83-go-md2man-v2
  (package
    (name "go-github-com-cpuguy83-go-md2man-v2")
    (version "2.0.1")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/cpuguy83/go-md2man")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "051ljpzf1f5nh631lvn53ziclkzmx5lza8545mkk6wxdfnfdcx8f"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/cpuguy83/go-md2man"))
    (native-inputs (list go-github-com-shurcool-sanitized-anchor-name
                         go-github-com-russross-blackfriday-v2
                         go-github-com-pmezard-go-difflib))
    (home-page "https://github.com/cpuguy83/go-md2man")
    (synopsis "Convert Markdown into Man pages")
    (description "This package converts Markdown into Roff Man pages.")
    (license license:expat)))

;; 20220731T214512+0100
(define-public go-github-com-russross-blackfriday-v2
  (package
    (name "go-github-com-russross-blackfriday-v2")
    (version "2.1.0")
    (source (origin
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
     "Blackfriday is a Markdown processor implemented in Go.  It is paranoid
about its input (so you can safely feed it user-supplied data), it is fast, it
supports common extensions (tables, smart punctuation substitutions, etc.), and
it is safe for all utf-8 (unicode) input.")
    (license license:bsd-2)))

;; 20220731T214517+0100
(define-public go-github-com-gabriel-vasile-mimetype
  (package
    (name "go-github-com-gabriel-vasile-mimetype")
    (version "1.4.0")
    (source (origin
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
       #:import-path "github.com/gabriel-vasile/mimetype"
       #:phases (modify-phases %standard-phases
                  ;; The files are read-only
                  (add-before 'reset-gzip-timestamps 'make-gz-files-writable
                    (lambda* (#:key outputs #:allow-other-keys)
                      (for-each make-file-writable
                                (find-files (string-append (assoc-ref outputs
                                                                      "out"))
                                            ".*\\.gz$")) #t)))))
    (propagated-inputs (list go-golang-org-x-net))
    (home-page "https://github.com/gabriel-vasile/mimetype")
    (synopsis "Fast golang library for MIME type and file extension detection")
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

;; 20220731T214524+0100
(define-public go-github-com-shurcool-graphql
  (package
    (name "go-github-com-shurcool-graphql")
    (version "0.0.0-20200928012149-18c5c3165e3a")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/shurcooL/graphql")
                    (commit (go-version->git-ref version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0psxc2q3qsh1lfag11m2gz54fzzvlss5znyf34aars94igsjywzx"))))
    (build-system go-build-system)
    (arguments
     (list #:import-path "github.com/shurcooL/graphql"))
    (inputs (list go-golang-org-x-net))
    (home-page "https://github.com/shurcooL/graphql")
    (synopsis "GraphQL client implementation for Golang")
    (description "Package graphql provides a GraphQL client implementation.")
    (license license:expat)))

(define-public go-github-com-microsoft-go-winio
  (package
    (name "go-github-com-microsoft-go-winio")
    (version "0.6.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/microsoft/go-winio")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1lcnz98bj2bkjlqwqgamdzr96v6fg7wagy3n1v7kvfazfsyh03ad"))))
    (build-system go-build-system)
    (arguments
     (list #:import-path "github.com/Microsoft/go-winio"
           #:tests? #f ; Source-only package
           #:phases
           #~(modify-phases %standard-phases
               ;; Source-only package
               (delete 'build))))
    (propagated-inputs
     (list go-golang-org-x-mod
           go-golang-org-x-tools
           go-golang-org-x-sys
           go-github-com-sirupsen-logrus))
    (home-page "https://github.com/Microsoft/go-winio")
    (synopsis "Win32 IO-related utilities for Go")
    (description
     "This package provides utilities for efficiently performing Win32 IO operations
in Go.  Currently, this package is provides support for genreal IO and
management of")
    (license license:expat)))

;; 20220515T223341+0100
(define-public go-github-com-logrusorgru-aurora
  (package
    (name "go-github-com-logrusorgru-aurora")
    (version "3.0.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/logrusorgru/aurora")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0z7cgj8gl69271d0ag4f4yjbsvbrnfibc96cs01spqf5krv2rzjc"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/logrusorgru/aurora"))
    (home-page "https://github.com/logrusorgru/aurora")
    (synopsis
     "Golang ultimate ANSI-colors that supports Printf/Sprintf methods")
    (description "Package aurora implements ANSI-colors")
    (license license:unlicense)))

;; 20220515T223437+0100
(define-public go-github-com-konsorten-go-windows-terminal-sequences
  (package
    (name "go-github-com-konsorten-go-windows-terminal-sequences")
    (version "1.0.3")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url
                     "https://github.com/konsorten/go-windows-terminal-sequences")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1yrsd4s8vhjnxhwbigirymz89dn6qfjnhn28i33vvvdgf96j6ypl"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/konsorten/go-windows-terminal-sequences"))
    (home-page "https://github.com/konsorten/go-windows-terminal-sequences")
    (synopsis "Windows Terminal Sequences")
    (description
     "This library allow for enabling Windows terminal color support for Go.")
    (license license:expat)))

;; 20220515T223750+0100
(define-public go-github-com-cespare-xxhash
  (package
    (name "go-github-com-cespare-xxhash")
    (version "1.1.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/cespare/xxhash")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1qyzlcdcayavfazvi03izx83fvip8h36kis44zr2sg7xf6sx6l4x"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/cespare/xxhash"))
    (propagated-inputs `(("go-github-com-spaolacci-murmur3" ,go-github-com-spaolacci-murmur3)
                         ("go-github-com-oneofone-xxhash" ,go-github-com-oneofone-xxhash)))
    (home-page "https://github.com/cespare/xxhash")
    (synopsis "xxhash")
    (description
     "Package xxhash implements the 64-bit variant of xxHash (XXH64) as described at
@url{http://cyan4973.github.io/xxHash/,http://cyan4973.github.io/xxHash/}.")
    (license license:expat)))

;; 20220515T223858+0100
(define-public go-github-com-awesome-gocui-keybinding
  (package
    (name "go-github-com-awesome-gocui-keybinding")
    (version "1.0.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/awesome-gocui/keybinding")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0d1nvxs2pd6nc10gm3md2rsd0v33025b8dik1l1iy8klzhiqfd1q"))))
    (build-system go-build-system)
    (arguments
     ;; NOTE: (Sharlatan-20220813T145037+0100): Tests failed on:
     ;; starting phase `check'
     ;;
     ;; --- FAIL: TestParse (0.00s) keybinding_test.go:52: Expected error
     ;; message 'unsupported keybinding: KeyCtrl! (+1)' but got 'unsupported
     ;; keybinding: KeyCtrl! (+4)' (trial 19)
     ;;
     ;; FAIL
     ;; FAIL    github.com/awesome-gocui/keybinding     0.001s
     ;; FAIL
     `(#:tests? #f
       #:import-path "github.com/awesome-gocui/keybinding"))
    (propagated-inputs (list go-github-com-awesome-gocui-gocui))
    (home-page "https://github.com/awesome-gocui/keybinding")
    (synopsis "Golang wrapper for parsing gocui keybindings")
    (description
     "This package provides a golang wrapper for parsing gocui keybindings.")
    (license license:expat)))

;; 20220515T223949+0100
(define-public go-github-com-awesome-gocui-gocui
  (package
    (name "go-github-com-awesome-gocui-gocui")
    (version "1.1.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/awesome-gocui/gocui")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "082ziwxj239nxcclv54d783933s6c5ks592mq3ilcvg1vfyfkjz8"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/awesome-gocui/gocui"))
    (propagated-inputs (list go-golang-org-x-text
                             go-github-com-mattn-go-runewidth
                             go-github-com-gdamore-tcell-v2))
    (home-page "https://github.com/awesome-gocui/gocui")
    (synopsis
     "Minimalist Golang package aimed at creating Console User Interfaces")
    (description
     "Package gocui allows creating console user interfaces.

Highlighted features:
@itemize
@item Minimalist API.
@item Views (the windows in the GUI) implement the interface io.ReadWriter.
@item Support for overlapping views.
@item The GUI can be modified at runtime (concurrent-safe).
@item Global and view-level keybindings.
@item Mouse support.
@item Colored text.
@item Customizable edition mode.
@item Easy to build reusable widgets, complex layouts.
@end itemize")
    (license license:bsd-3)))

;; 20220516T220713+0100
(define-public go-github-com-azure-go-ansiterm
  (package
    (name "go-github-com-azure-go-ansiterm")
    (version "0.0.0-20210617225240-d185dfc1b5a1")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/Azure/go-ansiterm")
                    (commit (go-version->git-ref version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1y54b1fx80qlyvv2915xrryb9vcc8nnbsdkxszhxjg8bcg85ps5c"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/Azure/go-ansiterm"))
    (propagated-inputs `(("go-golang-org-x-sys" ,go-golang-org-x-sys)))
    (home-page "https://github.com/Azure/go-ansiterm")
    (synopsis "Golang package for ANSI terminal emulation in Windows")
    (description
     "This is a cross platform Ansi Terminal Emulation library.  It reads a stream of
Ansi characters and produces the appropriate function calls.  The results of the
function calls are platform dependent.")
    (license license:expat)))

;;+begin_github.com/modern-go

;; 20220730T152705+0100
(define-public go-github-com-modern-go-reflect2
  (package
    (name "go-github-com-modern-go-reflect2")
    (version "1.0.2")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/modern-go/reflect2")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "05a89f9j4nj8v1bchfkv2sy8piz746ikj831ilbp54g8dqhl8vzr"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/modern-go/reflect2"))
    (home-page "https://github.com/modern-go/reflect2")
    (synopsis "Implementaion of Golang reflect")
    (description
     "Reflect api that avoids runtime @code{reflect.Value} cost:
@itemize
@item reflect get/set @code{interface{}}, with type checking
@item reflect get/set @code{unsafe.Pointer}, without type checking
@item @code{reflect2.TypeByName} works like @code{Class.forName} found in java
@end itemize")
    (license license:asl2.0)))

;; 20220730T155408+0100
(define-public go-github-com-modern-go-concurrent
  (package
    (name "go-github-com-modern-go-concurrent")
    (version "1.0.3")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/modern-go/concurrent")
                    (commit version)))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0s0fxccsyb8icjmiym5k7prcqx36hvgdwl588y0491gi18k5i4zs"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/modern-go/concurrent"))
    (home-page "https://github.com/modern-go/concurrent")
    (synopsis "Concurrency utilities for Golang")
    (description
     "Concurrency utilities for Go, including a backported version of
+@code{sync.Map} for Go < 1.9 named @code{concurrent.Map}, and
+@code{concurrent.Executor}.")
    (license license:asl2.0)))

;;+end_github.com/modern-go

;;+begin_github.com/go-playground

;; 20220731T210059+0100
(define-public go-github-com-go-playground-validator-v10
  (package
    (inherit go-gopkg-in-go-playground-validator-v9)
    (name "go-github-com-go-playground-validator-v10")
    (version "10.11.0")
    (home-page "https://gopkg.in/go-playground/validator.v10")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/go-playground/validator")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "042s63q6la8izcxf6nljcq7425qhndln7h4i55xh57j6gmp16frl"))))
    (arguments
     '(#:import-path "github.com/go-playground/validator/v10"))
    (propagated-inputs (list go-github-com-go-playground-universal-translator
                             go-gopkg-in-go-playground-assert-v2
                             go-github-com-leodido-go-urn
                             go-golang-org-x-crypto go-golang-org-x-text))))

;; 20220731T211127+0100
(define-public go-gopkg-in-go-playground-assert-v2
  (package
    (inherit go-gopkg-in-go-playground-assert-v1)
    (name "go-gopkg-in-go-playground-assert-v2")
    (version "2.0.1")
    (home-page "https://github.com/go-playground/assert")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url home-page)
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1cl9c4s405zddzrj36hhs0a18g02zscdl46fyipp6k91mhvai8wz"))))
    (arguments
     '(#:import-path "github.com/go-playground/assert/v2"))))

;;+end_github.com/go-playground

;; 20220731T213050+0100
(define-public go-github-com-json-iterator-go
  (package
    (name "go-github-com-json-iterator-go")
    (version "1.1.12")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/json-iterator/go")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1c8f0hxm18wivx31bs615x3vxs2j3ba0v6vxchsjhldc8kl311bz"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/json-iterator/go"))
    (native-inputs (list go-github-com-stretchr-testify))
    (propagated-inputs (list go-github-com-modern-go-reflect2
                             go-github-com-modern-go-concurrent
                             go-github-com-google-gofuzz
                             go-github-com-davecgh-go-spew))
    (home-page "https://github.com/json-iterator/go")
    (synopsis "Golang encoding/json high-performance replacemenvt")
    (description
     "Package jsoniter implements encoding and decoding of JSON as defined in
@url{https://rfc-editor.org/rfc/rfc4627.html,RFC 4627} and provides interfaces
with identical syntax of standard lib encoding/json.  Converting from
encoding/json to jsoniter is no more than replacing the package with jsoniter
and variable type declarations (if any).  jsoniter interfaces gives 100%
compatibility with code using standard lib.")
    (license license:expat)))

;; 20220731T220023+0100
(define-public go-github-com-pelletier-go-toml-v2
  (package
    (name "go-github-com-pelletier-go-toml-v2")
    (version "2.0.2")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/pelletier/go-toml")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0nz9d88cfr70jipn9xrs3al7nr7rl879y6bi23wmvsj0b7ghr5cm"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/pelletier/go-toml"))
    (native-inputs (list go-github-com-stretchr-testify))
    (home-page "https://github.com/pelletier/go-toml")
    (synopsis "Golang library for the TOML file format")
    (description "Package toml is a TOML parser and manipulation library.")
    (license license:expat)))

;; 20220515T222656+0100
(define-public go-github-com-phayes-permbits
  (let ((commit "39d7c581d2eed692fa2f3f2672e0a1190cd3f767")
        (revision "1"))
    (package
      (name "go-github-com-phayes-permbits")
      (version (git-version "0.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/phayes/permbits")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "1jixy4m65agyyly5mg4icszwzs5hjgj1x7cwvc9a3df6j5lwd41x"))))
      (build-system go-build-system)
      (arguments (list #:import-path "github.com/phayes/permbits"))
      (home-page "https://github.com/phayes/permbits")
      (synopsis "File permissions for golang")
      (description
       "Easy file permissions for golang.  Easily get and set file permission bits.")
      (license license:expat))))

;; 20220731T221227+0100
(define-public go-github-com-ugorji-go-codec
  (package
    (name "go-github-com-ugorji-go-codec")
    (version "1.2.7")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/ugorji/go")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0h4mbxp8zyhash342l00fd5726yhfmgrlk6v7sl6k8fd6mkb10l4"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/ugorji/go/codec"
       #:unpack-path "github.com/ugorji/go"))
    (home-page "https://github.com/ugorji/go")
    (synopsis
     "Idiomatic codec and rpc lib for msgpack, cbor, json, etc. msgpack.org[Go]")
    (description
     "Package codec provides a High Performance, Feature-Rich Idiomatic Golang 1.4+
codec/encoding library for binc, msgpack, cbor, json.")
    (license license:expat)))

;; 20220802T125606+0100
(define-public go-github-com-cloudfoundry-jibber-jabber
  (package
    (name "go-github-com-cloudfoundry-jibber-jabber")
    (version "0.0.0-20151120183258-bcc4c8345a21")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/cloudfoundry-attic/jibber_jabber")
                    (commit (go-version->git-ref version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0q31q03sxfwrdgbv559bgm9gr5cmyzp1al0zli9nlkwa2v9hw5fi"))))
    (build-system go-build-system)
    (arguments
     ;; NOTE: (Sharlatan-20220813T150133+0100): Tests require extra not-packed
     ;; packages, pack them later:
     ;;
     ;; github.com/onsi/ginkgo
     ;; github.com/onsi/gomega
     '(#:tests? #f
       #:import-path "github.com/cloudfoundry/jibber_jabber"))
    (home-page "https://github.com/cloudfoundry-attic/jibber_jabber")
    (synopsis "Cross Platform locale detection for Golang")
    (description
     "Jibber Jabber is a GoLang Library that can be used to detect an operating
system's current language.")
    (license license:asl2.0)))

;; 20220802T125830+0100
(define-public go-github-com-go-errors-errors
  (package
    (name "go-github-com-go-errors-errors")
    (version "1.4.2")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/go-errors/errors")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1ww0yxp6pyd1sdb1y6zqlas7vpq8pr6d4p1z8iqm6mhsb0k4ni2f"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/go-errors/errors"))
    (home-page "https://github.com/go-errors/errors")
    (synopsis "Errors with stacktraces for Golang")
    (description "Package errors provides errors that have stack-traces.")
    (license license:expat)))

;; 20220802T130705+0100
(define-public go-github-com-fsmiamoto-git-todo-parser
  (package
    (name "go-github-com-fsmiamoto-git-todo-parser")
    (version "0.0.2")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/fsmiamoto/git-todo-parser")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0jm83d0id8igyifqdcn8rx331jhly8kk4zlh3xid66y39l3hlqwq"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/fsmiamoto/git-todo-parser/todo"
       #:unpack-path "github.com/fsmiamoto/git-todo-parser"))
    (native-inputs (list go-github-com-stretchr-testify))
    (home-page "https://github.com/fsmiamoto/git-todo-parser")
    (synopsis "Small parser for git todo files")
    (description "Small parser for git todo files.")
    (license license:public-domain)))

;; 20220803T200936+0100
(define-public go-git-sr-ht-emersion-gqlclient
  (package
    (name "go-git-sr-ht-emersion-gqlclient")
    (version "0.0.0-20220713194109-e4b2ae1fac10")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://git.sr.ht/~emersion/gqlclient")
                    (commit (go-version->git-ref version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1swly21i3i9czc571skx92gs1gyn9i7ya0967m0a5r3m2k7lcix1"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "git.sr.ht/~emersion/gqlclient"))
    (propagated-inputs (list go-github-com-vektah-gqlparser-v2
                             go-github-com-dave-jennifer
                             go-github-com-agnivade-levenshtein))
    (home-page "https://git.sr.ht/~emersion/gqlclient")
    (synopsis "GraphQL client and code generator for Golang")
    (description
     "This package provides a GraphQL client and code generator for Go.")
    (license license:expat)))

;; 20220803T201334+0100
(define-public go-github-com-juju-ansiterm
  (package
    (name "go-github-com-juju-ansiterm")
    (version "1.0.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/juju/ansiterm")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "05mk7mlvg11dd6b0j0wlq547ghbmx2ywwrlbcb4kddpg7qaqp1va"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/juju/ansiterm"))
    (propagated-inputs (list go-gopkg-in-check-v1
                             go-github-com-mattn-go-isatty
                             go-github-com-mattn-go-colorable
                             go-github-com-lunixbochs-vtclean))
    (home-page "https://github.com/juju/ansiterm")
    (synopsis "Colored writers and tabwriters for Golang")
    (description
     "Package ansiterm provides a Writer that writes out the ANSI escape codes for
color and styles.")
    (license license:lgpl3)))

;; 20220803T204415+0100
(define-public go-github-com-vektah-gqlparser-v2
  (package
    (name "go-github-com-vektah-gqlparser-v2")
    (version "2.4.7")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/vektah/gqlparser")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "174hq1mdk9cc3jvhr810m5z9s5yziria9p5w9311g7ykbzq1yyqs"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/vektah/gqlparser/v2"))
    (propagated-inputs (list go-github-com-agnivade-levenshtein
                             go-github-com-andreyvit-diff
                             go-github-com-sergi-go-diff
                             go-github-com-stretchr-testify
                             go-golang-org-x-tools
                             go-gopkg-in-yaml-v2))
    (home-page "https://github.com/vektah/gqlparser")
    (synopsis "Port of the parser from graphql-js into golang")
    (description
     "This is a parser for graphql, written to mirror the graphql-js reference
implementation as closely while remaining idiomatic and easy to use.")
    (license license:expat)))

;; 20220803T214141+0100
(define-public go-github-com-inconshreveable-mousetrap
  (package
    (name "go-github-com-inconshreveable-mousetrap")
    (version "1.0.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/inconshreveable/mousetrap")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1mn0kg48xkd74brf48qf5hzp0bc6g8cf5a77w895rl3qnlpfw152"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/inconshreveable/mousetrap"))
    (home-page "https://github.com/inconshreveable/mousetrap")
    (synopsis "Detect starting from Windows explorer")
    (description "Mousetrap is a tiny library that answers a single question.")
    (license license:asl2.0)))

;; 20220803T214016+0100
(define-public go-github-com-spf13-cobra-1.5
  (package
    (name "go-github-com-spf13-cobra-1.5")
    (version "1.5.0") ;Newer version than in Guix upstream.
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/spf13/cobra")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0qavvyljh509w5xb46lfkak670szp6v4jswwar1hx13cpid8gk5d"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/spf13/cobra"))
    (propagated-inputs (list go-gopkg-in-yaml-v2 go-github-com-spf13-pflag
                             go-github-com-inconshreveable-mousetrap
                             go-github-com-cpuguy83-go-md2man-v2))
    (home-page "https://github.com/spf13/cobra")
    (synopsis "Overview")
    (description
     "Package cobra is a commander providing a simple interface to create powerful
modern CLI interfaces.  In addition to providing an interface, Cobra
simultaneously provides a controller to organize your application code.")
    (license license:asl2.0)))

;; 20220803T212310+0100
(define-public go-github-com-arbovm-levenshtein
  (package
    (name "go-github-com-arbovm-levenshtein")
    (version "0.0.0-20160628152529-48b4e1c0c4d0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/arbovm/levenshtein")
                    (commit (go-version->git-ref version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0nmx2iip8xpnbmy6gvqpc9ikizr33dr40xgv746h0b0by8n7rv7y"))))
    (build-system go-build-system)
    (arguments
     (list #:import-path "github.com/arbovm/levenshtein"
           ;; Source-only package
           #:tests? #f
           #:phases
           #~(modify-phases %standard-phases
               ;; Source-only package
               (delete 'build))))
    (home-page "https://github.com/arbovm/levenshtein")
    (synopsis "Levenshtein Distance")
    (description
     "@url{http://golang.org,Go} package to calculate the
@url{http://en.wikipedia.org/wiki/Levenshtein_distance,Levenshtein Distance}")
    (license license:bsd-3)))

;; 20220803T210624+0100
;; NOTE: (Sharlatan-20220813T150314+0100): Check what is for, fix build.
(define go-github-com-dave-brenda
  (package
    (name "go-github-com-dave-brenda")
    (version "1.1.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/dave/brenda")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1bcc06ifb9hg0g4qqfrqai1m2r4n1gwix3jaydjzq38c7zwcyd1v"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/dave/brenda"))
    (home-page "https://github.com/dave/brenda")
    (synopsis "Brenda")
    (description "Package brenda is a boolean expression solver for Go AST")
    (license license:expat)))

;; 20220803T211446+0100
(define-public go-github-com-dave-jennifer
  (package
    (name "go-github-com-dave-jennifer")
    (version "1.5.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/dave/jennifer")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "105achj59b8w7df07vwvzgap58pbb605m7hncz152ckg747aj8hx"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/dave/brenda"))
    (home-page "https://github.com/dave/jennifer")
    (synopsis "Code generator for Golang")
    (description "Package brenda is a boolean expression solver for Go AST")
    (license license:expat)))

;; 20220803T210121+0100
(define-public go-github-com-agnivade-levenshtein
  (package
    (name "go-github-com-agnivade-levenshtein")
    (version "1.1.1")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/agnivade/levenshtein")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0cq6jc032gxssiqnlkq3y3i1b19qsg73ysgxfbn6hwf8qnrzc2xn"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/agnivade/levenshtein"))
    (native-inputs (list go-github-com-arbovm-levenshtein))
    (propagated-inputs (list go-github-com-dgryski-trifles))
    (home-page "https://github.com/agnivade/levenshtein")
    (synopsis "Golang implementation to calculate Levenshtein Distance")
    (description
     "Package levenshtein is a Go implementation to calculate Levenshtein Distance.
The library is fully capable of working with non-ascii strings. But the strings
are not normalized. That is left as a user-dependant use case. Please normalize
the strings before passing it to the library if you have such a requirement.")
    (license license:expat)))

;; 20220803T205520+0100
(define-public go-github-com-dgryski-trifles
  (package
    (name "go-github-com-dgryski-trifles")
    (version "0.0.0-20220729183022-231ecf6ed548")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/dgryski/trifles")
                    (commit (go-version->git-ref version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0pbsldp7mc2a9sww22xshnzvab932zj2r02z6dvwy2mbflvgixxx"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/dgryski/trifles"
       ;; Source-only package
       #:tests? #f
       #:phases (modify-phases %standard-phases
                  ;; Source-only package
                  (delete 'build))))
    (home-page "https://github.com/dgryski/trifles")
    (synopsis "Golang collection of mics utilities code")
    (description
     "This package provides the collection of as-it-is code snipets and micro
libraries.")
    (license license:expat)))

;; 20220803T204825+0100
(define-public go-github-com-andreyvit-diff
  (let ((commit "c7f18ee00883bfd3b00e0a2bf7607827e0148ad4")
        (revision "0"))
    (package
      (name "go-github-com-andreyvit-diff")
      (version (git-version "0.0.0" revision commit))
      (source (origin
                (method git-fetch)
                (uri (git-reference
                      (url "https://github.com/andreyvit/diff")
                      (commit commit)))
                (file-name (git-file-name name version))
                (sha256
                 (base32
                  "1s4qjkxig5yqahpzfl4xqh4kzi9mymdpkzq6kj3f4dr5dl3hlynr"))))
      (build-system go-build-system)
      (arguments
       '(#:import-path "github.com/andreyvit/diff"))
      (native-inputs (list go-github-com-sergi-go-diff))
      (home-page "https://github.com/andreyvit/diff")
      (synopsis "Quick string diffs for Golang")
      (description
       "Package @code{diff} provides quick and easy string diffing functions based on
github.com/sergi/go-diff, mainly for diffing strings in tests")
      (license license:expat))))

;; 20220804T214912+0100
(define-public go-github-com-anmitsu-go-shlex
  (let ((commit "38f4b401e2be5955e3e00b843d96e3c406f5094d")
        (revision "0"))
    (package
      (name "go-github-com-anmitsu-go-shlex")
      (version (git-version "0.0.0" revision commit))
      (source (origin
                (method git-fetch)
                (uri (git-reference
                      (url "https://github.com/anmitsu/go-shlex")
                      (commit commit)))
                (file-name (git-file-name name version))
                (sha256
                 (base32
                  "17iz68yzbnr7y4s493asbagbv79qq8hvl2pkxvm6bvdkgphj8w1g"))))
      (build-system go-build-system)
      (arguments
       '(#:import-path "github.com/anmitsu/go-shlex"))
      (home-page "https://github.com/anmitsu/go-shlex")
      (synopsis
       "Library to make a lexical analyzer like Unix shell for golang")
      (description
       "Package shlex provides a simple lexical analysis like Unix shell.")
      (license license:expat))))

;; 20220804T214550+0100
(define-public go-github-com-jessevdk-go-flags
  (package
    (name "go-github-com-jessevdk-go-flags")
    (version "1.5.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/jessevdk/go-flags")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "13ixw1yx4bvcj66lkc8zgwf9j7gkvj686g991gycdsafvdvca0lj"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/jessevdk/go-flags"
       #:modules ((ice-9 match)
                  (guix build go-build-system)
                  (guix build utils))
       #:phases (modify-phases %standard-phases
                  (add-before 'check 'patch-diff-path
                    (lambda* (#:key inputs #:allow-other-keys)
                      (substitute* "src/github.com/jessevdk/go-flags/assert_test.go"
                        (("diff\",")
                         (string-append (search-input-file inputs "/bin/diff")
                                        "\",")))))
                  (add-after 'patch-diff-path 'set-epoch-time
                    (lambda _
                      (setenv "SOURCE_DATE_EPOCH" "1630000000")))
                  (add-after 'patch-diff-path 'disable-failing-tests
                    (lambda _
                      ;; Disable failing tests:
                      (for-each (match-lambda
                                  ((file test)
                                   (let ((regex (string-append "^(func\\s+)("
                                                               test "\\()")))
                                     (substitute* file
                                       ((regex all before test_name)
                                        (string-append before "Disabled"
                                                       test_name))))))
                                ;; Issue with epoch time, remove when it's merged
                                ;; https://github.com/jessevdk/go-flags/pull/376
                                '(("src/github.com/jessevdk/go-flags/help_test.go"
                                   "TestMan"))))))))
    (native-inputs (list diffutils))
    (propagated-inputs (list go-golang-org-x-sys))
    (home-page "https://github.com/jessevdk/go-flags")
    (synopsis "Command line arguments parsing library for Golang")
    (description
     "Package flags provides an extensive command line option parser.  The flags
package is similar in functionality to the go built-in flag package but provides
more options and uses reflection to provide a convenient and succinct way of
specifying command line options.")
    (license license:bsd-3)))

;; 20220804T214322+0100
(define-public go-github-com-go-git-go-billy-v5
  (package
    (name "go-github-com-go-git-go-billy-v5")
    (version "5.3.1")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/go-git/go-billy")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0x5z649f47lwsqw8578a5hvgjaxp0zz6cg184s0n68xdqhza3m2i"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/go-git/go-billy/v5"))
    (propagated-inputs (list go-gopkg-in-check-v1 go-golang-org-x-sys
                             go-github-com-niemeyer-pretty
                             go-github-com-kr-text))
    (home-page "https://github.com/go-git/go-billy")
    (synopsis "Interface filesystem abstraction for Golang")
    (description
     "The missing interface filesystem abstraction for Go.  Billy implements an
interface based on the @code{os} standard library, allowing to develop
applications without dependency on the underlying storage.  Makes it virtually
free to implement mocks and testing over filesystem operations.")
    (license license:asl2.0)))

;; 20220804T214406+0100
(define-public go-github-com-go-git-go-git-fixtures-v4
  (package
    (name "go-github-com-go-git-go-git-fixtures-v4")
    (version "4.3.1")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/go-git/go-git-fixtures")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1d6qs2mzbhz95aflpjh6ijywvb4ys73jvk2v30mickax3gmm2vlw"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/go-git/go-git-fixtures/v4"))
    (propagated-inputs (list go-gopkg-in-check-v1
                             go-github-com-stretchr-testify
                             go-github-com-go-git-go-billy-v5))
    (home-page "https://github.com/go-git/go-git-fixtures")
    (synopsis "Tests runner fixes for Golang module go-git")
    (description "This package provides git repository fixtures used by
@url{https://github.com/go-git/go-git,go-git}")
    (license license:asl2.0)))

;; 20220804T214239+0100
(define-public go-github-com-gliderlabs-ssh
  (package
    (name "go-github-com-gliderlabs-ssh")
    (version "0.3.4")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/gliderlabs/ssh")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "18g7czcx3hhcivqr2z780z57fh6bxd4lh2qpzshw2jgvll7k85qn"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/gliderlabs/ssh"))
    (propagated-inputs (list go-golang-org-x-sys go-golang-org-x-crypto
                             go-github-com-anmitsu-go-shlex))
    (home-page "https://github.com/gliderlabs/ssh")
    (synopsis "SSH server in Golang")
    (description
     "Package ssh wraps the crypto/ssh package with a higher-level API for building
SSH servers.  The goal of the API was to make it as simple as using net/http, so
the API is very similar.")
    (license license:bsd-3)))

;; 20220804T214200+0100
(define-public go-github-com-armon-go-socks5
  (package
    (name "go-github-com-armon-go-socks5")
    (version "0.0.0-20160902184237-e75332964ef5")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/armon/go-socks5")
                    (commit (go-version->git-ref version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "104w10jf0wlxyxi35hf6frndgf0ybz21h54xjmnkivpb6slycpyq"))))
    (build-system go-build-system)
    (arguments
     (list #:import-path "github.com/armon/go-socks5"
           ;; Source-only package
           #:tests? #f
           #:phases
           #~(modify-phases %standard-phases
               ;; Source-only package
               (delete 'build))))
    (propagated-inputs (list go-golang-org-x-net))
    (home-page "https://github.com/armon/go-socks5")
    (synopsis "SOCKS5 server in Golang")
    (description
     "This package provides the @code{socks5} package that implements a
@url{http://en.wikipedia.org/wiki/SOCKS,SOCKS5 server}.  SOCKS (Secure Sockets)
is used to route traffic between a client and server through an intermediate
proxy layer.  This can be used to bypass firewalls or NATs.")
    (license license:expat)))

;; 20220803T224241+0100
(define-public go-gopkg-in-ozeidan-fuzzy-patricia-v3
  (package
    (name "go-gopkg-in-ozeidan-fuzzy-patricia-v3")
    (version "3.0.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://gopkg.in/ozeidan/fuzzy-patricia.v3")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0wn6fq1g7f6djrj407r8nimm5fyp7lji22ng7a4rg8pf7ihrqzrp"))))
    (build-system go-build-system)
    (arguments
     '(#:unpack-path "gopkg.in/ozeidan/fuzzy-patricia.v3"
       #:import-path "gopkg.in/ozeidan/fuzzy-patricia.v3/patricia"))
    (home-page "https://gopkg.in/ozeidan/fuzzy-patricia.v3")
    (synopsis "Radix tree implementation in Golang")
    (description
     "This package provides generic patricia trie (also called radix tree)
implemented in Golang.  The patricia trie as implemented in this library enables
fast visiting of items in some particular ways:
@itemize
@item visit all items saved in the tree
@item visit all items matching particular prefix (visit subtree)
@item given a string, visit all items matching some prefix of that string
@end itemize")
    (license license:expat)))

;; 20220803T223445+0100
(define-public go-github-com-spkg-bom
  (package
    (name "go-github-com-spkg-bom")
    (version "1.0.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/spkg/bom")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0ksf6aynyh4rk96kyydw7acslhbwa875h91qid2lvszghp86g8pd"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/spkg/bom"))
    (native-inputs (list go-github-com-stretchr-testify))
    (home-page "https://github.com/spkg/bom")
    (synopsis "Strip UTF-8 byte order marks for Golang")
    (description
     "Package bom is used to clean up UTF-8 Byte Order Marks.

The Unicode Standard defines UTF-8 byte order marks as the byte sequence
@code{0xEF,0xBB,0xBF}, but neither requires nor recommends their use.  The Go standard
library provides no support for UTF-8 byte order marks, and it looks like it
never will.")
    (license license:expat)))

;; 20220803T223249+0100
(define-public go-github-com-sanity-io-litter
  (package
    (name "go-github-com-sanity-io-litter")
    (version "1.5.5")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/sanity-io/litter")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1vgzwl9y50x4wdiaiqdbr4y9h1dvcrhdaljd65dc3ypqcbp0ynhg"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/sanity-io/litter"))
    (native-inputs (list go-github-com-stretchr-testify))
    (home-page "https://github.com/sanity-io/litter")
    (synopsis "Pretty printer library for Golang data structures")
    (description "Litter is provided by")
    (license license:expat)))

(define-public go-github-com-kylelemons-godebug-pretty
  (package
    (inherit go-github-com-kylelemons-godebug)
    (name "go-github-com-kylelemons-godebug-pretty")
    (arguments
     '(#:import-path "github.com/kylelemons/godebug/pretty"
       #:unpack-path "github.com/kylelemons/godebug"))))

;; 20220803T222100+0100
(define-public go-github-com-sahilm-fuzzy
  (package
    (name "go-github-com-sahilm-fuzzy")
    (version "0.1.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/sahilm/fuzzy")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1x6wrlbqgjkhr1wdvw7vzn6h8nx0p60540slkzfnrvghvbxr7lgb"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/sahilm/fuzzy"))
    (native-inputs (list go-github-com-kylelemons-godebug-pretty
                         go-github-com-kylelemons-godebug))
    (home-page "https://github.com/sahilm/fuzzy")
    (synopsis "Fuzzy string matching for Golang")
    (description
     "Package fuzzy provides fuzzy string matching optimized for filenames and code
symbols in the style of Sublime Text, VSCode, IntelliJ IDEA et al.")
    (license license:expat)))

;; 20220803T221927+0100
(define-public go-github-com-openpeedeep-xdg
  (package
    (name "go-github-com-openpeedeep-xdg")
    (version "1.0.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/OpenPeeDeeP/xdg")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1yk4hlji28pp69bvvv9m1ja1bn6njfhf8p0rwwyszjbk0qnpf8q6"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/OpenPeeDeeP/xdg"))
    (native-inputs (list go-github-com-stretchr-testify))
    (home-page "https://github.com/OpenPeeDeeP/xdg")
    (synopsis "Golang cross platform package that follows the XDG Standard")
    (description
     "Package xdg impelements the XDG standard for application file locations.")
    (license license:bsd-3)))

;; 20220803T221748+0100
(define-public go-github-com-mgutz-str
  (package
    (name "go-github-com-mgutz-str")
    (version "1.2.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/mgutz/str")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1g3dq618mcnpfyw7q6m32dy08wjzkyvlbd0f2nvwvck682749i1j"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/mgutz/str"))
    (home-page "https://github.com/mgutz/str")
    (synopsis "Golang extended string library")
    (description
     "Package @code{str} is a comprehensive set of string functions to build more Go
awesomeness.  Str complements Go's standard packages and does not duplicate
functionality found in `strings` or  `strconv`.")
    (license license:expat)))

;; 20220803T221607+0100
(define-public go-github-com-kyokomi-emoji-v2
  (package
    (name "go-github-com-kyokomi-emoji-v2")
    (version "2.2.10")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/kyokomi/emoji")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1wd9nv1g5cn32sm03lnqvcg4mklb9rp5iwbk0ksabqvzpjwy5mp4"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/kyokomi/emoji/v2"))
    (home-page "https://github.com/kyokomi/emoji")
    (synopsis "Emoji terminal output for Golang")
    (description "This package provides emoji support for termnial output.")
    (license license:expat)))

;; 20220803T221518+0100
(define-public go-github-com-jesseduffield-yaml
  (package
    (name "go-github-com-jesseduffield-yaml")
    (version "0.0.0-20190702115811-b900b7e08b56")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/jesseduffield/yaml")
                    (commit (go-version->git-ref version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1k2p3f85zl17946g5w8pvx930prd4da6n2d48gsh9br3b1z0wqqg"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/jesseduffield/yaml"))
    (native-inputs (list go-gopkg-in-check-v1))
    (home-page "https://github.com/jesseduffield/yaml")
    (synopsis "YAML support for Golang")
    (description
     "The @code{yaml} package enables Golang programs to comfortably encode and
decode YAML values.  It was developed within Canonical as part of the juju
project, and is based on a pure Golang port of the @code{libyaml} C library to
parse and generate YAML data quickly and reliably.")
    (license license:asl2.0)))

;; 20220813T093204+0100
(define-public go-github-com-jesseduffield-minimal-gitignore
  (package
    (name "go-github-com-jesseduffield-minimal-gitignore")
    (version "0.3.2")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/jesseduffield/minimal")
                    (commit (string-append "gitignore/v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0m4r0hg9pwb3p8ngr2skdl8aq7d07zrxdkh2wcvddfpbbh2jfdcb"))))
    (build-system go-build-system)
    (arguments
     '(#:unpack-path "github.com/jesseduffield/minimal"
       #:import-path "github.com/jesseduffield/minimal/gitignore"))
    (propagated-inputs (list go-github-com-gobwas-glob))
    (home-page "https://github.com/jesseduffield/minimal")
    (synopsis "Parser for .gitignore-style files")
    (description
     "Package @code{gitignore} can be used to parse .gitignore-style files into globs
that can be used to test against a certain string or selectively walk a file
tree.  Gobwas's glob package is used for matching because it is faster than using
regexp, which is overkill, and supports globstars (**), unlike filepath.Match.")
    (license license:expat)))

;; 20220803T220528+0100
(define-public go-github-com-jesseduffield-kill
  (package
    (name "go-github-com-jesseduffield-kill")
    (version "0.0.0-20220618033138-bfbe04675d10")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/jesseduffield/kill")
                    (commit (go-version->git-ref version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1snks1bd86b3clxp9d4mf1dcwwpyfvsqm7ncdm02r2iy2lq9381i"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/jesseduffield/kill"))
    (home-page "https://github.com/jesseduffield/kill")
    (synopsis "Golang package for killing processes")
    (description
     "This package provides functionality for killing processes across different
platforms.  Handles killing children of processes as well as the process itself.")
    (license license:expat)))

;; 20220803T220441+0100
(define-public go-github-com-jesseduffield-gocui
  (package
    (name "go-github-com-jesseduffield-gocui")
    (version "0.3.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/jesseduffield/gocui")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "01xac0my3jkiykbqylfldx7yj1xcwjqhxm1d9fqy1gmy3bwwzvkg"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/jesseduffield/gocui"))
    (propagated-inputs (list go-github.com-nsf-termbox-go))
    (home-page "https://github.com/jesseduffield/gocui")
    (synopsis
     "Minimalist Golang package aimed at creating Console User Interfaces")
    (description
     "Package gocui allows creating console user interfaces.

Highlighted features:
@itemize
@item Minimalist API.
@item Views (the windows in the GUI) implement the interface io.ReadWriter.
@item Support for overlapping views.
@item The GUI can be modified at runtime (concurrent-safe).
@item Global and view-level keybindings.
@item Mouse support.
@item Colored text.
@item Customizable edition mode.
@item Easy to build reusable widgets, complex layouts.
@end itemize")
    (license license:bsd-3)))

;; 20220813T134740+0100
(define-public go-github-com-jesseduffield-go-git-v5
  (package
    (name "go-github-com-jesseduffield-go-git-v5")
    (version "5.1.1")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/jesseduffield/go-git")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0ks3x4qbjcg4nqgc3zg8l6b71mkg6xgs9s0rldbxrkbrf3sh36ar"))))
    (build-system go-build-system)
    (arguments
     ;; NOTE: (Sharlatan-20220813T142811+0100): Some tests require remote access
     ;; and tryes to download external git repositories
     ;; Disable them or find a way to make them availalbe as inputs.
     (list #:tests? #f
           #:import-path "github.com/jesseduffield/go-git"))
    (native-inputs (list git))
    (propagated-inputs
     (list go-github-com-armon-go-socks5
           go-github-com-emirpasic-gods
           go-github-com-gliderlabs-ssh
           go-github-com-go-git-gcfg ;Upstream fix require
           go-github-com-go-git-go-billy-v5
           go-github-com-go-git-go-git-fixtures-v4
           go-github-com-google-go-cmp-cmp
           go-github-com-imdario-mergo
           go-github-com-jbenet-go-context
           go-github-com-jessevdk-go-flags
           go-github-com-kevinburke-ssh-config
           go-github-com-mitchellh-go-homedir
           go-github-com-sergi-go-diff
           go-github-com-xanzy-ssh-agent
           go-golang-org-x-crypto
           go-golang-org-x-net
           go-golang-org-x-text
           go-gopkg-in-check-v1
           go-gopkg-in-warnings))
    (home-page "https://github.com/jesseduffield/go-git")
    (synopsis "Git implementation in pure Go")
    (description
     "This package provides a git implementation in pure Go. It's a modified fork of
original go-git/go-git project.")
    (license license:asl2.0)))

;; 20220803T215957+0100
(define-public go-github-com-integrii-flaggy
  (package
    (name "go-github-com-integrii-flaggy")
    (version "1.5.2")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/integrii/flaggy")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0qn55pn0c75bd4gm1fd2in0qp9fllfabwzn0qs994frd32cfz7h3"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/integrii/flaggy"))
    (propagated-inputs (list go-github-com-google-go-cmp-cmp))
    (home-page "https://github.com/integrii/flaggy")
    (synopsis "Golang CLI input parsing library")
    (description
     "Package flaggy is a input flag parsing package that supports recursive
subcommands, positional values, and any-position flags without unnecessary
complexeties.")
    (license license:unlicense)))

;; 20230311T201510+0000
(define-public go-github-com-itchyny-astgen-go
  (package
    (name "go-github-com-itchyny-astgen-go")
    (version "0.0.0-20210914105503-cc8fccf6f972")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/itchyny/astgen-go")
                    (commit (go-version->git-ref version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1q3qkyw5fjal6sdwppyg8zrrzwk6kbl6zla6kw3pz42fzlydrfki"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/itchyny/astgen-go"))
    (home-page "https://github.com/itchyny/astgen-go")
    (synopsis "Go module providing interface to ast.Node maping")
    (description "Build Go code from arbitrary value in Go.")
    (license license:expat)))

;; 20230311T201930+0000
(define-public go-github-com-itchyny-go-flags
  (package
    (name "go-github-com-itchyny-go-flags")
    (version "1.5.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/itchyny/go-flags")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0qfh7gn95aldlsigk72jl87npmwvx15kb7df1100d6j0nbakd8b5"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/itchyny/go-flags"
      #:phases
      #~(modify-phases %standard-phases
          (add-after 'unpack 'fix-tests
            (lambda _
              ;; SOURCE_DATE_EPOCH messes with the date on the man page test.
              (substitute* "src/github.com/itchyny/go-flags/help_test.go"
                (("TestMan") "DisabledTestMan")))))))
    (propagated-inputs (list go-golang-org-x-sys))
    (home-page "https://github.com/itchyny/go-flags")
    (synopsis "Go library for parsing command line arguments")
    (description
     "Fork version of @code{jessevdk/go-flags}")
    (license license:bsd-3)))

(define-public go-github-com-google-go-tpm
  (package
    (name "go-github-com-google-go-tpm")
    (version "0.9.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/google/go-tpm")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pv77fmlxrnxasj6fjvzrv9yaf2qb45x1zss3nbsdvzgpwviaiyi"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go go-1.20
      #:import-path "github.com/google/go-tpm"))
    (propagated-inputs
     (list go-golang-org-x-sys
           go-golang-org-x-crypto))
    (home-page "https://github.com/google/go-tpm")
    (synopsis "Go-TPM library")
    (description
     "TPM 2.0 library for directly communicating with a TPM device.")
    (license license:asl2.0)))

;; 20240723T111432+0100
(define-public go-github-com-thoas-go-funk
  (package
    (name "go-github-com-thoas-go-funk")
    (version "0.9.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/thoas/go-funk")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1jq4q0pmn7h67yd9xbzvgs9vchqmzzi7axhrin4dsz2lxbzqhn2y"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/thoas/go-funk"))
    (native-inputs
     (list go-github-com-stretchr-testify))
    (home-page "https://github.com/thoas/go-funk")
    (synopsis "Various Golang utility library")
    (description
     "This package provides helpers such as map, find, contains and filter, it's an
alternative implementation of standard @code{reflect} module.")
    (license license:expat)))

;; 20240723T112554+0100
(define-public go-github-com-samber-lo
  (package
    (name "go-github-com-samber-lo")
    (version "1.46.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/samber/lo")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0m01f3vhi3isyn9wj7av7vi7a4szvd1pss7cy3npk1zag0xa5z36"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/samber/lo"
      #:phases
      #~(modify-phases %standard-phases
          ;; XXX: Workaround for go-build-system's lack of Go modules
          ;; support.
          (replace 'check
            (lambda* (#:key tests? import-path #:allow-other-keys)
              (when tests?
                (with-directory-excursion (string-append "src/" import-path)
                  (invoke "go" "test" "-v" "./..."))))))))
    (propagated-inputs
     (list go-golang-org-x-text))
    (home-page "https://github.com/samber/lo")
    (synopsis "Lodash-style Golang library")
    (description
     "This package provides re-implemented Golang Generics map, filter, contains, find
functionality.")
    (license license:expat)))

;; 20240723T142257+0100
(define-public go-github-com-bahlo-generic-list-go
  (package
    (name "go-github-com-bahlo-generic-list-go")
    (version "0.2.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/bahlo/generic-list-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1nif01xg2y7ihhik65xkx74kszamgvz9ykknj81p71mmdv0fm304"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/bahlo/generic-list-go"))
    (home-page "https://github.com/bahlo/generic-list-go")
    (synopsis "Golang container/list but with generics")
    (description
     "This package implements a doubly linked list based on @code{container/list}.")
    (license license:bsd-3)))

;; 20240723T142942+0100
(define-public go-github-com-buger-jsonparser
  (package
    (name "go-github-com-buger-jsonparser")
    (version "1.1.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/buger/jsonparser")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0qv2lsh2biwxn927941gqiv5pqg7n4v58j0i536pjp7pr17pq7dp"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/buger/jsonparser"
      #:phases
      #~(modify-phases %standard-phases
          (add-after 'unpack 'remove-benchmarks
            (lambda* (#:key import-path #:allow-other-keys)
              (with-directory-excursion (string-append "src/" import-path)
                (delete-file-recursively "benchmark")))))))
    (home-page "https://github.com/buger/jsonparser")
    (synopsis "Alternative JSON parser for Golang")
    (description
     "This package provides an alternative implementation of standard
@code{encoding/json} with higher performance.")
    (license license:expat)))
