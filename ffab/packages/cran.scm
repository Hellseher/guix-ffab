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

(define-module (ffab packages cran)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix build-system python)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (gnu packages haskell-xyz)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages protobuf)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages statistics)
  #:use-module (guix build-system gnu)
  #:use-module (guix build-system r)
  #:use-module (guix packages))

;; <2021-05-26 Wed>
;; added-to-downstream-guix 9cfa6c3c587766a310252f4c1271503d819bdd8a
;; CommitDate: Thu Jul 22 11:37:25 2021 +0200
;; (define-public r-opencpu

;; <2021-05-26 Wed>
;; added-to-downstream-guix 2b6dd1bde5bac375d61da8ead1efdf9a164aa787
;; CommitDate: Thu Jul 22 11:37:25 2021 +0200
;; (define-public r-protolite

;; <2021-05-26 Wed>
;; added-to-downstream-guix c5baff179687991c12a0beb514bc6c156f543018
;; CommitDate: Thu Jul 22 11:37:21 2021 +0200
;; (define-public r-webutils
