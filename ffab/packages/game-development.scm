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
  #:use-module (ffab packages lisp-check)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages lisp)
  #:use-module (gnu packages lisp-xyz)
  #:use-module (gnu packages lisp-check)
  #:use-module (guix build-system asdf)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix packages))

;; 20221119T195802+0000
(define-public sbcl-virality
  (package
    (name "sbcl-virality")
    (version "0.3.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/bufferswap/ViralityEngine")
             (commit (string-append "v" version))))
       (file-name (git-file-name "virality" version))
       (sha256
        (base32 "0hvjcvyd628jh4if6swk1wrfb9qdlnpk9ax1y3jarr8ms7ghfcdb"))))
    (build-system asdf-build-system/sbcl)
    (arguments
     `(#:asd-systems '("virality"
                       "vorigin"
                       "vorigin.test"
                       "vshadow"
                       "vumbra"
                       "vutils")))
    (inputs
     (list sbcl-3b-bmfont
           sbcl-babel
           sbcl-cl-cpus
           sbcl-cl-graph
           sbcl-cl-opengl
           sbcl-cl-ppcre
           sbcl-cl-slug
           sbcl-closer-mop
           sbcl-fast-io
           sbcl-global-vars
           sbcl-glsl-packing
           sbcl-jsown
           sbcl-lparallel
           sbcl-pngload
           sbcl-printv
           sbcl-queues
           sbcl-sdl2
           sbcl-serapeum
           sbcl-split-sequence
           sbcl-static-vectors
           sbcl-trivial-features
           sbcl-varjo))
    (native-inputs
     (list sbcl-alexandria sbcl-confidence))
    (home-page "https://github.com/bufferswap/ViralityEngine")
    (synopsis "Component-based game engine written in Common Lisp")
    (description
     "Virality Engine provides a system and workflow that helps describe the
elements needed to write 2D or 3D games.  It was designed with several domain
specific languages that make it easier to describe, manipulate, and use assets
commonly found in game making.  Such assets include (but are not limited to)
textures, materials, shader programs, and scene trees of actors that are
available for instantiation.  Virality Engine also knows how to accept input
from keyboards and most joysticks and gamepads.

The component system is a hybrid model between an ECS and an object model.  The
components are defined similar to CLOS defclass, and regular generic methods
can be used with them.  Components are added to Actors which represent game
concepts like players, scenery, effects, etc.  We define a component protocol
invoked by Virality Engine to move your components to the next state and
render them each frame.")
    (license license:expat)))

(define-public cl-virality
  (sbcl-package->cl-source-package sbcl-virality))
