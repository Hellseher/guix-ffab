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

(define-module (ffab packages graphics)
  #:use-module (gnu packages)
  #:use-module (gnu packages graphics)
  #:use-module (guix git-download)
  #:use-module (guix packages))

(define-public assimp-5.0
  (package
    (inherit assimp)
    (name "assimp")
    (version "5.0.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/assimp/assimp")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1w2484lg823bql7lpfq84vnsfsnag5v65qrbphslj866z9ia68l7"))))))

;;; graphics.scm ends here
