(define-module (ffab packages image)
  #:use-module (guix packages)
  #:use-module (guix build-system gnu)
  #:use-module (guix build-system meson)
  #:use-module (guix git-download)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages gnome)
  #:use-module (gnu packages ninja)
  #:use-module (gnu packages glib)
  #:use-module (gnu packages man)
  #:use-module (gnu packages build-tools)
  #:use-module ((guix licenses) #:prefix license:))

;; TODO: (Sharlatan-20210415T225848+0100): new version 1.3.1
(define-public swappy
  (package
    (name "swappy")
    (version "1.2.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/jtheoof/swappy")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "14ac2jmnak7avcz0jhqjm30vk7pv3gq5aq5rdyh84k8c613kkicf"))))
    (build-system meson-build-system)
    (native-inputs
     `(("pkg-config" ,pkg-config)
       ("meson" ,meson-for-build)
       ("scdoc" ,scdoc)
       ("ninja" ,ninja)))
    (inputs
     `(("gtk+" ,gtk+)
       ("glib" ,glib)
       ("libnotify" ,libnotify)))
    (home-page "https://github.com/jtheoof/swappy")
    (synopsis "Wayland native snapshot editing tool, inspired by Snappy on macOS")
    (description
     "A Wayland native snapshot and editor tool, inspired by Snappy on macOS.
Works great with grim, slurp and sway.  But can easily work with other screen
copy tools that can output a final PNG image to stdout.")
    (license license:expat)))
