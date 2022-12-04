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

(define-module (ffab packages julia-jll)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages astronomy)
  #:use-module (gnu packages julia-jll)
  #:use-module (guix build-system julia)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages))

(define-public julia-cfitsio-jll
  (package
    (name "julia-cfitsio-jll")
    ;; NOTE: (Sharlatan-20221204T093314+0000): Update the version after updating
    ;; main astronomy::cfitsio package.
    (version "4.0.0+0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/JuliaBinaryWrappers/CFITSIO_jll.jl")
             (commit (string-append "CFITSIO-v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1k0mqmpyfjr3ibcmda08llw8m166zw0n3lh5y5aj81q37lrxw990"))))
    (build-system julia-build-system)
    (arguments
     (list
      #:tests? #f ; no runtests
      #:phases
      #~(modify-phases %standard-phases
          (add-after 'link-depot 'override-binary-path
            (lambda* (#:key inputs #:allow-other-keys)
              (map
               (lambda (wrapper)
                 (substitute* wrapper
                   (("using LibCURL_jll") "") ; Not require to download cfitsio.
                   (("using Zlib_jll") "") ; Not require to upnpack not donwloaded archvie.
                   (("generate_init_header.*") "generate_init_header()\n" )
                   (("generate_wrapper_header.*")
                    (string-append
                     "generate_wrapper_header(\"CFITSIO\", \""
                     (assoc-ref inputs "cfitsio") "\")\n"))))
               ;; There's a Julia file for each platform, override them all
               (find-files "src/wrappers/" "\\.jl$")))))))
    (inputs
     (list cfitsio))
    (propagated-inputs
     (list julia-jllwrappers))
    (home-page "https://github.com/JuliaBinaryWrappers/CFITSIO_jll.jl")
    (synopsis "cfitsio library wrappers")
    (description "This package provides a wrapper for the cfitsio library.")
    (license license:expat)))

;; julia-jll.scm ends here
