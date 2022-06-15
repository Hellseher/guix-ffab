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

(define-module (ffab packages web)
  #:use-module (guix packages)
  #:use-module (guix build-system gnu)
  #:use-module (gnu packages lua)
  #:use-module (gnu packages tls)
  #:use-module (guix git-download)
  #:use-module ((guix licenses) #:prefix license:))

;; 20210415T225501+0100
(define-public wrk
  (package
    (name "wrk")
    (version "4.1.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/wg/wrk")
                    (commit version)))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0dblb3qdg8mbgb8iiks0g420pza13npbr33b2xkc5dgv7kcwmvqj"))))
    (build-system gnu-build-system)
    ;; NOTE: (Sharlatan-20210120T143046+0000):
    (arguments
     `(#:phases
       (modify-phases %standard-phases
         (delete 'configure))))
    (native-inputs
     `(("luajit" ,luajit)
       ("openssl" ,openssl)))
    (home-page "https://github.com/wg/wrk")
    (synopsis "Modern HTTP benchmarking tool")
    (description
     "wrk is a modern HTTP benchmarking tool capable of generating
significant load when run on a single multi-core CPU.  It combines a
multithreaded design with scalable event notification systems such as epoll and
kqueue.")
    (license license:asl2.0)))
