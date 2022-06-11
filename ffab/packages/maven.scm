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

(define-module (ffab packages maven)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages java)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix build-system ant)
  #:use-module (gnu packages base)
  #:use-module (gnu packages maven)
  #:use-module (guix packages))

;;no-such-input "org.apache.maven.plugins" "maven-shade-plugin"

(define-public maven-shade-plugin
  (package
    (name "maven-shade-plugin")
    (version "3.1.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/apache/maven-shade-plugin/")
             (commit (string-append  name "-" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32
         "0sr6g3pbs1zdag7prjba2lzhvqzj3da79w5v83yk7a73mn07pvaw"))))
    (build-system ant-build-system)
    (arguments
     (list
      #:jar-name "maven-shade-plugin.jar"
      #:source-dir "src/main/java"
      #:test-dir "src/test"))
    (propagated-inputs
     (list maven-core))
    (home-page "https://maven.apache.org/plugins/maven-shade-plugin")
    (synopsis "Build an Uber-JAR from the current project, including dependencies")
    (description "")
    (license license:asl2.0)))
