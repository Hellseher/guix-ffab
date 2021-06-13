;;; GNU Guix --- Functional package management for GNU
;;; Copyright © 2021 Sharlatan Hellseher <sharlatanus@gmail.com>
;;;
;;; This file is NOT part of GNU Guix.
;;;
;;;; Commentary:

(define-module (ffab packages)
  #:use-module ((gnu packages) #:prefix gnu:)
  #:use-module (guix diagnostics)
  #:use-module (guix i18n)
  #:use-module (srfi srfi-1)
  #:export (%patch-path
            %channel-root
            search-pathes
            search-path))

(define %channel-root
  (find (lambda (path)
          (file-exists? (string-append path "/ffab/packages.scm")))
        %load-path))

(define (search-patch file-name)
  "Search for the PATCH-FILE throw error if absent."
  (or (search-path (%patch-path) file-name)
      (raise (formatted-message (G_ "~a: patch not found") file-name))))
