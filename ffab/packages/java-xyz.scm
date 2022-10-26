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

(define-module (ffab packages java-xyz)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix build-system maven)
  #:use-module (guix git-download)
  #:use-module (guix gexp)
  #:use-module (guix packages))

;; 20220615T222550+0100
(define-public java-universal-g-code-sender
  (package
    (name "java-universal-g-code-sender")
    (version "2.0.8")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/winder/Universal-G-Code-Sender")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0p9sy3h3msd30q9gv2as1gqgkvf4iigjw7iw2dx62748hf9m0z0x"))))
    (build-system maven-build-system)
    ;; (arguments
    ;;  `(#:exclude
    ;;    (("org.apache.maven.plugins" .
    ;;      ("maven-source-plugin" "maven-archetype-plugin" "maven-shade-plugin"
    ;;       "maven-site-plugin" "maven-javadoc-plugin" "maven-eclipse-plugin"))
    ;;     ("com.mycila.maven-license-plugin" . ("maven-license-plugin"))
    ;;     ("org.apache.maven.wagon" . ("wagon-ssh")))
    ;;    #:maven-plugins
    ;;    (("maven-enforcer-plugin" ,maven-enforcer-plugin)
    ;;     ,@(default-maven-plugins))
    ;;    #:phases
    ;;    (modify-phases %standard-phases
    ;;      (add-after 'unpack 'remove-unnecessary
    ;;        (lambda _
    ;;          ;; requires org.apache.maven.archetype:archetype-packaging.
    ;;          ;; Its subprojects also require groovy, kotlin and scala,
    ;;          ;; respectively.
    ;;          (delete-file-recursively "jmh-archetypes"))))))
    (home-page "http://winder.github.io/ugs_website")
    (synopsis "G-Code sender for GRBL, Smoothieware, TinyG and G2core")
    (description "")
    (license license:gpl3)))

;; 20220615T222557+0100
(define-public java-mockito-core
  (package
    (name "java-mockito-core")
    (version "4.1.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/mockito/mockito")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0czfs58p375i7ml31yjnrz8z51fd4i00qafnifhzlwzb8z7sw73n"))))
    (build-system maven-build-system)
    (home-page "https://site.mockito.org/")
    (synopsis "Java mocking framework for unit tests")
    (description "")
    (license license:expat)))

;; ;; 20220513T230340+0100
(define-public java-outbackcdx
  (package
    (name "java-outbackcdx")
    (version "0.11.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/nla/outbackcdx")
             (commit version)))
       (file-name (git-file-name name version))
       (sha256
        (base32
         "1zh91cf465rnd9fkb5ybpcp9lgah5537y298890sg02nlbhspl4x"))))
    (build-system maven-build-system)
    (home-page "https://github.com/nla/outbackcdx")
    (synopsis "Web archive index server based on RocksDB")
    (description
     "This package provides a RocksDB-based capture index (CDX) server for web
archives.")
    (license license:asl2.0)))
