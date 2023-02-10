;;; GNU Guix --- Functional package management for GNU
;;; Copyright © 2023 Sharlatan Hellseher <sharlatanus@gmail.com>
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

(define-module (ffab packages xml)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix build-system cmake)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages)
  #:use-module (gnu packages qt))

;; 20230206T195701+0000
(define-public qxlsx
  (package
    (name "qxlsx")
    (version "1.4.5")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/QtExcel/QXlsx")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1h95h96vz47cnfp62j7bx6ih725gbv005hm0cfqanfvqd5xd9qsg"))))
    (build-system cmake-build-system)
    (arguments
     (list
      #:configure-flags
      #~(list "../source/QXlsx"
              "-DCMAKE_BUILD_TYPE=Release"
              (string-append "-DCMAKE_INSTALL_PREFIX=" #$output))
      #:phases
      #~(modify-phases %standard-phases
          (replace 'check
            (lambda* (#:key tests? #:allow-other-keys)
              (when tests?
                (with-directory-excursion "../source/TestExcel"
                  (invoke "qmake")
                  (invoke "make" "-j" (number->string (parallel-job-count)))
                  (invoke "./TestExcel"))))))))
     (inputs
      (list qtbase-5))
     (home-page "https://qtexcel.github.io/QXlsx/")
     (synopsis "C++ library to read/write Excel XLSX files using Qt")
     (description
      "QXlsx is a successor of QtXlsx and providies a functionality to work with Excel
XLSX document format.")
     (license license:expat)))
