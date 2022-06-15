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

(define-module (ffab packages rabbitmq)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix build-system gnu)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages)
  #:use-module (gnu packages perl)
  #:use-module (gnu packages ruby)
  #:use-module (gnu packages python))


;; 20220414T212045+0100
(define-public rabbitmq-server
  (package
    (name "rabbitmq-server")
    (version "3.9.15")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/rabbitmq/rabbitmq-server")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1lrxh8d7b39akw0833fn4qnvy97ldcmhb0m771y04m0qsw6gf26r"))))
    (build-system gnu-build-system)
    (arguments
     (list #:make-flags #~(list (string-append "PREFIX=" #$output)
                                (string-append "RMQ_ROOTDIR=" #$output "/lib/rabitmq")
                                (string-append "RMQ_ERLAPP_DIR=" #$output "/lib/rabbitmq-server-3.9.15"))
           #:phases #~(modify-phases %standard-phases
                        (delete 'configure)
                        ;; (replace 'build
                        ;;   (lambda _
                        ;;     (invoke "make" "install-bin")
                        ;;     #t))
           )))
    (native-inputs
     (list python
           ruby
           python-wrapper
           perl))
    (home-page "https://www.rabbitmq.com/")
    (synopsis "Feature rich, multi-protocol messaging broker")
    (description
     "This package profieds RabbitMQ Server which supports AMQP 0-9-1, AMQP 1.0,
MQTT 3.1.1, STOMP 1.0 through 1.2")
    (license #f)))
