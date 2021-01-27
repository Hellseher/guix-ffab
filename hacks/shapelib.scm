(use-modules (guix packages)
             (guix build-system gnu)
             (guix git-download)
             (gnu packages autotools)
             ((guix licenses) #:prefix license:))

(define-public shapelib
  (package
    (name "shapelib")
    (version "1.5.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/OSGeo/shapelib")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1lzch0jf6yqhw391phhafzw4ghmiz98zkf698h4fmq109fa2vhqd"))))
    (build-system gnu-build-system)
    (native-inputs
     `(("autoconf" ,autoconf)
       ("automake" ,automake)
       ("libtool" ,libtool)))
    (home-page "http://shapelib.maptools.org/")
    (synopsis "Provides C library to write and update ESRI Shapefiles")
    (description
     "The Shapefile C Library provides the ability to write simple C programs
for reading, writing and updating (to a limited extent) ESRI Shapefiles, and the
associated attribute file (.dbf).")
    (license license:gpl2+)))

shapelib
