;;; GNU Guix --- Functional package management for GNU
;;; Copyright © 2023 Sharlatan Hellseher <sharlatanus@gmail.com>
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

(define-module (ffab packages virtualization)
  #:use-module (gnu packages)
  #:use-module (gnu packages admin)
  #:use-module (gnu packages autotools)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages crypto)
  #:use-module (gnu packages glib)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages linux)
  #:use-module (gnu packages onc-rpc)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages tls)
  #:use-module (gnu packages xdisorg)
  #:use-module (gnu packages xml)
  #:use-module (gnu packages xorg)
  #:use-module (guix build-system gnu)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages)
  #:use-module (guix utils)
  #:use-module ((guix licenses) #:prefix license:))

(define-public vmware-open-vm-tools
  (package
    (name "vmware-open-vm-tools")
    (version "12.3.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/vmware/open-vm-tools")
             (commit (string-append "stable-" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1hbimhady0v1kd45azknl1lgzgldhgdjd7bj540rn3y4cai5cnk1"))))
    (build-system gnu-build-system)
    (arguments
     (list
      #:configure-flags
      #~(list "--with-fuse=fuse3"
              "--without-kernel-modules"
              "--without-x"
              (string-append
               "--with-udev-rules-dir=" #$output "/lib/udev/rules.d"))
      ;; TODO: (Sharlatan-20230903T123429+0100): Add iproute2 dbus which
      ;; commands wrap.
      #:phases
      #~(modify-phases %standard-phases
          (add-after 'unpack 'chdir
            (lambda _
              (chdir "open-vm-tools")))
          (replace 'bootstrap
            (lambda _
              (system* "autoreconf" "-if")))
          (add-after 'bootstrap 'patch-paths
            (lambda _
              (substitute* "Makefile.am"
                (("/etc/vmware-tools/")
                 (string-append #$output "/etc/vmware-tools/")))
              (substitute* "scripts/Makefile.am"
                (("/etc/vmware-tools")
                 (string-append #$output "/etc/vmware-tools"))
                (("/usr/bin")
                 (string-append #$output "/bin")))
              (substitute* "services/vmtoolsd/Makefile.am"
                (("/etc/vmware-tools")
                 (string-append #$output "/etc/vmware-tools"))
                (("\\$\\(PAM_PREFIX\\)")
                 (string-append #$output "/$(PAM_PREFIX)")))
              (substitute* "vgauth/service/Makefile.am"
                (("/etc/vmware-tools/vgauth/schemas")
                 (string-append #$output "/etc/vmware-tools/vgauth/schemas"))
                (("etc/vmware-tools/vgauth.conf")
                 (string-append #$output "/etc/vmware-tools/vgauth.conf")))
              (substitute* "vmhgfs-fuse/config.c"
                (("/bin/fusermount3")
                 (string-append
                  #$(this-package-input "fuse") "/bin/fusermount3")))
              ;; XXX: This part might need more testing with shutdown and halt
              ;; commands provided by Shepherd.
              (substitute* "lib/system/systemLinux.c"
                (("/sbin/shutdown")
                 (string-append
                  #$(this-package-input "shepherd") "/sbin/shutdown"))
                (("/bin/reboot")
                 (string-append
                  #$(this-package-input "shepherd") "/sbin/reboot")))
              (substitute* "services/plugins/vix/foundryToolsDaemon.c"
                (("/bin/mount")
                 (string-append
                  #$(this-package-input "util-linux") "/bin/mount"))
                (("/usr/bin/vmhgfs-fuse")
                 (string-append #$output "/bin/vmhgfs-fuse"))))))))
    (native-inputs
     (list `(,glib "bin")               ; for glib-genmarshal
           autoconf
           automake
           libltdl
           libtool
           pkg-config))
    (inputs
     (list eudev
           fuse
           glib
           xmlsec
           libmspack
           ;; libdnet ; Not packed
           libtirpc
           libxcrypt
           libxml2
           linux-pam ;; XXX: check current system
           openssl
           procps
           rpcsvc-proto
           shepherd     ;for 'halt' and 'reboot', invoked from VMWare host.
           util-linux
           xmlsec))
    (home-page "https://github.com/vmware/open-vm-tools")
    (synopsis "Tools for VMWare guest VM to enhance host-guest integration")
    (description
     "@code{open-vm-tools} is a set of services and modules that enable several
features in VMware products for better management of, and seamless user
interactions with, guests.  It includes kernel modules for enhancing the
performance of virtual machines running Linux or other VMware supported Unix
like guest operating systems.

@code{open-vm-tools} enables the following features in VMware products:

@itemize
@item The ability to perform virtual machine power operations gracefully.
@item Execution of VMware provided or user configured scripts in guests during
various power operations.
@item The ability to run programs, commands and file system operation in guests
to enhance guest automation.
@item Authentication for guest operations.
@item Periodic collection of network, disk, and memory usage information from
the guest.
@item Generation of heartbeat from guests to hosts so VMware's HA solution can
determine guests' availability.
@item Clock synchronization between guests and hosts or client desktops.
@item Quiescing guest file systems to allow hosts to capture
file-system-consistent guest snapshots.
@item Execution of pre-freeze and post-thaw scripts while quiescing guest file
systems.
@item The ability to customize guest operating systems immediately after
powering on virtual machines.
@item Enabling shared folders between host and guest file systems on VMware
Workstation and VMware Fusion.
@item Copying and pasting text, graphics, and files between guests and hosts or
client desktops.
@end itemize")
    (license license:gpl2)))

(define-public vmware-open-vm-tools-gtk
  (package/inherit vmware-open-vm-tools
    (name "vmware-open-vm-tools-gtk")
    (inputs
     (modify-inputs (package-inputs vmware-open-vm-tools)
       (prepend gdk-pixbuf-xlib
                gtk+
                gtkmm-3
                libdrm
                libx11
                libxext
                libxi
                libxinerama
                libxrandr
                libxrender
                libxtst)))
    (arguments
     (substitute-keyword-arguments (package-arguments vmware-open-vm-tools)
       ((#:configure-flags flags)
        #~(delete "--without-x" #$flags))))
    (description "This package provides a GTK+ support for @code{open-vm-tools}.")))
