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
                                   (include (string-append out "/include/vcglib"))
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
    (home-page "http://vcglib.net/")
    (synopsis "C++ library to work with triangle meshes")
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

;; 20221030T195655+0000
(define-public ffab-meshlab
  (package
    (name "ffab-meshlab")
    (version "2022.02")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/cnr-isti-vclab/meshlab")
                    (commit (string-append "MeshLab-" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32 "0dkh9qw9z2160s6gjiv0a601kp6hvl66cplvi8rfc892zcykgiwd"))
              (modules '((guix build utils)))
              (snippet
               '(begin
                  ;; Remove bundeled libraries and prebuilt binaries, check if
                  ;; the list is changed in the next release.
                  (for-each (lambda (dir)
                              (delete-file-recursively dir))
                            (list "src/external/OpenCTM-1.0.3"
                                  "src/external/e57"
                                  "src/external/easyexif"
                                  "src/external/glew-2.1.0"
                                  "src/external/levmar-2.3"
                                  "src/external/lib3ds-1.3.0"
                                  "src/external/libigl-2.3.0"
                                  "src/external/muparser_v225"
                                  "src/external/nexus"
                                  "src/external/openkinect"
                                  "src/external/qhull-2020.2"
                                  "src/external/structuresynth-1.5"
                                  "src/external/tinygltf"
                                  "src/external/u3d"
                                  "src/external/xerces"
                                  "src/vcglib"
                                  ;; "resources/linux"   ; Remove this in future release
                                  ;; "resources/windows" ; they are present in master and contains
                                  ;; "resources/macos"   ; prebuilt libraries
                                  )) ))))
    (build-system cmake-build-system)
    (inputs
     (list qtbase-5
           easyexif
           eigen
           glew
           glu
           gmp
           lib3ds
           libfreenect
           mesa
           muparser
           openctm
           vcglib
           qhull))
    (arguments
     (list #:tests? #f                  ; Has no tests
           #:configure-flags
           #~(list (string-append "-DVCGDIR=" #$(this-package-input "vcglib") "/include/vcglib")
                   (string-append "-DCMAKE_MODULE_LINKER_FLAGS=-Wl,-rpath="
                                  #$output "/lib/meshlab")
                   (string-append "-DCMAKE_SHARED_LINKER_FLAGS=-Wl,-rpath="
                                  #$output "/lib/meshlab")
                   (string-append "-DCMAKE_EXE_LINKER_FLAGS=-Wl,-rpath="
                                  #$output "/lib/meshlab"))
           #:phases
           #~(modify-phases %standard-phases
               (add-after 'unpack 'go-to-source-dir
                 (lambda _ (chdir "src")))
               ;; NOTE: (Sharlatan-20221030T164613+0000): Add more substitutions
               ;; to CMake files if building start failing. GLEW and easyexif
               ;; comes as hard dependencies for MashLab missing them
               ;; prevent core built.
               (add-before 'configure 'set-external-libraries
                 (lambda* (#:key inputs #:allow-other-keys)
                   (substitute* "external/easyexif.cmake"
                     ((".*set.EXIF_DIR.*")
                      (string-append
                       "set(EXIF_DIR "
                       (search-input-directory inputs "/include/easyexif")
                       ")"))))))))
    (synopsis "3D triangular mesh processing and editing software")
    (home-page "https://www.meshlab.net/")
    (description "MeshLab is a system for the processing and editing of large,
unstructured, 3D triangular meshes.  It is aimed to help the processing of the
typical, not-so-small unstructured models arising in 3D scanning, providing a
set of tools for editing, cleaning, healing, inspecting, rendering and
converting this kind of meshes.  These tools include MeshLab proper, a
versatile program with a graphical user interface, and @samp{meshlabserver}, a
program that can perform mesh processing tasks in batch mode, without a GUI.")
    (license license:gpl3+)))
