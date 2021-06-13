;;; GNU Guix --- Functional package management for GNU
;;; Copyright © 2021 Sharlatan Hellseher <sharlatanus@gmail.com>
;;; This file is NOT part of GNU Guix.
;;;
;;; Commentary:

;;; Code:

(define-module (ffab guix import quicklisp)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((ice-9 rdelim) #:select (read-line))
  #:use-module ((rnrs io ports) #:select (call-with-port))
  #:use-module (guix build-system asdf)
  #:use-module (guix git)
  #:use-module (guix http-client)
  #:use-module (guix import utils)
  #:use-module (guix memoization)
  #:use-module (guix packages)
  #:use-module (ice-9 receive)
  #:use-module (ice-9 regex)
  #:use-module (ice-9 match)
  #:use-module (ice-9 textual-ports)
  #:use-module (srfi srfi-1)
  #:use-module (srfi srfi-11)
  #:use-module (srfi srfi-2)
  #:use-module (srfi srfi-26)
  #:use-module (srfi srfi-34)
  #:use-module (srfi srfi-35)
  #:export (common-lisp-system->guix-package
            common-lisp-recursive-import))

(define %input-style
  (make-parameter 'variable))

(define %distributions
  '(("quicklisp" . "https://beta.quicklisp.org/dist/quicklisp.txt")
    ("bodge" . "https://bodge.borodust.org/dist/org.borodust.bodge.txt")
    ("shirakumo" . "http://dist.tymoon.eu/shirakumo.txt")))

(define (distribution->alist distribution)
  "Convert a DISTRIBUTION specification string into alist.

Common fields of distribution specification:

name:
version:
system-index-url:
release-index-url:
archive-base-url:
canonical-distinfo-url:
distinfo-subscription-url:"
  (let ((lines (string-split distribution #\newline))
        (parse (lambda (line acc)
                 (if (string-null? line) acc
                     (if (string-match "[a-zA-Z][^ :]+:( |\n|$)" line)
                         (let* ((pos (string-index line #\:))
                                (key (string-take line pos))
                                (value (string-drop line (+ 1 pos))))
                           (cons (cons key
                                       (string-trim-both value))
                                 acc))
                         (match-let ((((key . value) . rest) acc))
                           (cons (cons key (string-join
                                            (list values
                                                  (string-trim-both line))))
                                 (rest))))))))
    (fold parse '() lines)))

(define http-fetch*
  (memoize (lambda args
             (call-with-port (apply http-fetch args) get-string-all))))

(define (system-index->list system-index)
  (cdr (string-split system-index #\newline)))

(define (format-inputs names)
  "Generate a sorted list of package inputs from a list of package NAMES."
  (map (lambda (name)
         (case (%input-style)
           ((specification)
            (list name (list 'unquote (list 'specification->package name))))
           (else
            (list name (list 'unquote (string->symbol name))))))
       (sort names string-ci<?)))

  ;;   (string-append (or (getenv "TMPDIR") "/tmp")
  ;;                  "/guix-import-go-"
  ;;                  (passwd:name (getpwuid (getuid))))

  ;; ;; Use a custom cache to avoid cluttering the default one under
  ;; ;; ~/.cache/guix, but choose one under /tmp so that it's persistent across
  ;; ;; subsequent "guix import" invocations.
  ;; (mkdir-p cache)
