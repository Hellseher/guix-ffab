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

(define-module (ffab packages cinnamon)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix utils)
  #:use-module (guix build-system meson)
  #:use-module (gnu packages)
  #:use-module (gnu packages autotools)
  #:use-module (gnu packages freedesktop)
  #:use-module (gnu packages gettext)
  #:use-module (gnu packages glib)
  #:use-module (gnu packages gnome)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages pulseaudio)
  #:use-module (gnu packages python)
  #:use-module (gnu packages xorg))

(define-public cinnamon-desktop
  (package
    (name "cinnamon-desktop")
    (version "5.2.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/linuxmint/cinnamon-desktop")
             (commit version)))
       (file-name (git-file-name name version))
       (sha256
        (base32 "083ir8b33cpgsvydzj99kbnadaxz92k0axark857cajy2gh980hp"))))
    (build-system meson-build-system)
    (inputs
     (list accountsservice
           glib
           gnome-common
           gobject-introspection
           gtk+
           libxkbfile
           libxrandr
           pulseaudio
           python
           xkeyboard-config))
    (native-inputs
     (list `(,glib "bin") ;  glib-mkenums
           pkg-config))
    (home-page "https://github.com/linuxmint/cinnamon-desktop/")
    (synopsis "Library for the Cinnamon Desktop")
    (description
     "The cinnamon-desktop package contains the libcinnamon-desktop library,
as well as some desktop-wide documents.")
    (license (list license:gpl2+ license:lgpl2.0+
                   license:expat)))) ;display-name.c , edid-parse.c
