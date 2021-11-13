(define-module (ffab packages docker)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages base)
  #:use-module (gnu packages golang)
  #:use-module (gnu packages check)
  #:use-module (guix build-system go)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix packages))

(define-public go-github-com-wagoodman-dive
  (package
    (name "go-github-com-wagoodman-dive")
    (version "0.10.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/wagoodman/dive")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0q028nx6fhrlx0ybrrkhp31yi82argmh4s4dji2lwyi5jprb16fn"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/wagoodman/dive"))
    (propagated-inputs
      `(("go-github-com-docker-engine" ,go-github-com-docker-engine)
        ("go-github-com-docker-distribution"
         ,go-github-com-docker-distribution)
        ("go-gotest-tools" ,go-gotest-tools)
        ("go-google-golang-org-grpc" ,go-google-golang-org-grpc)
        ("go-google-golang-org-genproto" ,go-google-golang-org-genproto)
        ("go-golang-org-x-text" ,go-golang-org-x-text)
        ("go-golang-org-x-sys" ,go-golang-org-x-sys)
        ("go-golang-org-x-net" ,go-golang-org-x-net)
        ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
        ("go-github-com-spf13-viper" ,go-github-com-spf13-viper)
        ("go-github-com-spf13-pflag" ,go-github-com-spf13-pflag)
        ("go-github-com-spf13-jwalterweatherman"
         ,go-github-com-spf13-jwalterweatherman)
        ("go-github-com-spf13-cobra" ,go-github-com-spf13-cobra)
        ("go-github-com-spf13-afero" ,go-github-com-spf13-afero)
        ("go-github-com-sirupsen-logrus" ,go-github-com-sirupsen-logrus)
        ("go-github-com-sergi-go-diff" ,go-github-com-sergi-go-diff)
        ("go-github-com-phayes-permbits" ,go-github-com-phayes-permbits)
        ("go-github-com-pelletier-go-toml" ,go-github-com-pelletier-go-toml)
        ("go-github-com-opencontainers-image-spec"
         ,go-github-com-opencontainers-image-spec)
        ("go-github-com-opencontainers-go-digest"
         ,go-github-com-opencontainers-go-digest)
        ("go-github-com-morikuni-aec" ,go-github-com-morikuni-aec)
        ("go-github-com-mitchellh-go-homedir"
         ,go-github-com-mitchellh-go-homedir)
        ("go-github-com-mattn-go-isatty" ,go-github-com-mattn-go-isatty)
        ("go-github-com-mattn-go-colorable" ,go-github-com-mattn-go-colorable)
        ("go-github-com-magiconair-properties"
         ,go-github-com-magiconair-properties)
        ("go-github-com-lunixbochs-vtclean" ,go-github-com-lunixbochs-vtclean)
        ("go-github-com-logrusorgru-aurora" ,go-github-com-logrusorgru-aurora)
        ("go-github-com-konsorten-go-windows-terminal-sequences"
         ,go-github-com-konsorten-go-windows-terminal-sequences)
        ("go-github-com-gorilla-mux" ,go-github-com-gorilla-mux)
        ("go-github-com-google-uuid" ,go-github-com-google-uuid)
        ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
        ("go-github-com-gogo-protobuf" ,go-github-com-gogo-protobuf)
        ("go-github-com-fatih-color" ,go-github-com-fatih-color)
        ("go-github-com-dustin-go-humanize" ,go-github-com-dustin-go-humanize)
        ("go-github-com-docker-go-units" ,go-github-com-docker-go-units)
        ("go-github-com-docker-go-connections"
         ,go-github-com-docker-go-connections)
        ("go-github-com-docker-cli" ,go-github-com-docker-cli)
        ("go-github-com-cespare-xxhash" ,go-github-com-cespare-xxhash)
        ("go-github-com-awesome-gocui-keybinding"
         ,go-github-com-awesome-gocui-keybinding)
        ("go-github-com-awesome-gocui-gocui"
         ,go-github-com-awesome-gocui-gocui)
        ("go-github-com-microsoft-go-winio" ,go-github-com-microsoft-go-winio)
        ("go-github-com-azure-go-ansiterm" ,go-github-com-azure-go-ansiterm)))
    (home-page "https://github.com/wagoodman/dive")
    (synopsis "dive")
    (description
      "To analyze a Docker image simply run dive with an image tag/id/digest:")
    (license license:expat)))

(define-public go-github-com-docker-engine
  (package
    (name "go-github-com-docker-engine")
    (version "1.13.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/docker/engine")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0l9kjibnpwcgk844sibxk9ppyqniw9r0np1mzp95f8f461jb0iar"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/docker/engine"))
    (home-page "https://github.com/docker/engine")
    (synopsis "Docker: the container engine")
    (description
      "Docker is an open source project to pack, ship and run any application
as a lightweight container.")
    (license license:asl2.0)))
