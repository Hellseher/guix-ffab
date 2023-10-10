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
;;;
;;; Commentary:
;;; to add this file to Guile import path:
;;;
;;; (add-to-load-path "/mnt/library/projects/prj/guix-channel")

;;; Code:

(define-module (guix import quicklisp)
  #:use-module (ice-9 popen)
  #:use-module ((ice-9 rdelim) #:select (read-string read-line))
  #:use-module (web uri)
  #:use-module ((guix download) #:select (download-to-store))
  #:use-module (guix utils)
  #:use-module (guix git)
  #:use-module (guix ui)
  #:use-module (guix upstream)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:export (distinfo->alist
            parse-systems
            distribution-spec))

(define %distributions
  '(("quicklisp" . "https://beta.quicklisp.org/dist/quicklisp.txt")
    ("bodge" . "https://bodge.borodust.org/dist/org.borodust.bodge.txt")
    ("ultralisp" . "http://dist.ultralisp.org/")
    ("shirakumo" . "http://dist.tymoon.eu/shirakumo.txt")))

(define (distinfo->alist distinfo)
  "Convert a DISTINFO string into an alist."
  (let ((lines (string-split distinfo #\newline)))
    (map (lambda (line)
           (let* ((pos   (string-index line #\:))
                  (key   (string-take line pos))
                  (value (string-drop line (+ 1 pos))))
             (cons key (string-trim-both value))))
         lines)))

(define (parse-systems systems)
  "Parse SYSTEMS string and return a list of metadata list and dependencies list
of the given project. Each field of the SYSTEMS strings separated by a single
space and have following sequence.

The first line starting with # of the file is a header with following format:
- <field-0> :: project
- <field-1> :: system file
- <field-2> :: system name
- <field-3...n> :: list of dependencies"
  (let ((lines (cdr (string-split systems #\newline))))
    (map (lambda (line)
           (let ((spec (string-split line #\space)))
             (append
              (list (list-head spec 3)
                    (if (= (length spec) 3)
                        (list)
                        (list-tail spec 3))))))
         lines)))

(define* (distribution-spec #:optional (distribution "quicklisp"))
  "Return the latest verion of distribution specification.

name: <distribution-name>
version: <destribution-release-version-date>
system-index-url: <url-to-systems-list>
release-index-url: <url-to-release-packages>
archive-base-url: <url-base>
canonical-distinfo-url: <url-to-released-dist-info>
distinfo-subscription-url: <url-to-current-distribution-info-file>"
  (let ((url (string->uri (assoc-ref %distributions distribution))))
    (guard (c ((http-get-error? c)
               (warning (G_ "Failed to retrieve distinfo from ~a: ~a (~a)~%")
                        (uri->string (http-get-error-uri c))
                        (http-get-error-code c)
                        (http-get-error-reason c))
               #f))
      (map (lambda (chunk)
             (distinfo->alist (string-join chunk "\n")))
           (let* ((port  (http-fetch/cached url))
                  (lines (read-lines port)))
             (close-port port)
             (chunk-lines lines))))))

(define* (system-spec #:optional system distribution)
  "Return the latest verion of distribution specification."
  (let ((url (string->uri (assoc-ref (car (distribution-spec)) "system-index-url"))))
    (guard (c ((http-get-error? c)
               (warning (G_ "Failed to retrieve distinfo from ~a: ~a (~a)~%")
                        (uri->string (http-get-error-uri c))
                        (http-get-error-code c)
                        (http-get-error-reason c))
               #f))
      (map (lambda (chunk)
             (parse-systems (string-join chunk "\n")))
           (let* ((port  (http-fetch/cached url))
                  (lines (read-lines port)))
             (close-port port)
             (chunk-lines lines))))))
