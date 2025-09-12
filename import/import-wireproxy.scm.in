(define-public go-github-com-pufferffish-wireproxy
  (package
    (name "go-github-com-pufferffish-wireproxy")
    (version "1.0.10")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/whyvl/wireproxy")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0ypk9migx1l7xwcxr542pcdy8q2bm33wp03bqzgav0hp1fsrmi8p"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/pufferffish/wireproxy"))
    (propagated-inputs (list go-suah-dev-protect
                             go-golang-zx2c4-com-wireguard
                             go-golang-org-x-net
                             go-github-com-things-go-go-socks5
                             go-github-com-landlock-lsm-go-landlock
                             go-github-com-go-ini-ini
                             go-github-com-akamensky-argparse
                             go-github-com-makenowjust-heredoc-v2))
    (home-page "https://github.com/pufferffish/wireproxy")
    (synopsis "wireproxy")
    (description
     "This package provides a wireguard client that exposes itself as a socks5/http
proxy or tunnels.")
    (license license:isc)))

