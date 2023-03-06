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
  #:use-module (gnu packages linux)
  #:use-module (gnu packages xorg)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages gl)
  #:use-module (guix build-system cmake)
  #:use-module (guix build-system asdf)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix gexp)
  #:use-module (guix packages))

;; 20221119T195802+0000
;; (define-public sbcl-virality
;; added-to-upstream 9c2d6ddfbed949d55230cb785d0245f5ef21daa6
;; CommitDate: Sun Nov 20 14:45:00 2022 +0100

;; 20230306T225833+0000
(define-public raylib-ffab
  (package
    (name "raylib-ffab")
    (version "4.2.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/raysan5/raylib/")
                    (commit version)))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "14v5iwxh8grywiyw9agpd2sfpyriq1rwwkd9f2s4iihh0z5j7hk8"))))
    (build-system cmake-build-system)
    (arguments
     (list
      #:tests? #f ;no test
      #:configure-flags
      #~(list "-DBUILD_SHARED_LIBS=ON" )))
    (inputs (list alsa-lib
                  libx11
                  libxrandr
                  libxi
                  libxinerama
                  libxcursor
                  mesa))
    (native-inputs (list pkg-config))
    (synopsis "C library for videogame programming")
    (description
     "raylib is a high-level library for video game programming.  It aims to
  abstract away platform and graphics details, allowing you to focus on
  writing your game.")
    (home-page "https://www.raylib.com/")
    (license license:zlib)))
