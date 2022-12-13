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

(define-module (ffab packages julia-xyz)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages check)
  #:use-module (gnu packages julia-xyz)
  #:use-module (guix build-system julia)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages))

;; 20221210T223056+0000
(define-public julia-images
  (package
    (name "julia-images")
    (version "0.25.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/JuliaImages/Images.jl")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "15zjww6w70gkysxfsw34mh4lrmm577kil4a69f43p909f3yi3d7a"))))
    (build-system julia-build-system)
    (propagated-inputs
     (list julia-fileio
           julia-graphics
           julia-imageaxes
           julia-imagebase
           ;julia-imagecontrastadjustment
           julia-imagecore
           ;julia-imagedistances
           ;julia-imagefiltering
           ;julia-imageio
           julia-imagemagick
           julia-imagemetadata
           ;julia-imagemorphology
           ;julia-imagequalityindexes
           ;julia-imagesegmentation
           julia-imageshow
           julia-imagetransformations
           julia-indirectarrays
           ;julia-integralarrays
           julia-reexport
           julia-staticarrays
           julia-statsbase
           julia-suppressor
           #;julia-tilediteration))
    (home-page "https://github.com/JuliaImages/Images.jl")
    (synopsis "Image library for Julia")
    (description "Images.jl is increasingly becoming an \"umbrella package\" that exports a set
of packages which are useful for common image processing tasks. Most of these
packages are hosted at JuliaImages, JuliaArrays, JuliaIO, JuliaGraphics, and
JuliaMath.")
    (license license:expat)))

;; 20221213T210829+0000
(define-public julia-imagecontrastadjustment
  (package
    (name "julia-imagecontrastadjustment")
    (version "0.3.10")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/JuliaImages/ImageContrastAdjustment.jl")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "15zjww6w70gkysxfsw34mh4lrmm577kil4a69f43p909f3yi3d7a"))))
    (build-system julia-build-system)
    (propagated-inputs
     (list julia-imagecore julia-imagetransformations))
    (home-page "https://github.com/JuliaImages/ImageContrastAdjustment.jl")
    (synopsis "Julia package for enhancing and manipulating image contrast")
    (description "Julia package for enhancing and manipulating image contrast.")
    (license license:expat)))

;; julia-xyz.scm ends here
