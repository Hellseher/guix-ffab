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

(define-module (ffab packages image)
  #:use-module (guix packages)
  #:use-module (guix build-system gnu)
  #:use-module (guix build-system meson)
  #:use-module (guix git-download)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages gnome)
  #:use-module (gnu packages ninja)
  #:use-module (gnu packages glib)
  #:use-module (gnu packages man)
  #:use-module (gnu packages build-tools)
  #:use-module ((guix licenses) #:prefix license:))

;; 20210212T121631+0000
;; added-to-downstream-guix bc7879cca6196905b3f1e2c9db6c674ef0b7f8ca
;; CommitDate: Sat Feb 13 10:38:13 2021 +0800
;; (define-public swappy
