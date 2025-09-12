(define-public go-cel-dev-expr
  (package
    (name "go-cel-dev-expr")
    (version "0.24.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/google/cel-spec")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0fzy5njwzg48h1mqbfhczyq6hxmbq3yzdivkjh1x8ipj19v4hvfl"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cel.dev/expr"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-genproto-googleapis-rpc))
    (home-page "https://cel.dev/expr")
    (synopsis "Common Expression Language")
    (description
     "The Common Expression Language (CEL) implements common semantics for expression
evaluation, enabling different applications to more easily interoperate.")
    (license license:asl2.0)))

(define-public go-codeberg-org-gone-http-cel
  (package
    (name "go-codeberg-org-gone-http-cel")
    (version "1.0.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://codeberg.org/gone/http-cel.git")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "006f9dlbdvz61qcxca83h4h1blbn01k828wzr3m9pi256bfllcs1"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "codeberg.org/gone/http-cel"))
    (propagated-inputs (list go-github-com-google-cel-go))
    (home-page "https://codeberg.org/gone/http-cel")
    (synopsis #f)
    (description #f)
    (license license:expat)))

(define-public go-codeberg-org-meta-gzipped
  (package
    (name "go-codeberg-org-meta-gzipped")
    (version "2.0.0-20250625001541-594ff5b6a3ab")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://codeberg.org/meta/gzipped.git")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "11pny3dmivx77s7p7rafv9yr62a3drkd145m6wh24sp7q195rd3p"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "codeberg.org/meta/gzipped/v2"
      #:unpack-path "codeberg.org/meta/gzipped"))
    (propagated-inputs (list go-github-com-kevinpollet-nego))
    (home-page "https://codeberg.org/meta/gzipped")
    (synopsis "gzipped.FileServer")
    (description
     "Drop-in replacement for golang http.@code{FileServer} which supports static
content compressed with gzip (including zopfli) or brotli.")
    (license license:bsd-3)))

(define-public go-github-com-alphadose-haxmap
  (package
    (name "go-github-com-alphadose-haxmap")
    (version "1.4.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/alphadose/haxmap")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1f38w0qlih459jc5f9j33lbwbr249jyg4pf89qb090aajraga5rl"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/alphadose/haxmap"))
    (home-page "https://github.com/alphadose/haxmap")
    (synopsis "HaxMap")
    (description
     "The hashing algorithm used was
@@url{https://github.com/Cyan4973/@code{xxHash,xxHash}} and the hashmap's
buckets were implemented using
@@url{https://www.cl.cam.ac.uk/research/srg/netos/papers/2001-caslists.pdf,Harris
lock-free list}.")
    (license license:expat)))

(define-public go-github-com-antlr4-go-antlr
  (package
    (name "go-github-com-antlr4-go-antlr")
    (version "4.13.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/antlr4-go/antlr")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1m5q00fvz28dgvv3ws924p6gamxm6gzqfm12f5ryhljifg22xq3d"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/antlr4-go/antlr/v4"
      #:unpack-path "github.com/antlr4-go/antlr"))
    (propagated-inputs (list go-golang-org-x-exp))
    (home-page "https://github.com/antlr4-go/antlr")
    (synopsis "ANTLR4 Go Runtime Module Repo")
    (description
     "Package antlr implements the Go version of the ANTLR 4 runtime.")
    (license license:bsd-3)))

(define-public go-github-com-go-jose-go-jose
  (package
    (name "go-github-com-go-jose-go-jose")
    (version "4.1.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/go-jose/go-jose")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1cv8qz6kb3nqkd0q4k8x2406njyc40rr8mq2dxxf43b7zil2c4qf"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/go-jose/go-jose/v4"
      #:unpack-path "github.com/go-jose/go-jose"))
    (propagated-inputs (list go-golang-org-x-crypto))
    (home-page "https://github.com/go-jose/go-jose")
    (synopsis "Go JOSE")
    (description
     "Package jose aims to provide an implementation of the Javascript Object Signing
and Encryption set of standards.  It implements encryption and signing based on
the JSON Web Encryption and JSON Web Signature standards, with optional JSON Web
Token support available in a sub-package.  The library supports both the compact
and JWS/JWE JSON Serialization formats, and has optional support for multiple
recipients.")
    (license license:asl2.0)))

(define-public go-github-com-goccy-go-yaml
  (package
    (name "go-github-com-goccy-go-yaml")
    (version "1.18.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/goccy/go-yaml")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0abvpywscsi503nq5a6z1jxhvvhk5gc366nk6xdlslp0gdh4sfhq"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/goccy/go-yaml"))
    (home-page "https://github.com/goccy/go-yaml")
    (synopsis "YAML support for the Go language")
    (description
     "As of this writing, there already exists a de facto standard library for YAML
processing for Go:
@@url{https://github.com/go-yaml/yaml,https://github.com/go-yaml/yaml}.
However, we believe that a new YAML library is necessary for the following
reasons:.")
    (license license:expat)))

(define-public go-github-com-google-cel-go
  (package
    (name "go-github-com-google-cel-go")
    (version "0.26.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/google/cel-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0hrdr9fzac0p7jrlbchz2qvdikr1szq5rg4sdsld7n849mmz8ypf"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/google/cel-go"))
    (propagated-inputs (list go-golang-org-x-text
                             go-gopkg-in-yaml-v3
                             go-google-golang-org-protobuf
                             go-google-golang-org-genproto-googleapis-api
                             go-github-com-stoewer-go-strcase
                             go-github-com-antlr4-go-antlr-v4
                             go-cel-dev-expr))
    (home-page "https://github.com/google/cel-go")
    (synopsis "Common Expression Language")
    (description
     "The Common Expression Language (CEL) is a non-Turing complete language designed
for simplicity, speed, safety, and portability.  CEL's C-like
@@url{https://github.com/google/cel-spec,syntax} looks nearly identical to
equivalent expressions in C++, Go, Java, and @code{TypeScript}.")
    (license unknown-license!)))

(define-public go-github-com-itchyny-gojq
  (package
    (name "go-github-com-itchyny-gojq")
    (version "0.12.17")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/itchyny/gojq")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0raipf3k392bihjk6kddzl3xsnap8wlvhplngmzx2vkp2f11x6fc"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/itchyny/gojq"))
    (propagated-inputs (list go-gopkg-in-yaml-v3
                             go-github-com-mattn-go-runewidth
                             go-github-com-mattn-go-isatty
                             go-github-com-itchyny-timefmt-go
                             go-github-com-google-go-cmp))
    (home-page "https://github.com/itchyny/gojq")
    (synopsis "gojq")
    (description
     "Package gojq provides the parser and the interpreter of gojq.  Please refer to
@@url{https://github.com/itchyny/gojq#usage-as-a-library,Usage as a library} for
introduction.")
    (license license:expat)))

(define-public go-github-com-kevinpollet-nego
  (package
    (name "go-github-com-kevinpollet-nego")
    (version "0.0.0-20211010160919-a65cd48cee43")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/kevinpollet/nego")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0j677czg90hpmrv9gzbnzp0pfwxd7h061l1g1r2gnp4v5j5lwsd6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/kevinpollet/nego"))
    (propagated-inputs (list go-github-com-stretchr-testify))
    (home-page "https://github.com/kevinpollet/nego")
    (synopsis "nego")
    (description
     "Package nego implements HTTP Content Negotiation functions compliant with
@@url{https://rfc-editor.org/rfc/rfc7231.html,RFC 7231}.")
    (license license:expat)))

(define-public go-github-com-pires-go-proxyproto
  (package
    (name "go-github-com-pires-go-proxyproto")
    (version "0.8.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/pires/go-proxyproto")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0agzji6ny9wz6cfhvmijn8ndcpysnidapsv3pwl6qp3xkig5yb6w"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/pires/go-proxyproto"))
    (propagated-inputs (list go-golang-org-x-net))
    (home-page "https://github.com/pires/go-proxyproto")
    (synopsis "go-proxyproto")
    (description
     "Package proxyproto implements Proxy Protocol (v1 and v2) parser and writer, as
per specification:
@@url{https://www.haproxy.org/download/2.3/doc/proxy-protocol.txt,https://www.haproxy.org/download/2.3/doc/proxy-protocol.txt}.")
    (license license:asl2.0)))

(define-public go-github-com-prometheus-client-golang
  (package
    (name "go-github-com-prometheus-client-golang")
    (version "1.23.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/prometheus/client_golang")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "054hdlyjkyna1xx39apl7srzvjsyirnn1ihbaqarxbygdrz3zrx1"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/prometheus/client_golang"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-golang-org-x-sys
                             go-go-uber-org-goleak
                             go-github-com-prometheus-procfs
                             go-github-com-prometheus-common
                             go-github-com-prometheus-client-model
                             go-github-com-kylelemons-godebug
                             go-github-com-klauspost-compress
                             go-github-com-json-iterator-go
                             go-github-com-google-go-cmp
                             go-github-com-cespare-xxhash-v2
                             go-github-com-beorn7-perks))
    (home-page "https://github.com/prometheus/client_golang")
    (synopsis "Prometheus Go client library")
    (description
     "This is the @@url{http://golang.org,Go} client library for
@@url{http://prometheus.io,Prometheus}.  It has two separate parts, one for
instrumenting application code, and one for creating clients that talk to the
Prometheus HTTP API.")
    (license license:asl2.0)))

(define-public go-github-com-tetratelabs-wazero
  (package
    (name "go-github-com-tetratelabs-wazero")
    (version "1.9.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/tetratelabs/wazero")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1n39mr7k7jbp9ryqdp3hrm2b39l4dxl2nq0h6my1h5qgrlnwf6fb"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/tetratelabs/wazero"))
    (home-page "https://github.com/tetratelabs/wazero")
    (synopsis
     "wazero: the zero dependency WebAssembly runtime for Go developers")
    (description
     "@code{WebAssembly} is a way to safely run code compiled in other languages.
Runtimes execute @code{WebAssembly} Modules (Wasm), which are most often
binaries with a @@code{.wasm} extension.")
    (license license:asl2.0)))

(define-public go-github-com-yl2chen-cidranger
  (package
    (name "go-github-com-yl2chen-cidranger")
    (version "1.0.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/yl2chen/cidranger")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "07gninfs6frhpll8k5a8pwb97pzgdibrr6arvr1rswd40skl1xmc"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/yl2chen/cidranger"))
    (propagated-inputs (list go-github-com-stretchr-testify))
    (home-page "https://github.com/yl2chen/cidranger")
    (synopsis "cidranger")
    (description
     "Package cidranger provides utility to store CIDR blocks and perform ip inclusion
tests against it.")
    (license license:expat)))

(define-public go-golang-org-x-crypto
  (package
    (name "go-golang-org-x-crypto")
    (version "0.42.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://go.googlesource.com/crypto")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1l51p6db9sha2c6f8hqanp60ziy4f79gniz3blbi0vvd7pwm73hd"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "golang.org/x/crypto"))
    (propagated-inputs (list go-golang-org-x-term go-golang-org-x-sys
                             go-golang-org-x-net))
    (home-page "https://golang.org/x/crypto")
    (synopsis "Go Cryptography")
    (description
     "This repository holds supplementary Go cryptography packages.")
    (license license:bsd-3)))

