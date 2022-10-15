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

(define-module (ffab packages databases)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages databases)
  #:use-module (gnu packages lisp)
  #:use-module (gnu packages lisp-xyz)
  #:use-module (gnu packages python)
  #:use-module (guix build-system gnu)
  #:use-module (guix build-system python)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages))

;; <2021-01-10 Sun>
;; added-to-upstream: 0c0a2831b0c114dc5645482dcfef7f69e8a8298f
;; CommitDate: Thu Jan 14 10:22:50 2021 +0100
;; (define-public freetds

;; <2020-12-05 Sat>
;; added-to-upstream: 100a4f84fec03bdf31523232f9f6587bb201ea7c
;; CommitDate: Wed Jan 20 10:43:25 2021 +0100
;; (define-public pgloader

(define-public python-fakeredis-0.16.0
  (package
    (inherit python-fakeredis)
    (name "python-fakeredis-0.16.0")
    (version "0.16.0")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "fakeredis" version))
              (sha256
               (base32
                "005gnzj8lffz6hv5ii980gv8ffsiilqijdifyrz7lnms0c1852ms"))))))

(define-public python-redis-2.10.6
  (package
    (inherit python-redis)
    (name "python-redis-2.10.6")
    (version "2.10.6")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "redis" version))
              (sha256
               (base32
                "005gnzj8lffz6hv5ii980gv8ffsiilqijdifyrz7lnms0c1852ms"))))))

;; 20220531T215154+0100
(define-public dragonfly
  (package
    (name "dragonfly")
    (version "0.3.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/dragonflydb/dragonfly")
             (commit (string-append "v" version))))
       (sha256
        (base32 "0bbwnjxndj99mnpg6z6jmfwz4wchdfhakich5pxvqmlqz1pk42gs"))
       (file-name (git-file-name name version))))
    (build-system gnu-build-system)
    (home-page "https://dragonflydb.io/")
    (synopsis "Key-Value in-memory datastore")
    (description
     "Dragonfly is a modern in-memory datastore, fully compatible with Redis and
Memcached APIs. Dragonfly implements novel algorithms and data structures on top
of a multi-threaded, shared-nothing architecture. As a result, Dragonfly reaches
x25 performance compared to Redis and supports millions of QPS on a single
instance.")
    (license license:boost1.0)))
