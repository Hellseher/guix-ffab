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

(define-module (ffab guix import quicklisp)
  #:use-module (ice-9 match)
  #:use-module (ice-9 regex)
  #:use-module (ice-9 popen)
  #:use-module ((ice-9 rdelim) #:select (read-string read-line))
  #:use-module (srfi srfi-1)
  #:use-module (srfi srfi-2)
  #:use-module (srfi srfi-11)
  #:use-module (srfi srfi-26)
  #:use-module (srfi srfi-34)
  #:use-module (srfi srfi-35)
  #:use-module (ice-9 receive)
  #:use-module (web uri)
  #:use-module (guix memoization)
  #:use-module (guix http-client)
  #:use-module (guix diagnostics)
  #:use-module (guix hash)
  #:use-module (guix i18n)
  #:use-module (guix store)
  #:use-module (guix base32)
  #:use-module ((guix download) #:select (download-to-store))
  #:use-module (guix import utils)
  #:use-module ((guix build utils)
                #:select (find-files
                          delete-file-recursively
                          with-directory-excursion))
  #:use-module (guix utils)
  #:use-module (guix git)
  #:use-module ((guix build-system r) #:select (cran-uri bioconductor-uri))
  #:use-module (guix ui)
  #:use-module (guix upstream)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:export (distinfo->alist
            systems->alist
            %test-systems
            distribution-spec
            parse-systems.txt
            quicklisp->guix-package))

(define %input-style
  (make-parameter 'variable))

(define %distributions
  '(("quicklisp" . "https://beta.quicklisp.org/dist/quicklisp.txt")
    ("bodge" . "https://bodge.borodust.org/dist/org.borodust.bodge.txt")
    ("ultralisp" . "http://dist.ultralisp.org/")
    ("shirakumo" . "http://dist.tymoon.eu/shirakumo.txt")))

(define (distinfo->alist distinfo)
  "Convert a DISTINFO string into an alist."
  (let ((lines (string-split distinfo #\newline))
        (parse (lambda (line acc)
                 (if (string-null? line)
                     acc
                     ;; keys separated by ":" from values.
                     (if (string-match "^[a-z][^ :]+:( |\n|$)" line)
                         ;; new key/value pair
                         (let* ((pos   (string-index line #\:))
                                (key   (string-take line pos))
                                (value (string-drop line (+ 1 pos))))
                           (cons (cons key
                                       (string-trim-both value))
                                 acc))
                         ;; this is a continuation of the previous pair
                         (match-let ((((key . value) . rest) acc))
                           (cons
                            (cons key (string-join (list
                                                    value (string-trim-both line))))
                                 rest)))))))
    (fold parse '() lines)))

(define %test-systems
  "# project system-file system-name [dependency1..dependencyN]
1am 1am 1am
3b-bmfont 3b-bmfont 3b-bmfont alexandria asdf split-sequence
3b-bmfont 3b-bmfont 3b-bmfont/common alexandria split-sequence
3b-bmfont 3b-bmfont 3b-bmfont/json alexandria jsown split-sequence
3b-bmfont 3b-bmfont 3b-bmfont/text alexandria split-sequence
3b-bmfont 3b-bmfont 3b-bmfont/xml alexandria cxml flexi-streams split-sequence
3b-hdr 3b-hdr 3b-hdr alexandria asdf babel parse-number split-sequence
3b-hdr 3b-hdr 3b-hdr/test 3b-hdr nibbles parachute
3b-swf 3b-swf 3b-swf alexandria chipz cl-jpeg cxml flexi-streams ieee-floats salza2 vecto zpng
3b-swf 3b-swf-swc 3b-swf-swc 3b-swf cxml zip
3bgl-shader 3bgl-shader 3bgl-shader alexandria asdf bordeaux-threads cl-opengl
3bgl-shader 3bgl-shader-example 3bgl-shader-example 3bgl-shader asdf cl-glu cl-glut mathkit
3bmd 3bmd 3bmd alexandria asdf esrap split-sequence
3bmd 3bmd-ext-code-blocks 3bmd-ext-code-blocks 3bmd alexandria asdf colorize split-sequence
3bmd 3bmd-ext-definition-lists 3bmd-ext-definition-lists 3bmd alexandria asdf colorize
3bmd 3bmd-ext-math 3bmd-ext-math 3bmd asdf esrap
3bmd 3bmd-ext-tables 3bmd-ext-tables 3bmd asdf
3bmd 3bmd-ext-wiki-links 3bmd-ext-wiki-links")

(define (systems->alist systems)
  "Convert SYSTEMS string into an alist.
Each field of the SYSTEMS strings separated by a single space and have following sequence:
- <field-1> :: project
- <field-2> :: system file
- <field-3> :: system name
- <field-4...n> :: list of dependencies"
  (let ((lines (string-split systems #\newline))
        (parse (lambda (line acc)
                 (if (string-null? line)
                     acc
                     (if (not (string-prefix? "#" (string-trim line)))
                         (let ((spec (string-split line #\space)))
                           (cons
                            (list (cons "project" (list-ref spec 0))
                                  (cons "system-file" (list-ref spec 1))
                                  (cons "system-name" (list-ref spec 2))
                                  (cons "dependencies" (if (= (length spec) 3)
                                                           #f
                                                           (list-tail spec 3))))
                            acc))

                         )))))
    (fold parse '() lines)))


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

(define* (system-spec #:optional system)
  "Return alist of all project systems specification. If SYSTEM is provided return
just it."

(if system
    (display system)))
