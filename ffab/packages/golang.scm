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
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages base)
  #:use-module (gnu packages golang)
  #:use-module ((gnu packages syncthing) #:select (go-github-com-kballard-go-shellquote))
  #:use-module (gnu packages check)
  #:use-module (gnu packages vim)
  #:use-module (guix build-system go)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages))

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

;; 20220731T214206+0100
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

;; 20220731T214024+0100
;; (define-public go-github-com-hashicorp-hcl
;; added-to-upstream: 97657689507a0681aa9699407d292383ff22c330
;; CommitDate: Wed Jan 5 23:44:20 2022 +0100

;; <2021-12-12 Sun>
;; (define-public go-github-com-hashicorp-hcl-v2
;; added-to-upstream: 63b194080d3038bdfc54d66355bdd59e86197214
;; CommitDate: Fri Jan 28 10:36:01 2022 +0100

;; 20220128T103316+0100
;; (define-public go-github-com-agext-levenshtein
;; added-to-upstream: 52850033d37ea2153210974acbb969b616d3ba20
;; CommitDate: Fri Jan 28 10:33:16 2022 +0100

;; 20220128T103150+0100
;; (define-public go-github-com-apparentlymart-go-textseg-v13
;; added-to-upstream: 433f04136b443cb935a0911fa7560fa87f029e64
;; CommitDate: Fri Jan 28 10:31:50 2022 +0100

;; 20220128T103150+0100
;; (define-public go-github-com-apparentlymart-go-textseg-autoversion
;; added-to-upstream: 433f04136b443cb935a0911fa7560fa87f029e64
;; CommitDate: Fri Jan 28 10:31:50 2022 +0100

;; 20220128T103434+0100
;; (define-public go-github-com-zclconf-go-cty
;; added-to-upstream: a222ae9146404e6d04276682a0a5ad4fe4bc6743
;; CommitDate: Fri Jan 28 10:34:34 2022 +0100

;; 20220128T103709+0100
;; (define-public go-github-com-vmihailenco-msgpack-v4
;; added-to-upstream: 4db80f3f0cc32d4f6a487cb51a3ac393694affe3
;; CommitDate: Fri Jan 28 10:37:09 2022 +0100

;; 20220128T102859+0100
;; (define-public go-github-com-vmihailenco-tagparser
;; added-to-upstream: cd355a8dafb0ccb748ab48604ac3890ba1931e1e
;; CommitDate: Fri Jan 28 10:28:59 2022 +0100

;; 20220731T214100+0100
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

;; 20220731T214217+0100
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

;; 20220730T151556+0100
(define-public go-github-com-getsentry-sentry-go
  (package
    (name "go-github-com-getsentry-sentry-go")
    (version "0.13.0")
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
     (list go-github-com-gin-gonic-gin
           go-github-com-go-errors-errors
           go-github-com-go-martini-martini
           go-github-com-google-go-cmp
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
;; added-to-upstream: 61f1ec9f60186c23dd609ad3bc569f06c48f3f61
;; CommitDate: Fri Jan 28 10:47:21 2022 +0100
;; (define-public go-github-com-valyala-fasthttp

;; 20211217T213241+0000
;; added-to-upstream: 0467ecbe0dda4aead3afdabf7a29e4143d6afa17
;; CommitDate: Fri Jan 28 10:46:36 2022 +0100
;; (define-public go-github-com-valyala-tcplisten

;; 20211217T213438+0000
;; added-to-upstream: 1d948dbd97e93dec92dd486efbb8075271f3fde9
;; CommitDate: Fri Jan 28 10:45:33 2022 +0100
;; (define-public go-github-com-valyala-bytebufferpool

;; 20211217T213727+0000
;; added-to-upstream: 72274434a8419d80d036b9e91af50a291cda644c
;; CommitDate: Fri Jan 28 10:44:46 2022 +0100
;; (define-public go-github-com-andybalholm-brotli

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

;;+begin_github.com/jesseduffield
;;
;; Some packages are introduced in:
;; - github.com/cli/cli: https://issues.guix.gnu.org/47539

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
     (list go-github-com-atotto-clipboard
           go-github-com-aybabtme-humanlog
           go-github-com-cli-safeexec
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

;; 20220731T214252+0100
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

;; 20220731T214258+0100
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

;; 20220731T214316+0100
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

;; 20220731T214321+0100
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

;; 20220731T214326+0100
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

;; 20220731T214333+0100
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

;;+end_github.com/jesseduffield

;;+begin_github.com/cli

;; 20220730T151450+0100
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
           go-github-com-cli-shurcool-graphql
           go-github-com-cpuguy83-go-md2man-v2
           go-github-com-creack-pty
           go-github-com-gabriel-vasile-mimetype
           go-github-com-google-go-cmp
           go-github-com-google-shlex
           go-github-com-hashicorp-go-version
           go-github-com-henvic-httpretty
           go-github-com-itchyny-gojq
           go-github-com-kballard-go-shellquote
           go-github-com-makenowjust-heredoc
           go-github-com-mattn-go-colorable
           go-github-com-mattn-go-isatty
           go-github-com-mattn-go-runewidth
           go-github-com-mgutz-ansi
           go-github-com-mitchellh-go-homedir
           go-github-com-muesli-termenv
           go-github-com-rivo-uniseg
           go-github-com-shurcool-githubv4
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

;; 20220731T214415+0100
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

;; 20220731T214428+0100
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

;; 20220731T214435+0100
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

;; 20220731T214441+0100
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

;; 20220731T214446+0100
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

;; 20220731T214451+0100
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

;; 20220731T214457+0100
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

;; 20220731T214502+0100
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

;; 20220731T214507+0100
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

;; 20220731T214512+0100
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

;; 20220731T214517+0100
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

;; 20220731T214524+0100
(define-public go-github-com-shurcool-graphql
  (package
    (name "go-github-com-shurcool-graphql")
    (version "0.0.0-20200928012149-18c5c3165e3a")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/shurcooL/graphql")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0psxc2q3qsh1lfag11m2gz54fzzvlss5znyf34aars94igsjywzx"))))
    (build-system go-build-system)
    (arguments
     (list #:import-path "github.com/shurcooL/graphql"))
    (inputs
     (list go-golang-org-x-net))
    (home-page "https://github.com/shurcooL/graphql")
    (synopsis "GraphQL client implementation for Golang")
    (description "Package graphql provides a GraphQL client implementation.")
    (license license:expat)))


;;; :end github.com/cli/cli

;; 20220515T223341+0100
(define-public go-github-com-logrusorgru-aurora
  (package
    (name "go-github-com-logrusorgru-aurora")
    (version "2.0.3+incompatible")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/logrusorgru/aurora")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1ck2j2ff2avph07vgq0r1y7hmbqgvk339rvph45dcwgci23lb3pf"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/logrusorgru/aurora"))
    (home-page "https://github.com/logrusorgru/aurora")
    (synopsis "Aurora")
    (description "Package aurora implements ANSI-colors")
    (license license:unlicense)))

;; 20220515T223437+0100
(define-public go-github-com-konsorten-go-windows-terminal-sequences
  (package
    (name "go-github-com-konsorten-go-windows-terminal-sequences")
    (version "1.0.3")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/konsorten/go-windows-terminal-sequences")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1yrsd4s8vhjnxhwbigirymz89dn6qfjnhn28i33vvvdgf96j6ypl"))))
    (build-system go-build-system)
    (arguments
      '(#:import-path "github.com/konsorten/go-windows-terminal-sequences"))
    (home-page "https://github.com/konsorten/go-windows-terminal-sequences")
    (synopsis "Windows Terminal Sequences")
    (description
      "This library allow for enabling Windows terminal color support for Go.")
    (license license:expat)))

;; 20220515T223130+0100
(define-public go-github-com-lunixbochs-vtclean
  (package
    (name "go-github-com-lunixbochs-vtclean")
    (version "1.0.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/lunixbochs/vtclean")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0jqn33l1kzy4dk66zbvxz7rlgkgg34s9mhc8z0lrz0i88466zhd8"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/lunixbochs/vtclean"))
    (home-page "https://github.com/lunixbochs/vtclean")
    (synopsis "vtclean")
    (description
      "Clean up raw terminal output by stripping escape sequences, optionally
preserving color.")
    (license license:expat)))

;; 20220515T223750+0100
(define-public go-github-com-cespare-xxhash
  (package
    (name "go-github-com-cespare-xxhash")
    (version "1.1.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/cespare/xxhash")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1qyzlcdcayavfazvi03izx83fvip8h36kis44zr2sg7xf6sx6l4x"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/cespare/xxhash"))
    (propagated-inputs
      `(("go-github-com-spaolacci-murmur3" ,go-github-com-spaolacci-murmur3)
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
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/awesome-gocui/keybinding")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0d1nvxs2pd6nc10gm3md2rsd0v33025b8dik1l1iy8klzhiqfd1q"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/awesome-gocui/keybinding"))
    (propagated-inputs
      (list
         go-github-com-awesome-gocui-gocui))
    (home-page "https://github.com/awesome-gocui/keybinding")
    (synopsis "keybinding")
    (description
      "This package provides a golang wrapper for parsing gocui keybindings.")
    (license license:expat)))

;; 20220515T223949+0100
(define-public go-github-com-awesome-gocui-gocui
  (package
    (name "go-github-com-awesome-gocui-gocui")
    (version "1.1.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/awesome-gocui/gocui")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "082ziwxj239nxcclv54d783933s6c5ks592mq3ilcvg1vfyfkjz8"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/awesome-gocui/gocui"))
    (propagated-inputs
      `(("go-golang-org-x-text" ,go-golang-org-x-text)
        ("go-github-com-mattn-go-runewidth" ,go-github-com-mattn-go-runewidth)
        ("go-github-com-gdamore-tcell-v2" ,go-github-com-gdamore-tcell-v2)))
    (home-page "https://github.com/awesome-gocui/gocui")
    (synopsis "GOCUI - Go Console User Interface")
    (description "Package gocui allows to create console user interfaces.")
    (license license:bsd-3)))

;; 20220516T220629+0100
(define-public go-github-com-microsoft-go-winio
  (package
    (name "go-github-com-microsoft-go-winio")
    (version "0.5.2")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/microsoft/go-winio")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "19rzcwq07c2y7c06pkjjc8pbg68a24g1khwp7cdc5ypfzj509sc3"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/Microsoft/go-winio"))
    (propagated-inputs
      `(("go-golang-org-x-sys" ,go-golang-org-x-sys)
        ("go-github-com-sirupsen-logrus" ,go-github-com-sirupsen-logrus)))
    (home-page "https://github.com/Microsoft/go-winio")
    (synopsis "go-winio")
    (description
      "This repository contains utilities for efficiently performing Win32 IO
operations in Go.  Currently, this is focused on accessing named pipes and other
file handles, and for using named pipes as a net transport.")
    (license license:expat)))

;; 20220516T220713+0100
(define-public go-github-com-azure-go-ansiterm
  (package
    (name "go-github-com-azure-go-ansiterm")
    (version "0.0.0-20210617225240-d185dfc1b5a1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/Azure/go-ansiterm")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1y54b1fx80qlyvv2915xrryb9vcc8nnbsdkxszhxjg8bcg85ps5c"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/Azure/go-ansiterm"))
    (propagated-inputs `(("go-golang-org-x-sys" ,go-golang-org-x-sys)))
    (home-page "https://github.com/Azure/go-ansiterm")
    (synopsis "go-ansiterm")
    (description
      "This is a cross platform Ansi Terminal Emulation library.  It reads a stream of
Ansi characters and produces the appropriate function calls.  The results of the
function calls are platform dependent.")
    (license license:expat)))

;; 20220730T152336+0100
(define-public go-github-com-gin-gonic-gin
  (package
    (name "go-github-com-gin-gonic-gin")
    (version "1.8.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/gin-gonic/gin")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0fbs44q2w1cx891l3i1jxfrvf9v3ar3hlb8vnqlg7nbkch04jkdf"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/gin-gonic/gin"))
    (propagated-inputs

     (list go-github-com-davecgh-go-spew
           go-github-com-gin-contrib-sse
           go-github-com-go-playground-locales
           go-github-com-go-playground-universal-translator
           go-github-com-go-playground-validator-v10
           go-github-com-goccy-go-json
           go-github-com-gogo-protobuf
           go-github-com-json-iterator-go
           go-github-com-leodido-go-urn
           go-github-com-mattn-go-isatty
           go-github-com-modern-go-concurrent
           go-github-com-modern-go-reflect2
           go-github-com-pelletier-go-toml-v2
           go-github-com-pmezard-go-difflib
           go-github-com-stretchr-testify
           go-github-com-ugorji-go-codec
           go-golang-org-x-crypto
           go-golang-org-x-net
           go-golang-org-x-sys
           go-golang-org-x-text
           go-gopkg-in-yaml-v2
           go-gopkg-in-yaml-v3))
    (home-page "https://github.com/gin-gonic/gin")
    (synopsis "Golang HTTP web framework")
    (description "Package gin implements a HTTP web framework called gin.")
    (license license:expat)))

;; 20220731T195956+0100
(define-public go-github-com-gin-contrib-sse
  (package
   (name "go-github-com-gin-contrib-sse")
   (version "0.1.0")
   (source
    (origin
     (method git-fetch)
     (uri (git-reference
           (url "https://github.com/gin-contrib/sse")
           (commit (string-append "v" version))))
     (file-name (git-file-name name version))
     (sha256
      (base32 "072nq91a65n5xvwslqjyvydfd0mfpnvb3vwjyfvmzm1ym96wr1nd"))))
   (build-system go-build-system)
   (arguments
    '(#:import-path "github.com/gin-contrib/sse"))
   (propagated-inputs
    (list go-github-com-stretchr-testify))
   (home-page "https://github.com/gin-contrib/sse")
   (synopsis "Server-Sent Events for Golang")
   (description
    "Server-sent events (SSE) is a technology where a browser receives automatic
updates from a server via HTTP connection.  The Server-Sent Events EventSource
API is @url{http://www.w3.org/TR/2009/WD-eventsource-20091029/,standardized as
part of HTML5[1] by the W3C}.")
   (license license:expat)))

;;+begin_github.com/modern-go

;; 20220730T152705+0100
(define-public go-github-com-modern-go-reflect2
  (package
    (name "go-github-com-modern-go-reflect2")
    (version "1.0.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/modern-go/reflect2")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "05a89f9j4nj8v1bchfkv2sy8piz746ikj831ilbp54g8dqhl8vzr"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/modern-go/reflect2"))
    (home-page "https://github.com/modern-go/reflect2")
    (synopsis "Implementaion of Golang reflect")
    (description "reflect api that avoids runtime reflect.Value cost")
    (license license:asl2.0)))

;; 20220730T155408+0100
(define-public go-github-com-modern-go-concurrent
  (package
    (name "go-github-com-modern-go-concurrent")
    (version "0.0.0-20180306012644-bacd9c7ef1dd")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/modern-go/concurrent")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0s0fxccsyb8icjmiym5k7prcqx36hvgdwl588y0491gi18k5i4zs"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/modern-go/concurrent"))
    (home-page "https://github.com/modern-go/concurrent")
    (synopsis "concurrent")
    (description
     "because sync.Map is only available in go 1.9, we can use concurrent.Map to make
code portable")
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
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/go-playground/validator")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "042s63q6la8izcxf6nljcq7425qhndln7h4i55xh57j6gmp16frl"))))
    (arguments
     '(#:import-path "gopkg.in/go-playground/validator.v10"))
    (propagated-inputs
     (list go-github-com-go-playground-universal-translator
           go-gopkg-in-go-playground-assert-v2
           go-github-com-leodido-go-urn
           go-golang-org-x-crypto
           go-golang-org-x-text))))

;; 20220731T211127+0100
(define-public go-gopkg-in-go-playground-assert-v2
  (package
    (inherit go-gopkg-in-go-playground-assert-v1)
    (name "go-gopkg-in-go-playground-assert-v2")
    (version "2.0.1")
    (home-page "https://github.com/go-playground/assert")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url home-page)
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1cl9c4s405zddzrj36hhs0a18g02zscdl46fyipp6k91mhvai8wz"))))
    (arguments
     '(#:import-path "github.com/go-playground/assert/v2"))))

;;+end_github.com/go-playground

;; 20220731T212651+0100
(define-public go-github-com-goccy-go-json
  (package
    (name "go-github-com-goccy-go-json")
    (version "0.9.10")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/goccy/go-json")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1bg8p4c6r8r0kixdxv2m8xmdsmb1zl5sd8czswpccldjk3c358wp"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/goccy/go-json"))
    (home-page "https://github.com/goccy/go-json")
    (synopsis "go-json")
    (description
     "Fast JSON encoder/decoder compatible with encoding/json for Go")
    (license license:expat)))

;; 20220731T213050+0100
(define-public go-github-com-json-iterator-go
  (package
    (name "go-github-com-json-iterator-go")
    (version "1.1.12")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/json-iterator/go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1c8f0hxm18wivx31bs615x3vxs2j3ba0v6vxchsjhldc8kl311bz"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/json-iterator/go"))
    (native-inputs
     (list go-github-com-stretchr-testify))
    (propagated-inputs
     (list go-github-com-modern-go-reflect2
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
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/pelletier/go-toml")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0nz9d88cfr70jipn9xrs3al7nr7rl879y6bi23wmvsj0b7ghr5cm"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/pelletier/go-toml"))
    (native-inputs
     (list go-github-com-stretchr-testify))
    (home-page "https://github.com/pelletier/go-toml/v2")
    (synopsis "go-toml")
    (description "Package toml is a TOML parser and manipulation library.")
    (license license:expat)))

;; 20220731T221227+0100
(define-public go-github-com-ugorji-go-codec
  (package
    (name "go-github-com-ugorji-go-codec")
    (version "1.2.7")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/ugorji/go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0h4mbxp8zyhash342l00fd5726yhfmgrlk6v7sl6k8fd6mkb10l4"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/ugorji/go/codec"
       #:unpack-path "github.com/ugorji/go"))
    (home-page "https://github.com/ugorji/go")
    (synopsis "idiomatic codec and rpc lib for msgpack, cbor, json, etc. msgpack.org[Go]")
    (description
     "Package codec provides a High Performance, Feature-Rich Idiomatic Golang 1.4+
codec/encoding library for binc, msgpack, cbor, json.")
    (license license:expat)))
