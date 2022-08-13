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

(define-module (ffab packages golang-web)
  #:use-module (ffab packages protobuf)
  #:use-module (ffab packages golang)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages base)
  #:use-module (gnu packages golang)
  #:use-module ((gnu packages syncthing)
                #:select (go-github-com-kballard-go-shellquote))
  #:use-module (gnu packages check)
  #:use-module (gnu packages vim)
  #:use-module (guix build-system go)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages))

;; 20220730T152336+0100
(define-public go-github-com-gin-gonic-gin
  (package
    (name "go-github-com-gin-gonic-gin")
    (version "1.8.1")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/gin-gonic/gin")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0fbs44q2w1cx891l3i1jxfrvf9v3ar3hlb8vnqlg7nbkch04jkdf"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/gin-gonic/gin"))
    (propagated-inputs (list go-github-com-davecgh-go-spew
                             go-github-com-gin-contrib-sse
                             go-github-com-go-playground-locales
                             go-github-com-go-playground-universal-translator
                             go-github-com-go-playground-validator-v10
                             go-github-com-goccy-go-json
                             go-github-com-json-iterator-go
                             go-github-com-leodido-go-urn
                             go-github-com-mattn-go-isatty
                             go-github-com-modern-go-concurrent
                             go-github-com-modern-go-reflect2
                             go-github-com-pelletier-go-toml-v2
                             go-github-com-pmezard-go-difflib
                             go-github-com-stretchr-testify
                             go-github-com-ugorji-go-codec
                             go-golang-org-x-crypto
                             go-golang-org-x-net
                             go-golang-org-x-sys
                             go-golang-org-x-text
                             go-google-golang-org-protobuf
                             go-gopkg-in-yaml-v2
                             go-gopkg-in-yaml-v3))
    (home-page "https://gin-gonic.com/")
    (synopsis "Golang HTTP web framework")
    (description
     "This package provides Gin Web Framework written in Golang.  It has a list
of higliths comparting to similar @url{https://www.codegangsta.io/, Martini} Web
Framework:

@itemize
@item Fast :: Radix tree based routing, small memory foot print.  No reflection.
Predictable API performance.

@item Middleware support :: An incoming HTTP request can be handled by a chain
of middleware and the final action.  For example: Logger, Authorization, GZIP and
finally post a message in the DB.

@item Crash-free :: Gin can catch a panic occurred during a HTTP request and
recover it.  This way, your server will be always available.  It’s also possible
to report this panic to Sentry for example!

@item JSON validation :: Gin can parse and validate the JSON of a request,
checking, for example, the existence of required values.

@item Routes grouping :: Organize your routes better.  Authorization required vs
non required, different API versions.  In addition, groups can be nested
infinitely without degrading performance.

@item Error management :: Gin provides a convenient way to collect all the
errors occurred during a HTTP request.  Eventually, middleware can write them to
a log file, to a database and send them through the network.

@item Rendering built-in :: Gin provides an easy to use API for JSON, XML and
HTML rendering.
@end itemize
")
    (license license:expat)))

;; 20220731T195956+0100
(define-public go-github-com-gin-contrib-sse
  (package
    (name "go-github-com-gin-contrib-sse")
    (version "0.1.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/gin-contrib/sse")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "072nq91a65n5xvwslqjyvydfd0mfpnvb3vwjyfvmzm1ym96wr1nd"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/gin-contrib/sse"))
    (native-inputs (list go-github-com-stretchr-testify))
    (home-page "https://github.com/gin-contrib/sse")
    (synopsis "Server-Sent Events for Golang")
    (description
     "Server-sent events (SSE) is a technology where a browser receives automatic
updates from a server via HTTP connection.  The Server-Sent Events EventSource
API is @url{http://www.w3.org/TR/2009/WD-eventsource-20091029/,standardized as
part of HTML5[1] by the W3C}.")
    (license license:expat)))
