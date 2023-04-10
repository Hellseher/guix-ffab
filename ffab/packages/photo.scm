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

(define-module (ffab packages photo)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix build-system cmake)
  #:use-module (guix build-system gnu)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages))

;; 20221021T003307+0100
;; (define-public librtprocess
;; added-to-downstream-guix cf8e5f4ff8f1757e3e9d71f1b0a63406d835a0df
;; CommitDate: Mon Nov 14 12:31:34 2022 +0100

;; 20221029T233737+0100
(define-public easyexif
  (package
    (name "easyexif")
    (version "1.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/mayanklahiri/easyexif")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0l3zr2gzjw25k7gw8z7cpz4prqzfrrpqdqd8gqw2py8pbsxkx8ap"))))
    (build-system gnu-build-system)
    (arguments
     (list #:phases #~(modify-phases %standard-phases
                        (delete 'configure)
                        (replace 'check
                          (lambda* (#:key tests? #:allow-other-keys)
                            (when tests?
                              (invoke "./test.sh"))))
                        (replace 'install
                          (lambda* (#:key outputs #:allow-other-keys)
                            (let* ((out (assoc-ref outputs "out"))
                                   (bin (string-append out "/bin"))
                                   (share (string-append out "/share"))
                                   (include (string-append out
                                                           "/include/easyexif")))
                              (for-each (lambda (dir)
                                          (mkdir-p dir))
                                        (list bin include share))
                              (install-file "demo" bin)
                              (install-file "exif.cpp" include)
                              (install-file "exif.h" include)
                              (install-file "LICENSE" share)))))))
    (home-page "https://github.com/mayanklahiri/easyexif")
    (synopsis "ISO-compliant C++ EXIF parsing library")
    (description
     "EasyEXIF is a tiny, lightweight C++ library that parses basic information
out of JPEG files.  It uses only the std::string library and is otherwise pure
C++.  You pass it the binary contents of a JPEG file, and it parses several of
the most important EXIF fields for you.")
    (license license:bsd-0)))
