;;; GNU Guix --- Functional package management for GNU
;;; Copyright © 2024 Sharlatan Hellseher <sharlatanus@gmail.com>
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

(define-module (ffab packages image-processing)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix build-system gnu)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages)
  #:use-module (guix utils)
  #:use-module (gnu packages)
  #:use-module (gnu packages autotools)
  #:use-module (gnu packages image)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages databases)
  #:use-module (gnu packages web)
  #:use-module (gnu packages pkg-config))


;; 20240416T101955+0100
(define-public iipimage-server
  (package
    (name "iipimage-server")
    (version "1.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/ruven/iipsrv")
             (commit (string-append "iipsrv-" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0ff4wf2zwm24lbdg9b6r4aiwqa1lggjji92krb02af4224gvwa9n"))))
    (build-system gnu-build-system)
    (arguments
     (list
      #:configure-flags
      #~(list (string-append "CC=" #$(cc-for-target))
              (string-append "--prefix=" #$output))
      #:phases
      #~(modify-phases %standard-phases
          (add-before 'configure 'pre-configure
            (lambda _
              (invoke "autoreconf" "--install" "--force"))))))
    (native-inputs
     (list autoconf automake libtool pkg-config))
    (inputs
     (list fcgi libjpeg-turbo libpng libwebp libmemcached libtiff zlib))
    (home-page "https://iipimage.sourceforge.io/")
    (synopsis "Advanced high-performance feature-rich image server")
    (description
     "IIPImage is an advanced high-performance feature-rich image server system
 for web-based streamed viewing and zooming of ultra high-resolution images.  It
 is designed to be fast and bandwidth-efficient with low processor and memory
 requirements.  The system can comfortably handle gigapixel size images as well
 as advanced image features such as 8, 16 and 32 bits per channel, CIELAB
 colorimetric images and scientific imagery such as multispectral images, image
 sequences and 3D surface topologies.
Features:
@itemize
@item fast lightweight FastCGI server
@item high performance with inbuilt configurable cache
@item support for extremely large images: tera-pixel and multi gigapixel support
@item TIFF and JPEG2000 input support
@item JPEG, PNG and WebP output support: export of whole or regions of images at
any size
@item supports IIP, Zoomify, DeepZoom and IIIF API's
@item 1, 8, 16 and 32 bit image support including 32 bit floating point support
@item CIELAB support with automatic CIELAB->sRGB color space conversion
@item multispectral and hyperspectral image support
@item image stacks and image sequence support
@item dynamic hillshading of 3D surface topologies
@item dynamic watermarking
@item memcached support
@end itemize")
    (license license:gpl3+)))
