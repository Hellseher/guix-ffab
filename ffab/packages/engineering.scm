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

(define-module (ffab packages engineering)
  #:use-module (ffab packages photo)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix build utils)
  #:use-module (guix build-system cmake)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages)
  #:use-module (gnu packages algebra)
  #:use-module (gnu packages engineering)
  #:use-module (gnu packages gl)
  #:use-module (gnu packages maths)
  #:use-module (gnu packages multiprecision)
  #:use-module (gnu packages openkinect)
  #:use-module (gnu packages qt))

;; 20221029T233745+0100
(define-public vcglib
  (package
    (name "vcglib")
    (version "2022.02")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/cnr-isti-vclab/vcglib")
                    (commit version)))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1w9r22wg7452x4xald4frsq4vc03vbxf3qq3d9a2zl04b1bdna2w"))))
    (build-system cmake-build-system)
    (arguments
     (list #:tests? #f ;Has no tests
           #:configure-flags
           ;; Make sure we still can build examples which shows nothing major
           ;; broken.
           #~(list (string-append "-DVCG_BUILD_EXAMPLES=ON")
                   (string-append "-DEIGEN3_INCLUDE_DIR="
                                  #$(this-package-input "eigen")
                                  "/include/eigen3"))
           #:phases #~(modify-phases %standard-phases
                        (replace 'install
                          (lambda* (#:key outputs #:allow-other-keys)
                            (let* ((out (assoc-ref outputs "out"))
                                   (bin (string-append out "/bin"))
                                   (include (string-append out
                                                           "/include/vcglib"))
                                   (wrap (string-append include "/wrap/"))
                                   (vcg (string-append include "/vcg")))
                              (for-each (lambda (dir)
                                          (mkdir-p dir))
                                        (list bin include wrap vcg))
                              (install-file "apps/metro/metro" bin)
                              (install-file "../source/CMakeLists.txt" include)
                              ;; NOTE: (Sharlatan-20221030T201141+0000): Check
                              ;; for bundles here, MeshLab references to the
                              ;; content of wrap dirrectory.
                              (copy-recursively "../source/wrap/" wrap)
                              (copy-recursively "../source/vcg/" vcg)))))))
    (propagated-inputs (list eigen))
    (synopsis
     "C++ library for manipulation, processing, cleaning, and simplifying triangle meshes")
    (home-page "http://vcglib.net/")
    (description
     "This package provides @acronym{VCGlib, Visualization and Computer Graphics
Library} The VCG library is tailored to mostly manage triangular meshes: offers
many capabilities for processing meshes, such as:

@itemize

@item high quality quadric-error edge-collapse based simplfication
@item efficient spatial query structures (uniform grids, hashed grids, kdtree,
etc)
@item advanced smoothing and fairing algorithms
@item computation of curvature
@item optimization of texture coordinates
@item Hausdorff distance computation
@item geodesic paths
@item mesh repairing capabilities
@item isosurface extraction and advancing front meshing algorithms
@item Poisson Disk sampling and other tools to sample point distributions over
meshes
@item subdivision surfaces
@end itemize")
    (license license:gpl3+)))
