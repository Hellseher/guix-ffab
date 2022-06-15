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

(define-module (ffab packages game-development)
  #:use-module (ffab packages lisp-xyz)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages lisp)
  #:use-module (gnu packages lisp-xyz)
  #:use-module (guix build-system asdf)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix packages))

(define-public sbcl-virality
  (let ((commit "96ea9dd5448bd26388bbaeee115e12a2678005e5")
        (revision "2"))
    (package
      (name "sbcl-virality")
      (version (git-version "1.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/bufferswap/ViralityEngine")
               (commit commit)))
         (file-name (git-file-name "virality" version))
         (sha256
          (base32 "1qh3s8p4hnzbf5a6b9syp2hjd3nz083qgwpjmkddb8dl6yvvy1rj"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       (list sbcl-3b-bmfont
             sbcl-babel
             sbcl-cl-cpus
             sbcl-cl-graph ;; not packed
             sbcl-cl-opengl
             sbcl-cl-ppcre
             sbcl-cl-slug
             sbcl-closer-mop
             sbcl-fast-io
             sbcl-global-vars
             sbcl-golden-utils
             sbcl-jsown
             sbcl-lparallel
             sbcl-origin
             sbcl-pngload
             sbcl-printv
             sbcl-queues
             sbcl-sdl2
             sbcl-shadow
             sbcl-split-sequence
             sbcl-static-vectors
             sbcl-umbra
             sbcl-trivial-features))
      (home-page "https://github.com/bufferswap/ViralityEngine")
      (synopsis "Component-based game engine written in Common Lisp")
      (description "")
      (license license:expat))))
