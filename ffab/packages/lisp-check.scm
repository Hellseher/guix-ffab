;;; GNU Guix --- Functional package management for GNU
;;; Copyright © 2021-2023 Sharlatan Hellseher <sharlatanus@gmail.com>
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

(define-module (ffab packages lisp-check)
  #:use-module (ffab packages lisp-xyz)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages lisp)
  #:use-module (gnu packages lisp-xyz)
  #:use-module (gnu packages lisp-check)
  #:use-module (guix build lisp-utils)
  #:use-module (guix build-system asdf)
  #:use-module (guix git-download)
  #:use-module (guix packages))

;; 20210604T194236+0100
;; added-to-upstream: 8a40a964e01ba07bf0c6ecdd90c5d064a697f9d6
;; CommitDate: Thu Jun 24 14:22:09 2021 +0200
;; (define-public sbcl-nst

;; 20211107T194006+0000
;; added-to-upstream: 07a68587b0e00a7b7c231d1360bbc5fb47fc51bf
;; CommitDate: Mon Nov 8 09:25:25 2021 +0100
;; (define-public sbcl-kaputt

;; 20220709T234615+0100
;; (define-public sbcl-cacau
;; 6ffe15bda7ea0f9dd3858e8e36883a22e726f106
;; CommitDate: Wed Nov 23 09:53:11 2022 +0000

;; 20220709T233237+0100
;; (define-public sbcl-assertion-error
;; added-to-upastream dc95215dc0178b85d1c218494aa8ac7248ab8f0b
;; CommitDate: Wed Nov 23 09:53:11 2022 +0000

;; 20220709T233521+0100
;; (define-public sbcl-assert-p
;; added-to-upstream f39a18e7d43fc7bdf18b135d44bae2159e1526ac
;; CommitDate: Wed Nov 23 09:53:11 2022 +0000

;; 20221122T215422+0000
;; (define-public sbcl-simplet
;; added-to-upstream 029234bdad83195c7facad5af05d65cda7772c25
;; CommitDate: Wed Nov 23 09:53:10 2022 +0000

;; 20221110T225101+0000
;; (define-public sbcl-confidence
;; added-to-upstream bad546939f3668610c173f931d905176e26c59c4
;; CommitDate: Wed Mar 22 10:35:48 2023 +0100
