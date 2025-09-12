(define-public go-github-com-akamensky-argparse
  (package
    (name "go-github-com-akamensky-argparse")
    (version "1.4.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/akamensky/argparse")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1m7rzrfwyrwxbbry5ppds2b3c5gdslpakvjhsh6i8mhdfhywd8wc"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/akamensky/argparse"))
    (home-page "https://github.com/akamensky/argparse")
    (synopsis "Golang argparse")
    (description
     "Package argparse provides users with more flexible and configurable option for
command line arguments parsing.")
    (license license:expat)))

(define-public go-github-com-amnezia-vpn-amneziawg-go
  (package
    (name "go-github-com-amnezia-vpn-amneziawg-go")
    (version "0.2.13")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/amnezia-vpn/amneziawg-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0l5hgsv2mlnriw4g4fxjvzqcc31cqfa9y6cybkj7wgscc188yx5x"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "github.com/amnezia-vpn/amneziawg-go"))
    (propagated-inputs (list go-gvisor-dev-gvisor
                             go-golang-zx2c4-com-wintun
                             go-golang-org-x-sys
                             go-golang-org-x-net
                             go-golang-org-x-crypto
                             go-go-uber-org-atomic
                             go-github-com-tevino-abool-v2
                             go-github-com-tevino-abool
                             go-github-com-stretchr-testify))
    (home-page "https://github.com/amnezia-vpn/amneziawg-go")
    (synopsis "Go Implementation of AmneziaWG")
    (description
     "@code{AmneziaWG} is a contemporary version of the @code{WireGuard} protocol.
It's a fork of @code{WireGuard-Go} and offers protection against detection by
Deep Packet Inspection (DPI) systems.  At the same time, it retains the
simplified architecture and high performance of the original.")
    (license license:expat)))

(define-public go-github-com-artem-russkikh-wireproxy-awg
  (package
    (name "go-github-com-artem-russkikh-wireproxy-awg")
    (version "1.0.12")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/artem-russkikh/wireproxy-awg")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1vaixnbjs39q39y3hsaskx9d8115mi8k6cvfyjswji2qmyp1568n"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "github.com/artem-russkikh/wireproxy-awg"))
    (propagated-inputs (list go-suah-dev-protect
                             go-golang-org-x-net
                             go-github-com-things-go-go-socks5
                             go-github-com-landlock-lsm-go-landlock
                             go-github-com-go-ini-ini
                             go-github-com-amnezia-vpn-amneziawg-go
                             go-github-com-akamensky-argparse
                             go-github-com-makenowjust-heredoc-v2))
    (home-page "https://github.com/artem-russkikh/wireproxy-awg")
    (synopsis "wireproxy-awg")
    (description
     "@code{AmneziaWG} compatible wireguard client that exposes itself as a
socks5/http proxy or tunnels.  Forked from
@@url{https://github.com/pufferffish/wireproxy,wireproxy}.")
    (license license:isc)))

(define-public go-github-com-landlock-lsm-go-landlock
  (package
    (name "go-github-com-landlock-lsm-go-landlock")
    (version "0.0.0-20250303204525-1544bccde3a3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/landlock-lsm/go-landlock")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "00qis8gg2ajyph9jyrjghm6cn0h22pwjwdp6qa22ji6jslgnm02n"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/landlock-lsm/go-landlock"))
    (propagated-inputs (list go-kernel-org-pub-linux-libs-security-libcap-psx
                             go-golang-org-x-sys))
    (home-page "https://github.com/landlock-lsm/go-landlock")
    (synopsis "Go Landlock library")
    (description
     "📚 @@url{https://pkg.go.dev/github.com/landlock-lsm/go-landlock/landlock,Godoc} |
🌍 @@url{https://landlock.io/,landlock.io}.")
    (license license:expat)))

(define-public go-github-com-tevino-abool
  (package
    (name "go-github-com-tevino-abool")
    (version "1.2.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/tevino/abool")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0w5x2zq648ahjin2wlv00q5621p2d3y1466x4n51pxjlcy2hwsxf"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/tevino/abool"))
    (home-page "https://github.com/tevino/abool")
    (synopsis "ABool 💡")
    (description
     "Package abool provides atomic Boolean type for cleaner code and better
performance.")
    (license license:expat)))

(define-public go-github-com-things-go-go-socks5
  (package
    (name "go-github-com-things-go-go-socks5")
    (version "0.0.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/things-go/go-socks5")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0r7v1bpja4j8q9bjh124w8l5m29vwnpaq0flm97izvzw4pcyxybf"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/things-go/go-socks5"))
    (propagated-inputs (list go-golang-org-x-net
                             go-github-com-stretchr-testify))
    (home-page "https://github.com/things-go/go-socks5")
    (synopsis "go-socks5")
    (description
     "This package provides the @@code{socks5} package that implements a
@@url{http://en.wikipedia.org/wiki/SOCKS,SOCKS5}.  SOCKS (Secure Sockets) is
used to route traffic between a client and server through an intermediate proxy
layer.  This can be used to bypass firewalls or NATs.")
    (license license:expat)))

(define-public go-golang-zx2c4-com-wintun
  (package
    (name "go-golang-zx2c4-com-wintun")
    (version "0.0.0-20230126152724-0fa3db229ce2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://git.zx2c4.com/wintun-go")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "16ha3dpwq1bpbxrqfyb2pw09wn25iq27i9p58iaym7m768v0ncvj"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "golang.zx2c4.com/wintun"))
    (propagated-inputs (list go-golang-org-x-sys))
    (home-page "https://golang.zx2c4.com/wintun")
    (synopsis "wintun-go")
    (description
     "This contains bindings to use @@url{https://www.wintun.net,Wintun} from Go.")
    (license license:expat)))

(define-public go-kernel-org-pub-linux-libs-security-libcap-psx
  (package
    (name "go-kernel-org-pub-linux-libs-security-libcap-psx")
    (version "1.2.76")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://git.kernel.org/pub/scm/libs/libcap/libcap.git")
             (commit (go-version->git-ref version
                                          #:subdir "psx"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0va0bkq5kxf0ccsdpw598vsmk4kdzhaafjvym0g5b2n49c5sn59b"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "kernel.org/pub/linux/libs/security/libcap/psx"
      #:unpack-path "kernel.org/pub/linux/libs/security/libcap"))
    (home-page "https://kernel.org/pub/linux/libs/security/libcap")
    (synopsis "PSX")
    (description
     "Package psx provides support for system calls that are run simultaneously on all
threads under Linux.  It supports tool chains after go1.16.  Earlier toolchains
had no reliable way to support this because of
@@url{https://bugzilla.kernel.org/show_bug.cgi?id=219478,Bug 219478}.")
    (license license:gpl2)))

