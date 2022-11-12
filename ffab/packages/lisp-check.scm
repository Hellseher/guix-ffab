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
  #:use-module (ffab packages lisp-xyz)
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

;; 20220709T234615+0100
(define-public sbcl-cacau
  (package
    (name "sbcl-cacau")
    (version "1.0.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/noloop/cacau")
             (commit (string-append "v" version))))
       (file-name (git-file-name "cacau" version))
       (sha256
        (base32 "0m8v1xw68cr5ldv045rxgvnhigr4iahh7v6v32z6xlq2sj6r55x0"))))
    (build-system asdf-build-system/sbcl)
    (native-inputs
     (list sbcl-assert-p))
    (inputs
     (list sbcl-assertion-error sbcl-eventbus))
    (home-page "https://github.com/noloop/cacau")
    (synopsis "Comon Lisp test runner")
    (description
     "This package provides Common Lisp testing framework system CACAU which was
built to be independent of assertions systems.")
    (license license:gpl3+)))

(define-public ecl-cacau
  (sbcl-package->ecl-package sbcl-cacau))

(define-public cl-cacau
  (sbcl-package->cl-source-package sbcl-cacau))

;; 20220709T233237+0100
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
          (base32 "0ix23kkakmf4nwx852zsssb831jvajr3qyppqfyks7y1ls617svn"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       (list sbcl-dissect))
      (home-page "https://github.com/noloop/assertion-error")
      (synopsis "Error pattern for assertion libraries in Common Lisp")
      (description "This package provides Common Lisp assertion system with
minimal dependencies on DISSECT.")
      (license license:gpl3+))))

(define-public ecl-assertion-error
  (sbcl-package->ecl-package sbcl-assertion-error))

(define-public cl-assertion-error
  (sbcl-package->cl-source-package sbcl-assertion-error))

;; 20220709T233521+0100
(define-public sbcl-assert-p
  (package
    (name "sbcl-assert-p")
    (version "1.0.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/noloop/assert-p")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1x24rkqkqiw8zd26swi9rmhfplkmr5scz3bhjwccah9d2s36b1xs"))))
    (build-system asdf-build-system/sbcl)
    (inputs
     (list sbcl-assertion-error sbcl-simplet))
    (home-page "https://github.com/noloop/assert-p")
    (synopsis "Common Lisp assertion library")
    (description "This package provides Common Lisp collection of assertions.")
    (license license:gpl3+)))

(define-public ecl-assert-p
  (sbcl-package->ecl-package sbcl-assert-p))

(define-public cl-assert-p
  (sbcl-package->cl-source-package sbcl-assert-p))

(define-public sbcl-simplet
  (package
    (name "sbcl-simplet")
    (version  "1.2.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/noloop/simplet")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1iwp3a43mns885k2arr7gbmyv5rsrjfvgarxickj7r2bfgwp1cnn"))))
    (build-system asdf-build-system/sbcl)
    (home-page "https://github.com/noloop/simplet")
    (synopsis "Simple test runner in Common Lisp")
    (description "This package provides Common Lisp test runner system
SIMPLET.")
    (license license:gpl3+)))

(define-public ecl-simplet
  (sbcl-package->ecl-package sbcl-simplet))

(define-public cl-simplet
  (sbcl-package->cl-source-package sbcl-simplet))

;; 20221110T225101+0000
(define-public sbcl-confidence
  (let ((commit "14dc40a0fde822f4aab4fefc9b40ef5fdcbcd666")
        (revision "0"))
    (package
      (name "sbcl-confidence")
      (version (git-version "0.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/melusina-org/cl-confidence")
               (commit commit)))
         (file-name (git-file-name "cl-confidence" version))
         (sha256
          (base32 "17xb8k53ncpp7h8b5g9y56cg5imrczxx8zpr5xkslrvlsb551i1q"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:asd-systems '("org.melusina.confidence"
                         "org.melusina.confidence/testsuite")))
      (inputs (list sbcl-alexandria))
      (home-page "https://github.com/melusina-org/cl-confidence")
      (synopsis "Interactive Test Framework for Common Lisp")
      (description
       "Confidence is a test framework for Common Lisp that focuses on simplicty. It
avoids bureacracy and makes it easy to work interactively, without a complicated
setup, and with explicit functions and decisions.")
      (license license:expat))))

(define-public ecl-confidence
  (sbcl-package->ecl-package sbcl-confidence))

(define-public cl-confidence
  (sbcl-package->cl-source-package sbcl-confidence))
