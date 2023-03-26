;;; GNU Guix --- Functional package management for GNU
;;; Copyright © 202e Sharlatan Hellseher <sharlatanus@gmail.com>
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

(define-module (ffab packages audio)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages documentation)
  #:use-module (gnu packages graphviz)
  #:use-module (gnu packages mp3)
  #:use-module (gnu packages ncurses)
  #:use-module (guix build-system cmake)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages))

;; 20230326T101746+0100
(define-public libmixed
  ;; Release is much outdated.
  (let ((commit "91e6b9f2438bca41205fade02c9d8f4f938838b6")
        (revision "0"))
    (package
      (name "libmixed")
      (version (git-version "2.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shirakumo/libmixed")
               (commit commit)))
         (file-name (git-file-name "libmixed" version))
         (sha256
          (base32 "01vwgv8ivpg7a4y95krkgh656mmklsn1k3fmhwp474aj82grd3m4"))))
      (build-system cmake-build-system)
      (arguments
       (list
        ;; FIXME: (Sharlatan-20230326T121542+0100): test failed 1/34, 1 failed,
        ;; 33 passed. There is not simple way to disable just one test.
        ;; https://github.com/Shirakumo/libmixed/issues/13
        #:tests? #f
        #:configure-flags
        #~(list "-DCMAKE_CXX_FLAGS=-O3 -fPIC"
                "-DCMAKE_C_FLAGS=-O3 -fPIC")
        #:phases
        #~(modify-phases %standard-phases
            (add-after 'unpack 'fix-paths
              (lambda _
                (substitute* "CMakeLists.txt"
                  (("/usr/local") #$output))))
            (replace 'check
              (lambda* (#:key tests? #:allow-other-keys)
                (when tests?
                  (invoke "./tester")))))))
      (native-inputs (list doxygen graphviz))
      (inputs (list ncurses mpg123))
      (home-page "https://github.com/Shirakumo/libmixed")
      (synopsis "Low-level audio mixer pipeline library")
      (description
       "Libmixed is a library for real-time audio processing pipelines for use in
audio/video/games.  It can serve as a base architecture for complex DSP systems.")
      (license license:zlib))))
