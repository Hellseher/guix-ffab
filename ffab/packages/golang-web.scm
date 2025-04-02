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
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages base)
  #:use-module (gnu packages check)
  #:use-module (gnu packages golang)
  #:use-module (gnu packages golang-build)
  #:use-module (gnu packages golang-check)
  #:use-module (gnu packages golang-web)
  #:use-module (gnu packages golang-xyz)
  #:use-module (gnu packages vim)
  #:use-module (guix build-system go)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages))

;; 20220730T152336+0100
;; (define-public go-github-com-gin-gonic-gin
;; added-to-downstream-guix 60c73d0d28b2f19445ba17ca4c7d68108217f9cb
;; CommitDate: Tue Jan 21 23:42:24 2025 +0000

;; 20220731T195956+0100
;; (define-public go-github-com-gin-contrib-sse
;; added-to-downstream-guix 5bedf80c98b43594ced2a39a721d265e549cf2df
;; CommitDate: Tue Jan 21 23:42:23 2025 +0000
