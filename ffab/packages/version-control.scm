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
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages base)
  #:use-module (gnu packages check)
  #:use-module (gnu packages golang)
  #:use-module (gnu packages golang-build)
  #:use-module (gnu packages golang-check)
  #:use-module (gnu packages golang-xyz)
  #:use-module (gnu packages syncthing)
  #:use-module (gnu packages vim)
  #:use-module (guix build-system go)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages))


;;+begin_github.com/cli

;; 20220730T151450+0100
(define github-cli
  (package
    (name "github-cli")
    (version "2.52.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/cli/cli")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "19maavw95iwviwg314k2z0736n3cnwbsnv0f4yfc0cfys8mp985x"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go go-1.21
      #:install-source? #f
      #:import-path "github.com/cli/cli/v2"))
    (native-inputs
     (list go-github-com-alecaivazis-survey-v2
           go-github-com-makenowjust-heredoc
           go-github-com-briandowns-spinner
           go-github-com-cenkalti-backoff-v4
           go-github-com-charmbracelet-glamour
           go-github-com-charmbracelet-lipgloss
           go-github-com-cli-go-gh-v2
           go-github-com-cli-oauth
           go-github-com-cli-safeexec
           go-github-com-cpuguy83-go-md2man-v2
           go-github-com-creack-pty
           go-github-com-distribution-reference
           go-github-com-gabriel-vasile-mimetype
           go-github-com-gdamore-tcell-v2
           go-github-com-google-go-cmp
           go-github-com-google-go-containerregistry
           go-github-com-google-shlex
           go-github-com-gorilla-websocket
           go-github-com-hashicorp-go-multierror
           go-github-com-hashicorp-go-version
           go-github-com-henvic-httpretty
           go-github-com-in-toto-in-toto-golang
           go-github-com-joho-godotenv
           go-github-com-kballard-go-shellquote
           go-github-com-mattn-go-colorable
           go-github-com-mattn-go-isatty
           go-github-com-mgutz-ansi
           go-github-com-microsoft-dev-tunnels
           go-github-com-muhammadmuzzammil1998-jsonc
           go-github-com-opentracing-opentracing-go
           go-github-com-rivo-tview
           go-github-com-shurcool-githubv4
           go-github-com-sigstore-protobuf-specs
           go-github-com-sigstore-sigstore-go
           go-github-com-spf13-cobra
           go-github-com-spf13-pflag
           go-github-com-stretchr-testify
           go-github-com-zalando-go-keyring
           go-golang-org-x-crypto
           go-golang-org-x-sync
           go-golang-org-x-term
           go-golang-org-x-text
           go-google-golang-org-grpc
           go-google-golang-org-protobuf
           go-gopkg-in-h2non-gock-v1
           go-gopkg-in-yaml-v3))
    (home-page "https://cli.github.com/")
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
(define lazygit
  (package
    (name "lazygit")
    (version "0.42.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/jesseduffield/lazygit")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0scwm37hvgdf6k0bdhss7iz1dr224dgmh7yhkk9j8qwc5gw0p563"))
       (modules '((guix build utils)))
       (snippet '(for-each delete-file-recursively
                  ;; TODO: unbundle the rest as well
                  ;; "vendor/github.com/adrg/xdg"
                  ;; "vendor/github.com/gookit/color"
                  ;; "vendor/github.com/jesseduffield/generics"
                  ;; "vendor/github.com/jesseduffield/lazycore"
                  ;; "vendor/github.com/karimkhaleel/jsonschema"
                  ;; "vendor/github.com/mattn/go-runewidth"
                  ;; "vendor/github.com/mitchellh/go-ps"
                  ;; "vendor/github.com/samber/lo"
                  ;; "vendor/gopkg.in/ozeidan/fuzzy-patricia.v3"
                  ;; "vendor/github.com/stefanhaller/git-todo-parser"
                  (list "vendor/github.com/atotto/clipboard"
                        "vendor/github.com/aybabtme/humanlog"
                        "vendor/github.com/cloudfoundry/jibber_jabber"
                        "vendor/github.com/creack/pty"
                        "vendor/github.com/gdamore/tcell/v2"
                        "vendor/github.com/go-errors/errors"
                        "vendor/github.com/imdario/mergo"
                        "vendor/github.com/integrii/flaggy"
                        "vendor/github.com/jesseduffield/go-git/v5"
                        "vendor/github.com/jesseduffield/gocui"
                        "vendor/github.com/jesseduffield/kill"
                        "vendor/github.com/jesseduffield/minimal/gitignore"
                        "vendor/github.com/kardianos/osext"
                        "vendor/github.com/kyokomi/emoji/v2"
                        "vendor/github.com/lucasb-eyer/go-colorful"
                        "vendor/github.com/mgutz/str"
                        "vendor/github.com/sahilm/fuzzy"
                        "vendor/github.com/sanity-io/litter"
                        "vendor/github.com/sasha-s/go-deadlock"
                        "vendor/github.com/sirupsen/logrus"
                        "vendor/github.com/spf13/afero"
                        "vendor/github.com/spkg/bom"
                        "vendor/github.com/stretchr/testify"
                        "vendor/github.com/xo/terminfo"
                        "vendor/golang.org/x/exp"
                        "vendor/gopkg.in/yaml.v3")))))
    (build-system go-build-system)
    (arguments
     (list
      #:go go-1.21
      #:install-source? #f
      #:import-path "github.com/jesseduffield/lazygit"))
    (native-inputs
     (list go-github-com-atotto-clipboard
           go-github-com-aybabtme-humanlog
           go-github-com-cloudfoundry-jibber-jabber
           go-github-com-creack-pty
           go-github-com-gdamore-tcell-v2
           go-github-com-go-errors-errors
           go-github-com-imdario-mergo
           go-github-com-integrii-flaggy
           go-github-com-jesseduffield-go-git-v5
           go-github-com-jesseduffield-gocui
           go-github-com-jesseduffield-kill
           go-github-com-jesseduffield-minimal-gitignore
           go-github-com-kardianos-osext
           go-github-com-kyokomi-emoji-v2
           go-github-com-lucasb-eyer-go-colorful
           go-github-com-mgutz-str
           go-github-com-sahilm-fuzzy
           go-github-com-sanity-io-litter
           go-github-com-sasha-s-go-deadlock
           go-github-com-sirupsen-logrus
           go-github-com-spf13-afero
           go-github-com-spkg-bom
           go-github-com-stretchr-testify
           go-github-com-xo-terminfo
           go-golang-org-x-exp
           go-gopkg-in-yaml-v3))
    (home-page "https://github.com/jesseduffield/lazygit")
    (synopsis "Terminal UI for git commands")
    (description
     "Maintenance of this project is made possible by all the
@@url{https://github.com/jesseduffield/lazygit/graphs/contributors,contributors}
and @@url{https://github.com/sponsors/jesseduffield,sponsors}.  If you'd like to
sponsor this project and have your avatar or company logo appear below
@@url{https://github.com/sponsors/jesseduffield,click here}. 💙")
    (license license:expat)))
