(define-public go-github-com-apache-openwhisk-client-go
  (package
    (name "go-github-com-apache-openwhisk-client-go")
    (version "0.0.0-20250309042127-fa7fa7e48863")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/apache/openwhisk-client-go")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1v0z4h2jnx5lr5i1gziqgikddl4f1c0bh3ag01pqim5mmbvpwrrr"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/apache/openwhisk-client-go"))
    (propagated-inputs (list go-github-com-stretchr-testify
                             go-github-com-nicksnyder-go-i18n
                             go-github-com-hokaccha-go-prettyjson
                             go-github-com-google-go-querystring
                             go-github-com-fatih-color
                             go-github-com-cloudfoundry-jibber-jabber))
    (home-page "https://github.com/apache/openwhisk-client-go")
    (synopsis "Openwhisk Client Go")
    (description
     "This project @@code{openwhisk-client-go} is a Go client library to access the
Openwhisk API.")
    (license license:asl2.0)))

(define-public go-github-com-cloudfoundry-jibber-jabber
  (package
    (name "go-github-com-cloudfoundry-jibber-jabber")
    (version "0.0.0-20151120183258-bcc4c8345a21")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/cloudfoundry-attic/jibber_jabber")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0q31q03sxfwrdgbv559bgm9gr5cmyzp1al0zli9nlkwa2v9hw5fi"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/cloudfoundry/jibber_jabber"))
    (home-page "https://github.com/cloudfoundry/jibber_jabber")
    (synopsis "Jibber Jabber")
    (description
     "Jibber Jabber is a @code{GoLang} Library that can be used to detect an operating
system's current language.")
    (license license:asl2.0)))

(define-public go-github-com-digitalocean-doctl
  (package
    (name "go-github-com-digitalocean-doctl")
    (version "1.141.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/digitalocean/doctl")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0f91zwvi8b21c5mgj9z8r7chyw9izzknd8g8i0j9rfjxvhzw57r1"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/digitalocean/doctl"))
    (propagated-inputs (list go-gopkg-in-yaml-v3
                             go-golang-org-x-term
                             go-golang-org-x-sync
                             go-go-uber-org-mock
                             go-github-com-pkg-browser
                             go-github-com-muesli-termenv
                             go-github-com-muesli-reflow
                             go-github-com-kballard-go-shellquote
                             go-github-com-joho-godotenv
                             go-github-com-erikgeiser-promptkit
                             go-github-com-charmbracelet-lipgloss
                             go-github-com-charmbracelet-bubbletea
                             go-github-com-charmbracelet-bubbles
                             go-github-com-armon-circbuf
                             go-github-com-apache-openwhisk-client-go
                             go-github-com-makenowjust-heredoc
                             go-sigs-k8s-io-yaml
                             go-k8s-io-client-go
                             go-k8s-io-apimachinery
                             go-k8s-io-api
                             go-gopkg-in-yaml-v2
                             go-golang-org-x-sys
                             go-golang-org-x-oauth2
                             go-golang-org-x-crypto
                             go-github-com-stretchr-testify
                             go-github-com-spf13-viper
                             go-github-com-spf13-cobra
                             go-github-com-shiena-ansicolor
                             go-github-com-sclevine-spec
                             go-github-com-pkg-errors
                             go-github-com-opencontainers-image-spec
                             go-github-com-natefinch-pie
                             go-github-com-mitchellh-copystructure
                             go-github-com-mattn-go-isatty
                             go-github-com-hashicorp-go-multierror
                             go-github-com-gorilla-websocket
                             go-github-com-google-uuid
                             go-github-com-gobwas-glob
                             go-github-com-fatih-color
                             go-github-com-dustin-go-humanize
                             go-github-com-docker-docker
                             go-github-com-docker-cli
                             go-github-com-digitalocean-godo
                             go-github-com-creack-pty
                             go-github-com-blang-semver))
    (home-page "https://github.com/digitalocean/doctl")
    (synopsis "Installing")
    (description
     "See the @@url{https://www.digitalocean.com/docs/apis-clis/doctl/reference/,full
reference documentation} for information about each available command.")
    (license license:asl2.0)))

(define-public go-github-com-erikgeiser-promptkit
  (package
    (name "go-github-com-erikgeiser-promptkit")
    (version "0.9.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/erikgeiser/promptkit")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1ngqwz343bpsfpvgagq6xgrflxmzs5ky88ixi59dbybqafk2zq61"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/erikgeiser/promptkit"))
    (propagated-inputs (list go-golang-org-x-term
                             go-github-com-muesli-termenv
                             go-github-com-muesli-reflow
                             go-github-com-charmbracelet-lipgloss
                             go-github-com-charmbracelet-bubbletea
                             go-github-com-charmbracelet-bubbles))
    (home-page "https://github.com/erikgeiser/promptkit")
    (synopsis "Selection")
    (description
     "Package promptkit is a collection of common command line prompts for interactive
programs.  Each prompts comes with sensible defaults, re-mappable key bindings
and many opportunities for heavy customization.")
    (license license:expat)))

(define-public go-github-com-hokaccha-go-prettyjson
  (package
    (name "go-github-com-hokaccha-go-prettyjson")
    (version "0.0.0-20211117102719-0474bc63780f")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/hokaccha/go-prettyjson")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1njd6d4j8fqwl9k6910288a7gd54xshp8wya7qlrdwyn2kn6ig2c"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/hokaccha/go-prettyjson"))
    (home-page "https://github.com/hokaccha/go-prettyjson")
    (synopsis "prettyjson")
    (description "Package prettyjson provides JSON pretty print.")
    (license license:expat)))

(define-public go-github-com-moby-spdystream
  (package
    (name "go-github-com-moby-spdystream")
    (version "0.5.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/moby/spdystream")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0p5pwwspmp24ff900656fyvrgdz8xxl6y0dk9fqgcaaaylmw0v9g"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/moby/spdystream"))
    (home-page "https://github.com/moby/spdystream")
    (synopsis "SpdyStream")
    (description
     "This package provides a multiplexed stream library using spdy.")
    (license license:asl2.0)))

(define-public go-github-com-mxk-go-flowrate
  (package
    (name "go-github-com-mxk-go-flowrate")
    (version "0.0.0-20140419014527-cca7078d478f")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/mxk/go-flowrate")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0zqs39923ja0yypdmiqk6x8pgmfs3ms5x5sl1dqv9z6zyx2xy541"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/mxk/go-flowrate"))
    (home-page "https://github.com/mxk/go-flowrate")
    (synopsis #f)
    (description #f)
    (license license:bsd-3)))

(define-public go-github-com-natefinch-pie
  (package
    (name "go-github-com-natefinch-pie")
    (version "0.0.0-20170715172608-9a0d72014007")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/natefinch/pie")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1vipjdbzcna8ynlh23vcl76bspibrlvhyzxfqa4zadxcdd9gpcdz"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/natefinch/pie"))
    (home-page "https://github.com/natefinch/pie")
    (synopsis "pie")
    (description
     "In addition to a regular plugin that provides an API, this package can be used
for plugins that consume an API provided by the main process.  To see an example
of this, look in the examples/consumer folder.")
    (license license:expat)))

(define-public go-github-com-nicksnyder-go-i18n
  (package
    (name "go-github-com-nicksnyder-go-i18n")
    (version "1.10.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/nicksnyder/go-i18n")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1wkb10y1ngqzk6l5zl4x0rkrrxkwqyj6gpigszjyiiqn0haf5vm7"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/nicksnyder/go-i18n"))
    (propagated-inputs (list go-gopkg-in-yaml-v2
                             go-github-com-pelletier-go-toml))
    (home-page "https://github.com/nicksnyder/go-i18n")
    (synopsis "go-i18n")
    (description
     "go-i18n is a Go @@url{#readme-i18n-package,package} and a
@@url{#readme-goi18n-command,command} that helps you translate Go programs into
multiple languages.")
    (license license:expat)))

(define-public go-github-com-sclevine-spec
  (package
    (name "go-github-com-sclevine-spec")
    (version "1.4.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/sclevine/spec")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0y3rqb7dd51qnw5ns7w5sy93879ybnlg6gwslbv5mkfnrk0gl7na"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/sclevine/spec"))
    (home-page "https://github.com/sclevine/spec")
    (synopsis "spec")
    (description
     "Spec is a simple BDD test organizer for Go.  It minimally extends the standard
library @@code{testing} package by facilitating easy organization of Go 1.7+
@@url{https://blog.golang.org/subtests,subtests}.")
    (license license:asl2.0)))

(define-public go-github-com-shiena-ansicolor
  (package
    (name "go-github-com-shiena-ansicolor")
    (version "0.0.0-20230509054315-a9deabde6e02")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/shiena/ansicolor")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "058cfacl9jddi86rb0cgms3c6b93sw12ynikw0lbpvwn2psa3bfq"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/shiena/ansicolor"))
    (home-page "https://github.com/shiena/ansicolor")
    (synopsis "ansicolor")
    (description
     "Package ansicolor provides color console in Windows as ANSICON.")
    (license license:expat)))

(define-public go-k8s-io-api
  (package
    (name "go-k8s-io-api")
    (version "0.34.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/kubernetes/api")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1skg38mksg282jlbmf3asmsyij27r9257h3vixqrk50v7rp45zi5"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "k8s.io/api"))
    (propagated-inputs (list go-k8s-io-apimachinery
                             go-github-com-gogo-protobuf))
    (home-page "https://k8s.io/api")
    (synopsis "api")
    (description
     "Schema of the external API types that are served by the Kubernetes API server.")
    (license license:asl2.0)))

(define-public go-k8s-io-apimachinery
  (package
    (name "go-k8s-io-apimachinery")
    (version "0.34.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/kubernetes/apimachinery")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0mdmw951k9a2v817c0xxlazvz2500lw80mh53xjwspss0yx9b8fb"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "k8s.io/apimachinery"))
    (propagated-inputs (list go-sigs-k8s-io-yaml
                             go-sigs-k8s-io-structured-merge-diff-v6
                             go-sigs-k8s-io-randfill
                             go-sigs-k8s-io-json
                             go-k8s-io-utils
                             go-k8s-io-kube-openapi
                             go-k8s-io-klog-v2
                             go-gopkg-in-inf-v0
                             go-gopkg-in-evanphx-json-patch-v4
                             go-golang-org-x-time
                             go-golang-org-x-net
                             go-github-com-stretchr-testify
                             go-github-com-spf13-pflag
                             go-github-com-pmezard-go-difflib
                             go-github-com-mxk-go-flowrate
                             go-github-com-moby-spdystream
                             go-github-com-google-uuid
                             go-github-com-google-go-cmp
                             go-github-com-google-gnostic-models
                             go-github-com-gogo-protobuf
                             go-github-com-fxamacker-cbor-v2
                             go-github-com-davecgh-go-spew
                             go-github-com-armon-go-socks5))
    (home-page "https://k8s.io/apimachinery")
    (synopsis "apimachinery")
    (description
     "Scheme, typing, encoding, decoding, and conversion packages for Kubernetes and
Kubernetes-like API objects.")
    (license license:asl2.0)))

(define-public go-k8s-io-client-go
  (package
    (name "go-k8s-io-client-go")
    (version "0.34.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/kubernetes/client-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1s3pfrqjk1zjg7hyn90ykgkn5ak5x1r5w5jfcr0sdlv9p42q0yqi"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "k8s.io/client-go"))
    (propagated-inputs (list go-sigs-k8s-io-yaml
                             go-sigs-k8s-io-structured-merge-diff-v6
                             go-sigs-k8s-io-randfill
                             go-sigs-k8s-io-json
                             go-k8s-io-utils
                             go-k8s-io-kube-openapi
                             go-k8s-io-klog-v2
                             go-k8s-io-apimachinery
                             go-k8s-io-api
                             go-gopkg-in-evanphx-json-patch-v4
                             go-google-golang-org-protobuf
                             go-golang-org-x-time
                             go-golang-org-x-term
                             go-golang-org-x-oauth2
                             go-golang-org-x-net
                             go-go-uber-org-goleak
                             go-github-com-stretchr-testify
                             go-github-com-spf13-pflag
                             go-github-com-peterbourgon-diskv
                             go-github-com-munnerz-goautoneg
                             go-github-com-gregjones-httpcache
                             go-github-com-gorilla-websocket
                             go-github-com-google-uuid
                             go-github-com-google-go-cmp
                             go-github-com-google-gnostic-models
                             go-github-com-gogo-protobuf
                             go-github-com-go-logr-logr))
    (home-page "https://k8s.io/client-go")
    (synopsis "client-go")
    (description
     "Go clients for talking to a @@url{http://kubernetes.io/,kubernetes} cluster.")
    (license license:asl2.0)))

(define-public go-sigs-k8s-io-structured-merge-diff
  (package
    (name "go-sigs-k8s-io-structured-merge-diff")
    (version "6.3.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/kubernetes-sigs/structured-merge-diff")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0n7fx6l108ad7wmpx03zb7vzrzxwzs8fyhz0xxdr1vggsq5kdfn5"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "sigs.k8s.io/structured-merge-diff/v6"
      #:unpack-path "sigs.k8s.io/structured-merge-diff"))
    (propagated-inputs (list go-sigs-k8s-io-randfill go-go-yaml-in-yaml-v2
                             go-github-com-json-iterator-go
                             go-github-com-google-go-cmp))
    (home-page "https://sigs.k8s.io/structured-merge-diff")
    (synopsis "Structured Merge and Diff")
    (description
     "This repo contains code which implements the Kubernetes \"apply\" operation.")
    (license license:asl2.0)))

