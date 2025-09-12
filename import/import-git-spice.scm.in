



(define-public go-go-abhg-dev-gs
  (package
    (name "go-go-abhg-dev-gs")
    (version "0.17.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/abhinav/git-spice")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1xcmzbpng4kxf5i6i0vddwvhr7pxfyc0wkg7rk18phnax3v0k8rn"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "go.abhg.dev/gs"))
    (propagated-inputs (list go-pgregory-net-rapid
                             go-gopkg-in-yaml-v3
                             go-gopkg-in-dnaeon-go-vcr-v4
                             go-golang-org-x-oauth2
                             go-go-uber-org-mock
                             go-go-abhg-dev-testing-stub
                             go-go-abhg-dev-log-silog
                             go-go-abhg-dev-komplete
                             go-go-abhg-dev-io-ioutil
                             go-go-abhg-dev-container-ring
                             go-gitlab-com-gitlab-org-api-client-go
                             go-github-com-zalando-go-keyring
                             go-github-com-vito-midterm
                             go-github-com-tidwall-gjson
                             go-github-com-stretchr-testify
                             go-github-com-shurcool-githubv4
                             go-github-com-sahilm-fuzzy
                             go-github-com-rogpeppe-go-internal
                             go-github-com-mattn-go-isatty
                             go-github-com-hexops-autogold-v2
                             go-github-com-dustin-go-humanize
                             go-github-com-creack-pty
                             go-github-com-cli-browser
                             go-github-com-charmbracelet-lipgloss
                             go-github-com-charmbracelet-bubbletea
                             go-github-com-charmbracelet-bubbles
                             go-github-com-buildkite-shellwords
                             go-github-com-alecthomas-kong))
    (home-page "https://go.abhg.dev/gs")
    (synopsis "git-spice")
    (description
     "gs (git-spice) is a command line tool for stacking Git branches.")
    (license license:gpl3)))

    (propagated-inputs (list
                        go-gopkg-in-yaml-v3
                        go-google-golang-org-protobuf
                        go-golang-org-x-time
                        go-golang-org-x-oauth2
                        go-github-com-zalando-go-keyring
                        go-github-com-hashicorp-go-retryablehttp
                        go-github-com-hashicorp-go-cleanhttp
                        go-github-com-google-go-querystring
                        go-github-com-makenowjust-heredoc-v2
                        go-buf-build-go-protoyaml
                        go-buf-build-go-protovalidate
                        go-buf-build-gen-go-bufbuild-protovalidate-protocolbuffers-go))
