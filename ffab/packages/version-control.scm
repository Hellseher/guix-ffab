;;; GNU Guix --- Functional package management for GNU
;;; Copyright © 2022 Sharlatan Hellseher <sharlatanus@gmail.com>
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

(define-module (ffab packages version-control)
  #:use-module (ffab packages golang)
  #:use-module (ffab packages protobuf)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages base)
  #:use-module (gnu packages golang)
  #:use-module (gnu packages check)
  #:use-module (gnu packages vim)
  #:use-module (guix build-system go)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages))


;;+begin_github.com/cli

;; 20220730T151450+0100
(define-public github-cli
  (package
    (name "github-cli")
    (version "2.3.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/cli/cli")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0qf19rkckbfwcsk9rkfnbrzrksb6r50p7gda25lbw86n2c3k18wp"))))
    (build-system go-build-system)
    ;; (arguments
    ;; '(#:unpack-path "github.com/cli/cli/v2"
    ;; #:import-path "github.com/cli/cli/v2"))
    (native-inputs (list go-github-com-alecaivazis-survey-v2
                         go-github-com-briandowns-spinner
                         go-github-com-charmbracelet-glamour
                         go-github-com-cli-browser
                         go-github-com-cli-oauth
                         go-github-com-cli-safeexec
                         go-github-com-cli-shurcool-graphql
                         go-github-com-cpuguy83-go-md2man-v2
                         go-github-com-creack-pty
                         go-github-com-gabriel-vasile-mimetype
                         go-github-com-google-go-cmp-cmp
                         go-github-com-google-shlex
                         go-github-com-hashicorp-go-version
                         go-github-com-henvic-httpretty
                         go-github-com-itchyny-gojq
                         go-github-com-kballard-go-shellquote
                         go-github-com-makenowjust-heredoc
                         go-github-com-mattn-go-colorable
                         go-github-com-mattn-go-isatty
                         go-github-com-mattn-go-runewidth
                         go-github-com-mgutz-ansi
                         go-github-com-mitchellh-go-homedir
                         go-github-com-muesli-termenv
                         go-github-com-rivo-uniseg
                         go-github-com-shurcool-githubv4
                         go-github-com-spf13-cobra
                         go-github-com-spf13-pflag
                         go-github-com-stretchr-objx
                         go-github-com-stretchr-testify
                         go-golang-org-x-crypto
                         go-golang-org-x-sync
                         go-golang-org-x-sys
                         go-golang-org-x-term
                         go-gopkg-in-yaml-v3))
    (home-page "https://github.com/cli/cli")
    (synopsis "GitHub CLI")
    (description
     "@code{gh} is GitHub on the command line. It brings pull requests, issues,
and other GitHub concepts to the terminal next to where you are already working
with @code{git} and your code.")
    (license license:expat)))

;;+begin_github.com/jesseduffield
;;
;; Some packages are introduced in:
;; - github.com/cli/cli: https://issues.guix.gnu.org/47539

;; 20211220T202352+0000
(define-public lazygit
  (package
    (name "lazygit")
    (version "0.34") ;0.35+ require Golang 1.18+
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/jesseduffield/lazygit")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0bg6ycjypmg18s30chww20wk5pxi28gzbq0map0vvlpmsf0dnxh1"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/jesseduffield/lazygit"))
    (native-inputs (list go-github-com-atotto-clipboard
                         go-github-com-aybabtme-humanlog
                         go-github-com-cli-safeexec
                         go-github-com-cloudfoundry-jibber-jabber
                         go-github-com-creack-pty
                         go-github-com-fsnotify-fsnotify
                         go-github-com-go-errors-errors
                         go-github-com-gookit-color
                         go-github-com-imdario-mergo
                         go-github-com-integrii-flaggy
                         go-github-com-jesseduffield-go-git-v5
                         go-github-com-jesseduffield-gocui
                         go-github-com-jesseduffield-minimal-gitignore
                         go-github-com-jesseduffield-yaml
                         go-github-com-kardianos-osext
                         go-github-com-kyokomi-emoji-v2
                         go-github-com-lucasb-eyer-go-colorful
                         go-github-com-mattn-go-runewidth
                         go-github-com-mgutz-str
                         go-github-com-openpeedeep-xdg
                         go-github-com-pmezard-go-difflib
                         go-github-com-sahilm-fuzzy
                         go-github-com-sanity-io-litter
                         go-github-com-sirupsen-logrus
                         go-github-com-spkg-bom
                         go-github-com-stretchr-testify
                         go-github-com-xo-terminfo
                         go-gopkg-in-ozeidan-fuzzy-patricia-v3))
    (home-page "https://github.com/jesseduffield/lazygit")
    (synopsis "Simple terminal UI for git commands")
    (description
     "This package provides a simple terminal UI for git commands, written in Go with
the @url{https://github.com/jroimartin/gocui,gocui} library.")
    (license license:expat)))

;; 20220803T200717+0100
(define-public hut
  (package
    (name "hut")
    (version "0.2.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://git.sr.ht/~emersion/hut")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0ybngrwwmkm00dlkdhvkfcvcjhp5xzs8fh90zqr0h12ssqx9pll3"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "git.sr.ht/~emersion/hut"))
    (propagated-inputs (list go-git-sr-ht-emersion-go-scfg
                             go-git-sr-ht-emersion-gqlclient
                             go-github-com-google-shlex
                             go-github-com-juju-ansiterm
                             go-github-com-spf13-cobra-1.5
                             go-golang-org-x-oauth2
                             go-golang-org-x-term))
    (home-page "https://git.sr.ht/~emersion/hut")
    (synopsis #f)
    (description "This package provides a CLI tool for
@url{https://sr.ht/~sircmpwn/sourcehut/,sr.ht}.")
    (license license:agpl3)))
