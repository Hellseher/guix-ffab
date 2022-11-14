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

(define-module (ffab packages docker)
  #:use-module (ffab packages golang)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages base)
  #:use-module (gnu packages golang)
  #:use-module (gnu packages check)
  #:use-module (guix build-system go)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages))

;; 20220615T213902+0100
(define-public dive
  (package
    (name "dive")
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
    (arguments
     (list
      #:import-path "github.com/wagoodman/dive"))
    (native-inputs
     (list go-github-com-docker-distribution
           go-golang-org-x-text
           go-golang-org-x-sys
           go-golang-org-x-net
           go-github-com-stretchr-testify
           go-github-com-spf13-viper
           go-github-com-spf13-pflag
           go-github-com-spf13-jwalterweatherman
           go-github-com-spf13-cobra
           go-github-com-spf13-afero
           go-github-com-sirupsen-logrus
           go-github-com-sergi-go-diff
           go-github-com-phayes-permbits
           go-github-com-pelletier-go-toml
           go-github-com-opencontainers-image-spec
           go-github-com-opencontainers-go-digest
           go-github-com-mitchellh-go-homedir
           go-github-com-mattn-go-isatty
           go-github-com-mattn-go-colorable
           go-github-com-magiconair-properties
           go-github-com-lunixbochs-vtclean
           go-github-com-logrusorgru-aurora
           go-github-com-konsorten-go-windows-terminal-sequences
           go-github-com-gorilla-mux
           go-github-com-google-uuid
           go-github-com-gogo-protobuf
           go-github-com-fatih-color
           go-github-com-dustin-go-humanize
           go-github-com-docker-go-units
           go-github-com-docker-go-connections
           go-github-com-docker-cli
           go-github-com-cespare-xxhash
           go-github-com-awesome-gocui-keybinding
           go-github-com-awesome-gocui-gocui
           go-github-com-microsoft-go-winio
           go-github-com-azure-go-ansiterm))
    (home-page "https://github.com/wagoodman/dive")
    (synopsis "Tool for exploring each layer in a Docker image")
    (description
     "This package provides TUI based application to analyze a Docker image.
@itemize
@item Show Docker image contents broken down by layer
@item Indicate what's changed in each layer
@item Estimate @code{image efficiency}
@item Quick build/analysis cycles
@item CI Integration
@item Multiple Image Sources and Container Engines Supported
@end itemize\n")
    (license license:expat)))

;; 20220515T222856+0100
(define-public go-github-com-opencontainers-image-spec
  (package
    (name "go-github-com-opencontainers-image-spec")
    (version "1.0.2")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/opencontainers/image-spec")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1wcw1z39wjx338406ga86a41f5ird0yc4ab3c70nfhkpkvjjzhkm"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/opencontainers/image-spec"))
    (home-page "https://github.com/opencontainers/image-spec")
    (synopsis "OCI Image Format Specification")
    (description
      "The OCI Image Format project creates and maintains the software shipping
container image format spec (OCI Image Format).")
    (license license:asl2.0)))

;; 20220515T222938+0100
(define-public go-github-com-opencontainers-go-digest
  (package
    (name "go-github-com-opencontainers-go-digest")
    (version "1.0.0")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/opencontainers/go-digest")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0i5acjajvr6hi9zb7gxwifd8w28y884cv7cx36adj8lngj647xbi"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/opencontainers/go-digest"))
    (home-page "https://github.com/opencontainers/go-digest")
    (synopsis "go-digest")
    (description
      "Package digest provides a generalized type to opaquely represent message digests
and their operations within the registry.  The Digest type is designed to serve
as a flexible identifier in a content-addressable system.  More importantly, it
provides tools and wrappers to work with hash.Hash-based digests with little
effort.")
    (license (list license:asl2.0 license:cc-by-sa4.0))))

;; 20220515T223615+0100
(define-public go-github-com-docker-cli
  (package
    (name "go-github-com-docker-cli")
    (version "20.10.16+incompatible")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/docker/cli")
               (commit (go-version->git-ref version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "1fhn0jmmv46rpnvlndx10331qzpp8vp2sqv9k7myavasaa3n6jsa"))))
    (build-system go-build-system)
    (arguments '(#:import-path "github.com/docker/cli"))
    (home-page "https://github.com/docker/cli")
    (synopsis "docker/cli")
    (description
      "This repository is the home of the cli used in the Docker CE and Docker EE
products.")
    (license license:asl2.0)))
