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
            parse-systems
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
3bmd 3bmd-ext-wiki-links 3bmd-ext-wiki-links 3bmd asdf
3bmd 3bmd-youtube 3bmd-youtube 3bmd asdf esrap
3bmd 3bmd-youtube-tests 3bmd-youtube-tests 3bmd-youtube asdf fiasco
3bz 3bz 3bz alexandria asdf babel cffi mmap nibbles trivial-features
3d-matrices 3d-matrices 3d-matrices 3d-vectors asdf documentation-utils
3d-matrices 3d-matrices-test 3d-matrices-test 3d-matrices asdf parachute
3d-quaternions 3d-quaternions 3d-quaternions 3d-matrices 3d-vectors asdf documentation-utils
3d-quaternions 3d-quaternions-test 3d-quaternions-test 3d-quaternions asdf parachute
3d-transforms 3d-transforms 3d-transforms 3d-matrices 3d-quaternions 3d-vectors asdf documentation-utils
3d-transforms 3d-transforms-test 3d-transforms-test 3d-transforms asdf parachute
3d-vectors 3d-vectors 3d-vectors asdf documentation-utils
3d-vectors 3d-vectors-test 3d-vectors-test 3d-vectors asdf parachute
a-cl-logger a-cl-logger a-cl-logger alexandria asdf cl-interpol cl-json closer-mop exit-hooks iterate local-time osicat symbol-munger
a-cl-logger a-cl-logger-logstash a-cl-logger-logstash a-cl-logger asdf cl-json zmq
a-cl-logger a-cl-logger a-cl-logger-tests a-cl-logger lisp-unit2
able able able cl-fad ltk trivial-gray-streams
access access access alexandria asdf cl-ppcre closer-mop iterate
access access access/test access lisp-unit2
acclimation acclimation acclimation asdf
acclimation acclimation-temperature acclimation-temperature asdf
adhoc adhoc adhoc asdf closer-mop
adhoc adhoc-tests adhoc-tests adhoc asdf fiveam
adopt adopt adopt asdf bobbin split-sequence
adopt adopt adopt/test 1am adopt
adopt-subcommands adopt-subcommands adopt-subcommands adopt asdf bobbin split-sequence uiop
adopt-subcommands adopt-subcommands-test adopt-subcommands-test adopt-subcommands asdf fiveam
advanced-readtable advanced-readtable advanced-readtable named-readtables
aether aether aether alexandria asdf cl-heap global-vars policy-cond
aether aether-tests aether-tests aether asdf fiasco uiop
agnostic-lizard agnostic-lizard agnostic-lizard asdf
agnostic-lizard agnostic-lizard-debugger-prototype agnostic-lizard-debugger-prototype agnostic-lizard asdf bordeaux-threads
agutil agutil agutil alexandria asdf optima
ahungry-fleece ahungry-fleece ahungry-fleece archive asdf chipz cl-json cl-yaml md5 split-sequence")

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

(define* (system-spec #:optional system)
  "Return alist of all project systems specification. If SYSTEM is provided return
just it."

(if system
    (display system)))
