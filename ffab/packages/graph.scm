;;; GNU Guix --- Functional package management for GNU
;;; Copyright © 2023 Sharlatan Hellseher <sharlatanus@gmail.com>
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

(define-module (ffab packages graph)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages graph)
  #:use-module (gnu packages)
  #:use-module (guix git-download)
  #:use-module (guix packages))

;; 20230308T213240+0000
(define-public python-plotly-ffab
  (package
    (inherit python-plotly)
    (name "python-plotly-ffab")
    (version "5.14.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/plotly/plotly.py")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "12iy5cswn5c0590fvl87nr6vfyhvbxymrldh4c7dfm2gn6h8z8w0"))))))
