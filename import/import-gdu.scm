(define-public go-github-com-cpuguy83-go-md2man
  (package
    (name "go-github-com-cpuguy83-go-md2man")
    (version "2.0.7")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/cpuguy83/go-md2man")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0bbaagr56vnq4yhvyjpdrgl28kl54ix96j7qjiwa55wxv2yqdahc"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/cpuguy83/go-md2man/v2"
      #:unpack-path "github.com/cpuguy83/go-md2man"))
    (propagated-inputs (list go-github-com-russross-blackfriday-v2))
    (home-page "https://github.com/cpuguy83/go-md2man")
    (synopsis "go-md2man")
    (description "Converts markdown into roff (man pages).")
    (license license:expat)))

(define-public go-github-com-dgraph-io-badger
  (package
    (name "go-github-com-dgraph-io-badger")
    (version "3.2103.5")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/hypermodeinc/badger")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1xzaxwykriygd60xqlmnfzad4r1ai4329ihc3d2s4q4snjkw8y0m"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/dgraph-io/badger/v3"
      #:unpack-path "github.com/dgraph-io/badger"))
    (propagated-inputs (list go-golang-org-x-sys
                             go-golang-org-x-net
                             go-go-opencensus-io
                             go-github-com-stretchr-testify
                             go-github-com-spf13-cobra
                             go-github-com-pkg-errors
                             go-github-com-klauspost-compress
                             go-github-com-google-flatbuffers
                             go-github-com-golang-snappy
                             go-github-com-golang-protobuf
                             go-github-com-gogo-protobuf
                             go-github-com-dustin-go-humanize
                             go-github-com-dgraph-io-ristretto
                             go-github-com-cespare-xxhash))
    (home-page "https://github.com/dgraph-io/badger")
    (synopsis "BadgerDB")
    (description
     "Package badger implements an embeddable, simple and fast key-value database,
written in pure Go.  It is designed to be highly performant for both reads and
writes simultaneously.  Badger uses Multi-Version Concurrency Control (MVCC),
and supports transactions.  It runs transactions concurrently, with serializable
snapshot isolation guarantees.")
    (license license:asl2.0)))

(define-public go-github-com-gdamore-tcell
  (package
    (name "go-github-com-gdamore-tcell")
    (version "2.9.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/gdamore/tcell")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "02z3pci60byg0iz6nr9zdgkr7g6d1bjk0psl4143lcv6fkwbx8w6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/gdamore/tcell/v2"
      #:unpack-path "github.com/gdamore/tcell"))
    (propagated-inputs (list go-golang-org-x-text
                             go-golang-org-x-term
                             go-golang-org-x-sys
                             go-github-com-mattn-go-runewidth
                             go-github-com-lucasb-eyer-go-colorful
                             go-github-com-gdamore-encoding))
    (home-page "https://github.com/gdamore/tcell")
    (synopsis "Tcell")
    (description
     "Package tcell provides a lower-level, portable API for building programs that
interact with terminals or consoles.  It works with both common (and many
uncommon!) terminals or terminal emulators, and Windows console implementations.")
    (license license:asl2.0)))

(define-public go-github-com-inconshreveable-mousetrap
  (package
    (name "go-github-com-inconshreveable-mousetrap")
    (version "1.1.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/inconshreveable/mousetrap")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "14gjpvwgx3hmbd92jlwafgibiak2jqp25rq4q50cq89w8wgmhsax"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/inconshreveable/mousetrap"))
    (home-page "https://github.com/inconshreveable/mousetrap")
    (synopsis "mousetrap")
    (description "mousetrap is a tiny library that answers a single question.")
    (license license:asl2.0)))

(define-public go-github-com-maruel-natural
  (package
    (name "go-github-com-maruel-natural")
    (version "1.1.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/maruel/natural")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "040aikizdd7c4zm8xindb2ps16s60i0fkf8gkll2rir7lwv6q7ks"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/maruel/natural"))
    (home-page "https://github.com/maruel/natural")
    (synopsis "natural")
    (description
     "Package natural defines a natural \"less\" to compare two strings while
interpreting natural numbers.")
    (license license:asl2.0)))

(define-public go-github-com-mattn-go-isatty
  (package
    (name "go-github-com-mattn-go-isatty")
    (version "0.0.20")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/mattn/go-isatty")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0g63n9wpb991qnq9mn2kvd8jk1glrp6gnd851kvwz2wmzdkggiga"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/mattn/go-isatty"))
    (propagated-inputs (list go-golang-org-x-sys))
    (home-page "https://github.com/mattn/go-isatty")
    (synopsis "go-isatty")
    (description "Package isatty implements interface to isatty.")
    (license license:expat)))

(define-public go-github-com-pbnjay-memory
  (package
    (name "go-github-com-pbnjay-memory")
    (version "0.0.0-20210728143218-7b4eea64cf58")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/pbnjay/memory")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "107w8pd1aasdrk35hh9pbdh9z11s9s79nglz6rqfnf6bhgb8b3s0"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/pbnjay/memory"))
    (home-page "https://github.com/pbnjay/memory")
    (synopsis "memory")
    (description
     "Package memory provides a single method reporting total system memory accessible
to the kernel.")
    (license license:bsd-3)))

(define-public go-github-com-pkg-errors
  (package
    (name "go-github-com-pkg-errors")
    (version "0.9.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/pkg/errors")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1761pybhc2kqr6v5fm8faj08x9bql8427yqg6vnfv6nhrasx1mwq"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/pkg/errors"))
    (home-page "https://github.com/pkg/errors")
    (synopsis "errors")
    (description "Package errors provides simple error handling primitives.")
    (license license:bsd-2)))

(define-public go-github-com-rivo-tview
  (package
    (name "go-github-com-rivo-tview")
    (version "0.42.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/rivo/tview")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0jw47h92l0vp1lg6s5kng4hjv81hi8qxx9h5yilc7rzrr8l9ksd2"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/rivo/tview"))
    (propagated-inputs (list go-github-com-rivo-uniseg
                             go-github-com-lucasb-eyer-go-colorful
                             go-github-com-gdamore-tcell-v2))
    (home-page "https://github.com/rivo/tview")
    (synopsis "Rich Interactive Widgets for Terminal UIs")
    (description
     "Package tview implements rich widgets for terminal based user interfaces.  The
widgets provided with this package are useful for data exploration and data
entry.")
    (license license:expat)))

(define-public go-github-com-sirupsen-logrus
  (package
    (name "go-github-com-sirupsen-logrus")
    (version "1.9.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/sirupsen/logrus")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1jz7nyq88i9fwfpp7krl046q62kjn6lb9j4r932bxnpypl1hwc49"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/sirupsen/logrus"))
    (propagated-inputs (list go-golang-org-x-sys
                             go-github-com-stretchr-testify))
    (home-page "https://github.com/sirupsen/logrus")
    (synopsis "Logrus")
    (description
     "Package logrus is a structured logger for Go, completely API compatible with the
standard library logger.")
    (license license:expat)))

(define-public go-github-com-spf13-cobra
  (package
    (name "go-github-com-spf13-cobra")
    (version "1.10.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/spf13/cobra")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "14vjl0lxk4rlv5l70nhbrpddj8f9wk28jnjfy51z0xiqm5vb1ziq"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/spf13/cobra"))
    (propagated-inputs (list go-gopkg-in-yaml-v3 go-github-com-spf13-pflag
                             go-github-com-inconshreveable-mousetrap
                             go-github-com-cpuguy83-go-md2man-v2))
    (home-page "https://github.com/spf13/cobra")
    (synopsis #f)
    (description
     "Package cobra is a commander providing a simple interface to create powerful
modern CLI interfaces.  In addition to providing an interface, Cobra
simultaneously provides a controller to organize your application code.")
    (license license:asl2.0)))

(define-public go-github-com-stretchr-testify
  (package
    (name "go-github-com-stretchr-testify")
    (version "1.11.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/stretchr/testify")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "01z104142yrnih9vq3zrhypalh1d3kmyddyapqxgzggvhsw5b6pl"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/stretchr/testify"))
    (propagated-inputs (list go-gopkg-in-yaml-v3 go-github-com-stretchr-objx
                             go-github-com-pmezard-go-difflib
                             go-github-com-davecgh-go-spew))
    (home-page "https://github.com/stretchr/testify")
    (synopsis "Testify - Thou Shalt Write Tests")
    (description
     "Module testify is a set of packages that provide many tools for testifying that
your code will behave as you intend.")
    (license license:expat)))

(define-public go-github-com-ulikunitz-xz
  (package
    (name "go-github-com-ulikunitz-xz")
    (version "0.5.15")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/ulikunitz/xz")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1wpzw8wpbrk5vfgphnydb81kmx1kf4c9nyrx2a6pw8dasp0dk93f"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/ulikunitz/xz"))
    (home-page "https://github.com/ulikunitz/xz")
    (synopsis "Package xz")
    (description
     "Package xz supports the compression and decompression of xz files.  It supports
version 1.0.4 of the specification without the non-LZMA2 filters.  See
@@url{http://tukaani.org/xz/xz-file-format-1.0.4.txt,http://tukaani.org/xz/xz-file-format-1.0.4.txt}.")
    (license license:bsd-3)))

(define-public go-golang-org-x-exp
  (package
    (name "go-golang-org-x-exp")
    (version "0.0.0-20250819193227-8b4c13bb791b")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://go.googlesource.com/exp")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1krc7674ds3csk9slfrb3mjl6ijjs26zmxayglsi237g192parhf"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "golang.org/x/exp"))
    (propagated-inputs (list go-golang-org-x-tools-go-packages-packagestest
                             go-golang-org-x-tools go-golang-org-x-mod
                             go-github-com-google-go-cmp))
    (home-page "https://golang.org/x/exp")
    (synopsis "exp")
    (description
     "This subrepository holds experimental and deprecated (in the @@code{old}
directory) packages.")
    (license license:bsd-3)))

(define-public go-golang-org-x-sys
  (package
    (name "go-golang-org-x-sys")
    (version "0.35.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://go.googlesource.com/sys")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "01k7rkyqvf99m24xcfjdpkrad22rvvs9xp91l1sbsyjgzzy8g620"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "golang.org/x/sys"))
    (home-page "https://golang.org/x/sys")
    (synopsis "sys")
    (description
     "This repository holds supplemental Go packages for low-level interactions with
the operating system.")
    (license license:bsd-3)))

(define-public go-golang-org-x-tools-go-expect
  (package
    (name "go-golang-org-x-tools-go-expect")
    (version "0.1.1-deprecated")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://go.googlesource.com/tools")
             (commit (go-version->git-ref version
                                          #:subdir "go/expect"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0sjvngpahkb5x573i855fjlb1fdmr6n269nmb5xxnbabjb27mnvg"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "golang.org/x/tools/go/expect"
      #:unpack-path "golang.org/x/tools"))
    (propagated-inputs (list go-golang-org-x-mod))
    (home-page "https://golang.org/x/tools")
    (synopsis #f)
    (description
     "Package expect provides support for interpreting structured comments in Go
source code (including go.mod and go.work files) as test expectations.")
    (license license:bsd-3)))

(define-public go-golang-org-x-tools-go-packages-packagestest
  (package
    (name "go-golang-org-x-tools-go-packages-packagestest")
    (version "0.1.1-deprecated")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://go.googlesource.com/tools")
             (commit (go-version->git-ref version
                                          #:subdir "go/packages/packagestest"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0sjvngpahkb5x573i855fjlb1fdmr6n269nmb5xxnbabjb27mnvg"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "golang.org/x/tools/go/packages/packagestest"
      #:unpack-path "golang.org/x/tools"))
    (propagated-inputs (list go-golang-org-x-tools-go-expect
                             go-golang-org-x-tools))
    (home-page "https://golang.org/x/tools")
    (synopsis #f)
    (description
     "Package packagestest creates temporary projects on disk for testing go tools on.")
    (license license:bsd-3)))

