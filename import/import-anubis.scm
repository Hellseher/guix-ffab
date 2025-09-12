(define-public go-github-com-cpuguy83-dockercfg
  (package
    (name "go-github-com-cpuguy83-dockercfg")
    (version "0.3.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/cpuguy83/dockercfg")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "055gxyq0wvyr9lap6rd49ijyg846mcpd1kwx9w69qj0pszvh2v96"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/cpuguy83/dockercfg"))
    (home-page "https://github.com/cpuguy83/dockercfg")
    (synopsis "github.com/cpuguy83/dockercfg")
    (description
     "Go library to load docker CLI configs, auths, etc.  with minimal deps.  So far
the only deps are on the stdlib.")
    (license license:expat)))

(define-public go-github-com-go-ole-go-ole
  (package
    (name "go-github-com-go-ole-go-ole")
    (version "1.3.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/go-ole/go-ole")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1vr62wwjp206sxah2l79l007s7n187fjzkrnwb85ivqmazfjspxl"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/go-ole/go-ole"))
    (propagated-inputs (list go-golang-org-x-sys))
    (home-page "https://github.com/go-ole/go-ole")
    (synopsis "Go OLE")
    (description
     "Go bindings for Windows COM using shared libraries instead of cgo.")
    (license license:expat)))

(define-public go-github-com-lufia-plan9stats
  (package
    (name "go-github-com-lufia-plan9stats")
    (version "0.0.0-20250827001030-24949be3fa54")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/lufia/plan9stats")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1yr2b2n8jfhpl3p3dg44m6pra3a1hmp653l6s0h9fy43sk4d4zln"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/lufia/plan9stats"))
    (propagated-inputs (list go-github-com-google-go-cmp))
    (home-page "https://github.com/lufia/plan9stats")
    (synopsis "plan9stats")
    (description "Package stats provides statistic utilities for Plan 9.")
    (license license:bsd-3)))

(define-public go-github-com-moby-go-archive
  (package
    (name "go-github-com-moby-go-archive")
    (version "0.1.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/moby/go-archive")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1vyz6nxbs368wf4ndn0l6b190rb303frf1sbp5c5s09law14cs24"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/moby/go-archive"))
    (propagated-inputs (list go-gotest-tools-v3
                             go-golang-org-x-sys
                             go-github-com-moby-sys-userns
                             go-github-com-moby-sys-user
                             go-github-com-moby-sys-sequential
                             go-github-com-moby-sys-reexec
                             go-github-com-moby-sys-mountinfo
                             go-github-com-moby-sys-mount
                             go-github-com-moby-patternmatcher
                             go-github-com-klauspost-compress
                             go-github-com-google-go-cmp
                             go-github-com-containerd-log
                             go-github-com-adalogics-go-fuzz-headers))
    (home-page "https://github.com/moby/go-archive")
    (synopsis #f)
    (description
     "Package archive provides helper functions for dealing with archive files.")
    (license license:asl2.0)))

(define-public go-github-com-moby-sys-mount
  (package
    (name "go-github-com-moby-sys-mount")
    (version "0.3.4")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/moby/sys")
             (commit (go-version->git-ref version
                                          #:subdir "mount"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1nh1disclgydvq7k10awzks6k8kw9cjj3q19f83ksi4b76p5l475"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/moby/sys/mount"
      #:unpack-path "github.com/moby/sys"))
    (propagated-inputs (list go-golang-org-x-sys
                             go-github-com-moby-sys-mountinfo))
    (home-page "https://github.com/moby/sys")
    (synopsis #f)
    (description
     "Package mount provides a set of functions to mount and unmount mounts.")
    (license license:asl2.0)))

(define-public go-github-com-moby-sys-reexec
  (package
    (name "go-github-com-moby-sys-reexec")
    (version "0.1.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/moby/sys")
             (commit (go-version->git-ref version
                                          #:subdir "reexec"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1n2z0zqfdyw6rllqdljddczh758kq22k4ajrhv27shv7m3fnvm0p"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/moby/sys/reexec"
      #:unpack-path "github.com/moby/sys"))
    (home-page "https://github.com/moby/sys")
    (synopsis #f)
    (description
     "Package reexec facilitates the busybox style reexec of a binary.")
    (license license:asl2.0)))

(define-public go-github-com-playwright-community-playwright-go
  (package
    (name "go-github-com-playwright-community-playwright-go")
    (version "0.5200.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
              (url "https://github.com/playwright-community/playwright-go")
              (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "03hcph79f16gc4m1h2bs8p5pggqzhya2c9dgliy8b20ys12ap5bz"))
       (modules '((guix build utils)))
       (snippet
        #~(begin
            ;; TODO: Package Git submodule of
            ;; <https://github.com/microsoft/playwright>.
            (delete-file-recursively "playwright")))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/playwright-community/playwright-go"
      ;; [1] could not start Playwright: please install the driver (v1.52.0)
      ;; first: could not create driver directory: mkdir /homeless-shelter:
      ;; permission denied
      ;;
      ;; [2] could not install driver: could not download driver from
      ;; https://playwright.azureedge.net/builds/driver/playwright-1.52.0-linux.zip:
      ;; Get
      ;; "https://playwright.azureedge.net/builds/driver/playwright-1.52.0-linux.zip":
      ;; dial tcp: lookup playwright.azureedge.net on [::1]:53: read udp
      ;; [::1]:59788->[::1]:53: read: connection refused
      #:test-flags
      #~(list "-skip" (string-join
                       (list "TestShouldNotHangWhenPlaywrightUnexpectedExit" ; 1.
                             "TestRunOptions_OnlyInstallShell" ; 2.
                             "TestDriverInstall")
                       "|") )))
    (native-inputs
     (list go-github-com-stretchr-testify))
    (propagated-inputs
     (list go-github-com-coder-websocket
           go-github-com-deckarep-golang-set-v2
           go-github-com-go-jose-go-jose-v3
           go-github-com-go-stack-stack
           go-github-com-h2non-filetype
           go-github-com-mitchellh-go-ps
           go-github-com-orisano-pixelmatch
           go-github-com-tidwall-gjson))
    (home-page "https://github.com/playwright-community/playwright-go")
    (synopsis "Playwright for Golang")
    (description
     "Package playwright is a library to automate Chromium, Firefox and
@code{WebKit} with a single API. Playwright is built to enable cross-browser
web automation that is ever-green, capable, reliable and fast.")
    (license license:expat)))

(define-public go-github-com-techarohq-anubis
  (package
    (name "go-github-com-techarohq-anubis")
    (version "1.22.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
              (url "https://github.com/TecharoHQ/anubis")
              (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1vaj78727ndzsxydhdgwr9w0p9ykg73nkrbbiijh5l7lvabh3ric"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/TecharoHQ/anubis"))
    ;; just for tests
    ;; go-github-com-playwright-community-playwright-go
    ;; go-github-com-testcontainers-testcontainers-go -> lib/store/valkey/valkey_test.go
    (native-inputs
     (list go-github-com-a-h-templ                            ; packaged
           go-github-com-cespare-xxhash-v2                    ; packaged
           go-github-com-facebookgo-flagenv                   ; packaged
           go-github-com-gaissmai-bart                        ; packaged
           go-github-com-golang-jwt-jwt-v5                    ; packaged
           go-github-com-google-cel-go                        ; packaged
           go-github-com-google-uuid                          ; packaged
           go-github-com-grpc-ecosystem-go-grpc-middleware-providers-prometheus ; packaged
           go-github-com-grpc-ecosystem-go-grpc-middleware-v2 ; packages
           go-github-com-joho-godotenv                        ; packaged
           go-github-com-lum8rjack-go-ja4h                    ; packaged
           go-github-com-nicksnyder-go-i18n-v2                ; packaged
           go-github-com-prometheus-client-golang             ; packaged
           go-github-com-redis-go-redis-v9                    ; packaged
           go-github-com-sebest-xff                           ; packaged
           go-github-com-shirou-gopsutil-v4                   ; packaged
           go-github-com-techarohq-thoth-proto                ; packaged
           go-go-etcd-io-bbolt                                ; packaged
           go-golang-org-x-net                                ; packaged
           go-golang-org-x-text                               ; packaged
           go-google-golang-org-grpc                          ; packaged
           go-gopkg-in-yaml-v3                                ; packaged
           go-k8s-io-apimachinery                             ; packaged
           go-sigs-k8s-io-yaml))                              ; packaged
    (home-page "https://github.com/TecharoHQ/anubis")
    (synopsis "Anubis")
    (description "Package anubis contains the version number of Anubis.")
    (license license:expat)))

(define-public go-github-com-testcontainers-testcontainers-go
  (package
    (name "go-github-com-testcontainers-testcontainers-go")
    (version "0.38.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/testcontainers/testcontainers-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0y0x7qa25k17r5pzbnhy27lc8slja1x1783rgnx83m5frrsizjjz"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/testcontainers/testcontainers-go"))
    (propagated-inputs (list go-golang-org-x-sys
                             go-golang-org-x-crypto
                             go-github-com-stretchr-testify
                             go-github-com-shirou-gopsutil-v4
                             go-github-com-opencontainers-image-spec
                             go-github-com-moby-term
                             go-github-com-moby-patternmatcher
                             go-github-com-moby-go-archive
                             go-github-com-magiconair-properties
                             go-github-com-google-uuid
                             go-github-com-docker-go-connections
                             go-github-com-docker-docker
                             go-github-com-cpuguy83-dockercfg
                             go-github-com-containerd-platforms
                             go-github-com-containerd-errdefs ; packaged
                             go-github-com-cenkalti-backoff-v4 ; packaged
                             go-dario-cat-mergo))
    (home-page "https://github.com/testcontainers/testcontainers-go")
    (synopsis "Testcontainers")
    (description
     "is a Go package that makes it simple to create and clean up container-based
dependencies for automated integration/smoke tests.  The clean, easy-to-use API
enables developers to programmatically define containers that should be run as
part of a test and clean up those resources when the test is done.")
    (license license:expat)))
