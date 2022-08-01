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

(define-module (ffab packages protobuf)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages base)
  #:use-module (gnu packages golang)
  #:use-module ((gnu packages syncthing) #:select (go-github-com-kballard-go-shellquote))
  #:use-module (gnu packages check)
  #:use-module (gnu packages vim)
  #:use-module (guix build-system go)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages))

;; https://issues.guix.gnu.org/54560#1
(define-public go-google-golang-org-protobuf
  (package
    (name "go-google-golang-org-protobuf")
    (version "1.28.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/protocolbuffers/protobuf-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0qy9wy36wr1vj8lhmzi26hfc14y3rfbsi0p4vkbxhiwb3iy3na7c"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "google.golang.org/protobuf"
       #:phases
       (let ((glob-path "google.golang.org/protobuf/..."))
         (modify-phases %standard-phases
           (replace 'build
             (lambda args
               (apply (assoc-ref %standard-phases
                                 'build)
                      `(,@args #:import-path
                               ,glob-path))))
           (replace 'check
             (lambda args
               (apply (assoc-ref %standard-phases
                                 'check)
                      `(,@args #:import-path
                               ,glob-path))))))))
    (native-inputs (list go-github-com-google-go-cmp-cmp))
    (synopsis "Go support for Google's protocol buffers")
    (description
     "Go implementation for protocol buffers, which is a
language-neutral, platform-neutral, extensible mechanism for serializing
structured data.  The protocol buffer language is a language for
specifying the schema for structured data.  This schema is compiled into
language specific bindings.")
    (home-page "https://github.com/protocolbuffers/protobuf-go")
    (license license:bsd-3)))
