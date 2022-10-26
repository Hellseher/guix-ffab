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

(define-module (ffab packages photo)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix build-system cmake)
  #:use-module (guix git-download)
  #:use-module (guix packages))

;; 20221021T003307+0100
(define-public librtprocess
  (package
    (name "librtprocess")
    (version "0.12.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/CarVac/librtprocess")
                    (commit version)))
              (sha256
               (base32
                "0v0zwbdbc1fn7iy6wi0m6zgb86qdx1ijnv548d0ydbr8cm4klnpz"))
              (file-name (git-file-name name version))))
    (build-system cmake-build-system)
    (arguments
     ;; No tests
     (list #:tests? #f))
    (home-page "https://github.com/CarVac/librtprocess")
    (synopsis "Highly optimized library for processing RAW images")
    (description
     "This package provides RawTherapee's highly optimized RAW processing routines.")
    (license license:gpl3)))
