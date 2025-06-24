;;; GNU Guix --- Functional package management for GNU
;;; Copyright © 2025 Sharlatan Hellseher <sharlatanus@gmail.com>
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

(define-module (ffab packages hexedit)
  #:use-module (ffab packages golang-xyz)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix build-system go)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages)
  #:use-module (gnu packages golang)
  #:use-module (gnu packages golang-build)
  #:use-module (gnu packages golang-compression)
  #:use-module (gnu packages golang-xyz))

(define-public fq
  (package
    (name "fq")
    (version "0.15.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/wader/fq")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1c90z44z5i62xzx6h4xwk8lzkx0gb1cgs25rb5rrcmc7diwm697z"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go go-1.24
      #:import-path "github.com/wader/fq"))
    (native-inputs
     (list go-github-com-burntsushi-toml
           go-github-com-creasty-defaults
           go-github-com-ergochat-readline
           go-github-com-golang-snappy
           go-github-com-gomarkdown-markdown
           go-github-com-gopacket-gopacket
           go-github-com-mitchellh-copystructure
           go-github-com-mitchellh-mapstructure
           go-github-com-wader-gojq
           go-golang-org-x-crypto
           go-golang-org-x-net
           go-golang-org-x-term
           go-golang-org-x-text
           go-gopkg-in-yaml-v3))
    (home-page "https://github.com/wader/fq")
    (synopsis "jq for binary formats")
    (description
     "This package provides tool, language and decoders for working with binary
data,aiming to be jq, hexdump, dd and gdb for files combined into one.")
    (license license:expat)))
