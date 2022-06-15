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

(define-module (ffab packages lisp-check)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages lisp)
  #:use-module (gnu packages lisp-xyz)
  #:use-module (gnu packages lisp-check)
  #:use-module (guix build lisp-utils)
  #:use-module (guix build-system asdf)
  #:use-module (guix git-download)
  #:use-module (guix packages))

;; 20210604T194236+0100
;; added-to-upstream: 8a40a964e01ba07bf0c6ecdd90c5d064a697f9d6
;; CommitDate: Thu Jun 24 14:22:09 2021 +0200
;; (define-public sbcl-nst

;; 20211107T194006+0000
;; added-to-upstream: 07a68587b0e00a7b7c231d1360bbc5fb47fc51bf
;; CommitDate: Mon Nov 8 09:25:25 2021 +0100
;; (define-public sbcl-kaputt

(define-public sbcl-cacau
  (let ((commit "ba0fb36a284ded884f1dab0bd3f0f41ec14e3038")
        (revision "1"))
    (package
      (name "sbcl-cacau")
      (version (git-version "1.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/noloop/cacau")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0m8v1xw68cr5ldv045rxgvnhigr4iahh7v6v32z6xlq2sj6r55x0"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("assertion-error" ,sbcl-assertion-error)
         ("eventbus" ,sbcl-eventbus)))
      (home-page "https://github.com/noloop/cacau")
      (synopsis "Comon Lisp test runner")
      (description
"TBC")
      (license license:gpl3+))))

(define-public ecl-cacau
  (sbcl-package->ecl-package sbcl-cacau))

(define-public cl-cacau
  (sbcl-package->cl-source-package sbcl-cacau))

(define-public sbcl-assertion-error
  (let ((commit "8eab692a990d4caa193a46bae99af3e13e717b86")
        (revision "1"))
    (package
      (name "sbcl-assertion-error")
      (version (git-version "0.1.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/noloop/assertion-error")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0m8v1xw68cr5ldv045rxgvnhigr4iahh7v6v32z6xlq2sj6r55x0"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("dissect" ,sbcl-dissect)))
      (home-page "https://github.com/noloop/assertion-error")
      (synopsis "Error pattern for assertion libraries in Common Lisp")
      (description
"TBC")
      (license license:gpl3+))))

(define-public ecl-assertion-error
  (sbcl-package->ecl-package sbcl-assertion-error))

(define-public cl-assertion-error
  (sbcl-package->cl-source-package sbcl-assertion-error))

(define-public sbcl-simplet
  (let ((commit "12268f95d2da9b84ea5afc05e2e790963566b0d8")
        (revision "1"))
    (package
      (name "sbcl-simplet")
      (version (git-version "1.2.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/noloop/simplet")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "1scsalzbwxk6z48b61zq532c02l36yr3vl2jdy0xjm2diycq6jgs"))))
      (build-system asdf-build-system/sbcl)
      (home-page "https://github.com/noloop/simplet")
      (synopsis "Simple test runner in Common Lisp")
      (description
"TBC")
      (license license:gpl3+))))

(define-public ecl-simplet
  (sbcl-package->ecl-package sbcl-simplet))

(define-public cl-simplet
  (sbcl-package->cl-source-package sbcl-simplet))
