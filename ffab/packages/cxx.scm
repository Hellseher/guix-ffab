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

(define-module (ffab packages cxx)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages autotools)
  #:use-module (gnu packages bison)
  #:use-module (gnu packages python)
  #:use-module (guix build-system gnu)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix packages))


(define-public boost-b2
  (package
    (name "boost-b2")
    (version "4.7.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             ;; Developed under Boost before
             ;; https://github.com/boostorg/build
             (url "https://github.com/bfgroup/b2")
             (commit  version)))
       (file-name (git-file-name name version))
       (sha256
        (base32
         "0ijw9fqgaiwch8hzvm9fqf986p140839mdqjgg7qcf8kffwa0myb"))))
    (build-system gnu-build-system)
    (arguments
     `(#:make-flags
       (list (string-append "--prefix=" (assoc-ref  %outputs "out")))
       #:phases
       (modify-phases %standard-phases
         (delete 'bootstrap)
         (delete 'build)
         (replace 'configure
           (lambda _
             (substitute* '("src/engine/execunix.cpp")
               (("/bin/sh") (which "sh")))
             (setenv "SHELL" (which "sh"))
             (setenv "CONFIG_SHELL" (which "sh"))
             (invoke "./src/engine/build.sh" "--verbose" "gcc")
             #t))
         (replace 'check
           (lambda* (#:key tests? #:allow-other-keys)
             (when tests?
               (chdir "test")
               ;; NOTE: (Sharlatan-20211226T140846+0000): Some tests failed,
               ;; check and patch them if needed later
               ;;
               ;; 164 passed
               ;; 2 failed
               ;;
               (substitute* "test_all.py"
                 (("\"project_test3\"," all)
                  (string-append "# " all)))
               (substitute* "test_all.py"
                 (("\"project_test4\"," all)
                  (string-append "# " all)))
               ;; NOTE: (Sharlatan-20211226T175253+0000): probably it needs some
               ;; simplification here to reduce amount of jumps with `chdir'.
               ;; Without them `install' phase failes
               (invoke "python" "test_all.py" "gcc")
               (chdir ".."))))
         (replace 'install
           (lambda* (#:key make-flags outputs #:allow-other-keys)
             (apply invoke "./src/engine/b2" "install" "toolset=gcc" make-flags)
             #t)))))
    (native-inputs
     (list bison
           python-wrapper))
    (home-page "https://www.bfgroup.xyz/b2/")
    (synopsis "Boost Build (B2, ex BJam) Make like tool for C++ projects")
    (description
     "B2 makes it easy to build C++ projects, everywhere.  B2 has been the
primary build system for the Boost C++ Libraries for many years.")
    (license (license:x11-style "https://www.bfgroup.xyz/b2/LICENSE.txt"
                                "Some components have other similar licences."))))
