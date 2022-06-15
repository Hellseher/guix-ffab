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

(define-module (ffab packages gradle)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix build-system ant)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages))

(define-public java-gradle-bootstrap
  (let ((commit "e09125febb2abd4d5eb70714ff68cdc76ee7dc45"))
    (package
      (name "java-gradle-bootstrap")
      (version "0.0.0")
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/gradle/gradle")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0m8wmwi2cryjw2g272w213cw4zb02v61j2x9cfhd3gfvnmi9909x"))))
      (build-system ant-build-system)
      (home-page "https://gradle.org/")
      (synopsis "Build automation tool written")
      (description "")
      (license license:asl2.0))))
