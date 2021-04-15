(define-module (hellseher packages golang)
  #:use-module (guix packages)
  #:use-module (guix build-system go)
  #:use-module (gnu packages golang)
  #:use-module (guix git-download)
  #:use-module ((guix licenses) #:prefix license:))

(define-public go-gopkg-in-yaml-v3
  (package
    (name "go-gopkg-in-yaml-v3")
    (version "3")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://gopkg.in/yaml.v3.git")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
         (base32 "06f4lnrp494wqaygv09dggr2dwf3z2bawqhnlnnwiamg5y787k4g"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "gopkg.in/yaml.v3"))
    (native-inputs
     `(("go-gopkg-in-check-v1" ,go-gopkg-in-check-v1)))
    (home-page "https://gopkg.in/yaml.v2")
    (synopsis "YAML reader and writer for the Go language")
    (description
     "This package provides a Go library for encode and decode YAML
values.

v3 specification difference:
@itemize
@item YAML 1.1 bools (yes/no, on/off) are supported as long as they are
being decoded into a typed bool value.  Otherwise they behave as a string.
Booleans in YAML 1.2 are true/false only.

@item Octals encode and decode as 0777 per YAML 1.1, rather than 0o777 as
specified in YAML 1.2, because most parsers still use the old format.  Octals in
the 0o777 format are supported though, so new files work.

@item Does not support base-60 floats.  These are gone from YAML 1.2, and were
actually never supported by this package as it's clearly a poor choice.
@end itemize\n")
    (license license:asl2.0)))

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
      `(("go-gopkg-in-yaml-v3" ,go-gopkg-in-yaml-v3)
        ("go-github-com-stretchr-objx" ,go-github-com-stretchr-objx)
        ("go-github-com-pmezard-go-difflib" ,go-github-com-pmezard-go-difflib)
        ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)))
    (home-page "https://github.com/stretchr/testify")
    (synopsis "Testify - Thou Shalt Write Tests")
    (description
      "** We are working on testify v2 and would love to hear what you'd like to
see in it, have your say here:
@url{https://cutt.ly/testify,https://cutt.ly/testify} ** Package testify is a
set of packages that provide many tools for testifying that your code will
behave as you intend.")
    (license license:expat)))

;; NOTE: (Sharlatan-20210415T224806+0100): Work in progress
(define-public lazygit
  (package
    (name "lazygit")
    (version "0.24.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/jesseduffield/lazygit")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0hy13l1v2kcsn99dswlq1hl0ly18cal387zhnzjfqv51qng2q5kq"))))
    (build-system go-build-system)
    (arguments
     `(#:import-path "github.com/jesseduffield/golazygitio"))
    (native-inputs
     `(("go-github-com-openpeedeep-xdg" ,go-github-com-openpeedeep-xdg)
       ("github-com-atotto-clipboard" ,github-com-atotto-clipboard)
       ("github-com-aybabtme-humanlog" ,github-com-aybabtme-humanlog)
       ("github-com-cloudfoundry-jibber-jabber" ,github-com-cloudfoundry-jibber_jabber)
       ("github-com-creack-pty" ,github-com-creack-pty)
       ("github-com-fatih-color" ,github-com-fatih-color)
       ("github-com-fsnotify-fsnotify" ,github-com-fsnotify-fsnotify)
       ("github-com-go-errors-errors" ,github-com-go-errors-errors)
       ("github-com-go-logfmt-logfmt" ,github-com-go-logfmt-logfmt)
       ("github-com-golang-collections-collections" ,github-com-golang-collections-collections)
       ("github-com-golang-protobuf" ,github-com-golang-protobuf)
       ("github-com-google-go-cmp" ,github-com-google-go-cmp)
       ("github-com-imdario-mergo" ,github-com-imdario-mergo)
       ("github-com-integrii-flaggy" ,github-com-integrii-flaggy)
       ("github-com-jesseduffield-go-git/v5" ,github-com-jesseduffield-go-git/v5)
       ("github-com-jesseduffield-gocui" ,github-com-jesseduffield-gocui)
       ("github-com-jesseduffield-termbox-go" ,github-com-jesseduffield-termbox-go)
       ("github-com-jesseduffield-yaml" ,github-com-jesseduffield-yaml)
       ("github-com-kardianos-osext" ,github-com-kardianos-osext)
       ("github-com-konsorten-go-windows-terminal-sequences" ,github-com-konsorten-go-windows-terminal-sequences)
       ("github-com-kylelemons-godebug" ,github-com-kylelemons-godebug)
       ("github-com-mattn-go-colorable" ,github-com-mattn-go-colorable)
       ("github-com-mattn-go-runewidth" ,github-com-mattn-go-runewidth)
       ("github-com-mgutz-str" ,github-com-mgutz-str)
       ("github-com-onsi-ginkgo" ,github-com-onsi-ginkgo)
       ("github-com-onsi-gomega" ,github-com-onsi-gomega)
       ("github-com-sahilm-fuzzy" ,github-com-sahilm-fuzzy)
       ("github-com-sirupsen-logrus" ,github-com-sirupsen-logrus)
       ("github-com-spkg-bom" ,github-com-spkg-bom)
       ("github-com-stretchr-testify" ,github-com-stretchr-testify)
       ("github-com-tcnksm-go-gitconfig" ,github-com-tcnksm-go-gitconfig)
       ("golang-org-x-crypto" ,golang-org-x-crypto)
       ("golang-org-x-net" ,golang-org-x-net)
       ("golang-org-x-sys" ,golang-org-x-sys)))
    (home-page "https://github.com/jesseduffield/lazygit")
    (synopsis "Simple terminal UI for git commands ")
    (description "")
    (license license:expat)))
