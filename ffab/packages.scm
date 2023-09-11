;;; GNU Guix --- Functional package management for GNU
;;; Copyright © 2021, 2023 Sharlatan Hellseher <sharlatanus@gmail.com>
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

(define-module (ffab packages)
  #:use-module (guix diagnostics)
  #:use-module (guix i18n)
  #:use-module (srfi srfi-1)
  #:use-module (ice-9 match)
  #:export (%patch-path
            search-patches
            search-patch))

(define %channel-root-directory
  (letrec-syntax ((dirname* (syntax-rules ()
                              ((_ file)
                               (dirname file))
                              ((_ file head tail ...)
                               (dirname (dirname* file tail ...)))))
                  (try      (syntax-rules ()
                              ((_ (file things ...) rest ...)
                               (match (search-path %load-path file)
                                 (#f
                                  (try rest ...))
                                 (absolute
                                  (dirname* absolute things ...))))
                              ((_)
                               #f))))
    (try ("ffab/packages/astronomy.scm" ffab/ packages/)
         ("ffab/packages.scm"      ffab/)
         (".guix-channel"))))

(define %patch-path
  (make-parameter
   (map (lambda (directory)
          (if (string=? directory %channel-root-directory)
              (string-append directory "/ffab/packages/patches")
              directory))
        %load-path)))

(define (search-patch file-name)
  "Search for the PATCH-FILE throw error if absent."
  (or (search-path (%patch-path) file-name)
      (raise (formatted-message (G_ "~a: patch not found") file-name))))

(define-syntax-rule (search-patches file-name ...)
  "Return the list of absolute file names corresponding to each
FILE-NAME found in %PATCH-PATH."
  (list (search-patch file-name) ...))
