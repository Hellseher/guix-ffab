(define-module (ffab packages lisp-xyz)
  #:use-module (ffab packages lisp-check)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages base)
  #:use-module (gnu packages databases)
  #:use-module (gnu packages elf)
  #:use-module (gnu packages game-development)
  #:use-module (gnu packages gl)
  #:use-module (gnu packages gsasl)
  #:use-module (gnu packages image)
  #:use-module (gnu packages libevent)
  #:use-module (gnu packages lisp)
  #:use-module (gnu packages lisp-xyz)
  #:use-module (gnu packages lisp-check)
  #:use-module (gnu packages mp3)
  #:use-module (gnu packages sdl)
  #:use-module (gnu packages xorg)
  #:use-module (guix build lisp-utils)
  #:use-module (guix build-system asdf)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix packages)
  #:use-module (srfi srfi-1)
  #:use-module (json))


;; Set of systems which are maintained by Dimitri Fontaine
;; https://github.com/dimitri
;;+begin-dimitri

(define-public sbcl-qmynd
  (let ((commit "7e56daf73f0ed5f49a931c01af75fb874bcf3445")
        (revision "1"))
    (package
      (name "sbcl-qmynd")
      (version (git-version "1.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/qitab/qmynd")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32
           "06gw5wxcpdclb6a5i5k9lbmdlyqsp182czrm9bm1cpklzbj0ihrl"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("asdf-finalizers" ,sbcl-asdf-finalizers)
         ("babel" ,sbcl-babel)
         ("chipz" ,sbcl-chipz)
         ("cl+ssl" ,sbcl-cl+ssl)
         ("flexi-streams" ,sbcl-flexi-streams)
         ("ironclad" ,sbcl-ironclad)
         ("salza2" ,sbcl-salza2)
         ("trivial-gray-streams" ,sbcl-trivial-gray-streams)
         ("usocket" ,sbcl-usocket)))
      (home-page "https://github.com/dimitri/cl-abnf")
      (synopsis "QITAB MySQL Native Driver for Common Lisp")
      (description "QMyND, the QITAB MySQL Native Driver, is a MySQL client
library that directly talks to a MySQL server in its native network protocol.

It's a part of QITAB umbrella project.")
      (license license:expat ))))

(define-public ecl-qmynd
  (sbcl-package->ecl-package sbcl-qmynd))

(define-public cl-qmynd
  (sbcl-package->cl-source-package sbcl-qmynd))

(define-public sbcl-db3
  (let ((commit "38e5ad35f025769fb7f8dcdc6e56df3e8efd8e6d")
        (revision "1"))
  (package
    (name "sbcl-db3")
    (version (git-version "0.0.0" revision commit))
    (source (origin
             (method git-fetch)
             (uri (git-reference
                   (url "https://github.com/dimitri/cl-db3")
                   (commit commit)))
             (file-name (git-file-name name version))
             (sha256
              (base32
               "1i7j0mlri6kbklcx1lsm464s8kmyhhij5c4xh4aybrw8m4ixn1s5"))))
    (build-system asdf-build-system/sbcl)
    (home-page "https://github.com/dimitri/cl-db3")
    (synopsis "Common Lisp library to read dbf files version 3")
    (description "Allows processing data found in dbf and db3 files.")
    (license license:public-domain))))

(define-public ecl-db3
  (sbcl-package->ecl-package sbcl-db3))

(define-public cl-db3
  (sbcl-package->cl-source-package sbcl-db3))

(define-public sbcl-cl-ixf
  (let ((commit "ed26f87e4127e4a9e3aac4ff1e60d1f39cca5183")
        (revision "1"))
  (package
    (name "sbcl-cl-ixf")
    (version (git-version "0.1.0" revision commit))
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/dimitri/cl-ixf")
                    (commit commit)))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1wjdnf4vr9z7lcfc49kl43g6l2i23q9n81siy494k17d766cdvqa"))))
    (build-system asdf-build-system/sbcl)
    (inputs
     `(("split-sequence" ,sbcl-split-sequence)
       ("md5" ,sbcl-md5)
       ("alexandria" ,sbcl-alexandria)
       ("babel" ,sbcl-babel)
       ("local-time" ,sbcl-local-time)
       ("cl-ppcre" ,sbcl-cl-ppcre)
       ("ieee-floats" ,sbcl-ieee-floats)))
    (arguments
     `(#:asd-systems '("ixf")))
    (home-page "https://github.com/dimitri/cl-ixf")
    (synopsis "Parse IBM Integration Exchange Format (IXF)")
    (description "Tools to handle IBM PC version of IXF file format.")
    (license license:public-domain))))

(define-public ecl-cl-ixf
  (sbcl-package->ecl-package sbcl-cl-ixf))

(define-public cl-ixf
  (sbcl-package->cl-source-package sbcl-cl-ixf))
;;+end-dimitri

;; Set of systems which are maintained by Michael Fiano
;; https://git.mfiano.net/mfiano
;;+begin-mfiano

;;+end-mfiano

;; Dist: http://dist.tymoon.eu/shirakumo.txt
;; Set of system which are maintained under Shirakumo distribution or by Shinmera
;;+begin-shirakumo

;; 20211107T173633+0000
(define-public sbcl-alloy
  (let ((commit "e86e22c2887836ec31cd97e039f0bca5248d8f1c")
        (revision "1"))
    (package
      (name "sbcl-alloy")
      (version (git-version "0.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shirakumo/alloy")
               (commit commit)))
         (file-name (git-file-name "alloy" version))
         (sha256
          (base32 "1jsqjr6sf86hcdvnjp4gd10qv0r7kfkr9hmda85irb5lha4q9n7w"))))
      (build-system asdf-build-system/sbcl)
      (native-inputs
       `(("parachute" ,sbcl-parachute)
         ("alexandria" ,sbcl-alexandria)))
      (inputs
       `(("documentation-utils" ,sbcl-documentation-utils)
         ("closer-mop" ,sbcl-closer-mop)
         ("array-utils" ,sbcl-array-utils)))
      (home-page "https://shirakumo.github.io/alloy/")
      (synopsis "Common Lisp user interface protocol and tolkit implementation")
      (description
       "Alloy is a user interface toolkit.  It is defined through a set of
protocols that allow for a clear interface, as well as a standardised way to
integrate Alloy into a target backend.")
      (license license:zlib))))

(define-public ecl-alloy
  (sbcl-package->ecl-package sbcl-alloy))

(define-public cl-alloy
  (sbcl-package->cl-source-package sbcl-alloy))

;; 20210527T213028+0100
(define-public sbcl-trial
  (let ((commit "ba178cac3a5528c570c7e8dad66c58cc770db53a")
        (revision "1"))
    (package
      (name "sbcl-trial")
      (version (git-version "1.2.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shirakumo/trial")
               (commit commit)))
         (file-name (git-file-name "trial" version))
         (sha256
          (base32 "1vpv9nrpq93fz1c5cyi1hazaaz9ijbrf1l7zwp7gammndr5v028r"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("alexandria" ,sbcl-alexandria)
         ("3d-vectors" ,sbcl-3d-vectors)
         ("3d-matrices" ,sbcl-3d-matrices)
         ("verbose" ,sbcl-verbose)
         ("deploy" ,sbcl-deploy)
         ("closer-mop" ,sbcl-closer-mop)
         ("trivial-garbage" ,sbcl-trivial-garbage)
         ("trivial-indent" ,sbcl-trivial-indent)
         ("bordeaux-threads" ,sbcl-bordeaux-threads)
         ("cl-opengl" ,sbcl-cl-opengl)
         ("cl-gamepad" ,sbcl-cl-gamepad)
         ("cl-ppcre" ,sbcl-cl-ppcre)
         ("pathname-utils" ,sbcl-pathname-utils)
         ("flare" ,sbcl-flare)
         ("for" ,sbcl-for)
         ("flow" ,sbcl-flow)
         ("glsl-toolkit" ,sbcl-glsl-toolkit)
         ("fast-io" ,sbcl-fast-io)
         ("ieee-floats" ,sbcl-ieee-floats)
         ("float-features" ,sbcl-float-features)
         ("lquery" ,sbcl-lquery)
         ("static-vectors" ,sbcl-static-vectors)
         ("pngload" ,sbcl-pngload)
         ("cl-tga" ,sbcl-cl-tga)
         ("cl-jpeg" ,sbcl-cl-jpeg)
         ("retrospectiff" ,sbcl-retrospectiff)
         ("terrable" ,sbcl-terrable)
         ("mmap" ,sbcl-mmap)
         ("messagebox" ,sbcl-messagebox)
         ("form-fiddle" ,sbcl-form-fiddle)
         ("lambda-fiddle" ,sbcl-lambda-fiddle)
         ("jsown" ,sbcl-jsown)
         ("zpng" ,sbcl-zpng)))
      (home-page "https://github.com/Shirakumo/trial")
      (synopsis "Common Lisp game engine")
      (description
       "Trial is a game engine written in Common Lisp.  Unlike many other
engines, it is meant to be more of a loose connection of components that can be
fit together as required by any particular game.")
      (license license:zlib))))

(define-public ecl-trial
  (sbcl-package->ecl-package sbcl-trial))

(define-public cl-trial
  (sbcl-package->cl-source-package sbcl-trial))

;; 20210527T203933+0100
(define-public sbcl-cl-gamepad
  (let ((commit "2bb8f9eef29f8968fd12d0b4060314bf925169ef")
        (revision "1"))
    (package
      (name "sbcl-cl-gamepad")
      (version (git-version "3.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shirakumo/cl-gamepad")
               (commit commit)))
         (file-name (git-file-name "cl-gamepad" version))
         (sha256
          (base32 "18b9fainnswm0fb7lhkrkx3dxipyw0s7lzdjyqw7mchxpvicz9rv"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:phases
         (modify-phases %standard-phases
                   (add-after 'unpack 'patch-evdev-lib-path
             (lambda* (#:key inputs #:allow-other-keys)
               (substitute* "evdev-cffi.lisp"
                 (("libevdev.so" all)
                  (string-append
                   (assoc-ref inputs "libevdev")
                   "/lib/" all))))))))
      (inputs
       `(("cffi" ,sbcl-cffi)
         ("documentation-utils" ,sbcl-documentation-utils)
         ("libevdev" ,libevdev)
         ("trivial-features" ,sbcl-trivial-features)))
      (home-page "https://shirakumo.github.io/cl-gamepad/")
      (synopsis "Library for access to gamepads and joystick input devices")
      (description
       "This is a library to provide cross-platform access to gamepads,
joysticks, and other such HID devices.")
      (license license:zlib))))

(define-public ecl-cl-gamepad
  (sbcl-package->ecl-package sbcl-cl-gamepad))

(define-public cl-gamepad
  (sbcl-package->cl-source-package sbcl-cl-gamepad))

;; 20210527T202249+0100
(define-public sbcl-flow
  (let ((commit "6d925af009cdfe033650d7048197a5e6ee937d15")
        (revision "1"))
    (package
      (name "sbcl-flow")
      (version (git-version "1.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shinmera/flow")
               (commit commit)))
         (file-name (git-file-name "flow" version))
         (sha256
          (base32 "0ysw1kwiqlf8kzllhnz8v3q40dmvwf83fzq8bfkbmwy5hfjh3pxp"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       ;; FIXME: (Sharlatan-20210527T203118+0100): FLOW-VISUALIZER requires
       ;; COMMONQT which is not packed yet and required tweaks with QT. Remove
       ;; this when it's ready.
       `(#:asd-files '("flow.asd")))
      (inputs
       `(("closer-mop" ,sbcl-closer-mop)
         ("documentation-utils" ,sbcl-documentation-utils)))
      (home-page "https://shinmera.github.io/flow/")
      (synopsis "Tools for the representation of graphs and flowcharts")
      (description
       "FLOW is a flowchart graph library.  Unlike other graphing libraries, this
one focuses on nodes in a graph having distinct @code{ports} through which
connections to other nodes are formed.  This helps in many concrete scenarios
where it is important to distinguish not only which nodes are connected, but
also how they are connected to each other.

Particularly, a lot of data flow and exchange problems can be reduced to such
a @code{flowchart}.  For example, an audio processing library may present its pipeline
as a flowchart of segments that communicate with each other through audio sample
buffers.  Flow gives a convenient view onto this kind of problem, and even allows
the generic visualisation of graphs in this format.")
      (license license:zlib))))

(define-public ecl-flow
  (sbcl-package->ecl-package sbcl-flow))

(define-public cl-flow
  (sbcl-package->cl-source-package sbcl-flow))

;; 20210526T224526+0100
(define-public sbcl-flare
  (let ((commit "4f9f17a4fc5b368c2a1988b9a20288695b8d8c48")
        (revision "1"))
    (package
      (name "sbcl-flare")
      (version (git-version "1.1.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shinmera/flare")
               (commit commit)))
         (file-name (git-file-name "flare" version))
         (sha256
          (base32 "00nm3sjngbflj2gd5q0xs2m136w4kix6krww23nk64pkkyq2fs86"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("3d-vectors" ,sbcl-3d-vectors)
         ("array-utils" ,sbcl-array-utils)
         ("documentation-utils" ,sbcl-documentation-utils)
         ("for" ,sbcl-for)
         ("lambda-fiddle" ,sbcl-lambda-fiddle)
         ("trivial-garbage" ,sbcl-trivial-garbage)))
      (home-page "https://shinmera.github.io/flare/")
      (synopsis "Easy particle systems with fine grained control")
      (description
       "FLARE is a library designed to allow quick and precise particle effect
creations.  It does not concern itself with displaying and only with the
management and movement of particles.  As such, it can easily be integrated into
any existing or future application.")
      (license license:zlib))))

(define-public ecl-flare
  (sbcl-package->ecl-package sbcl-flare))

(define-public cl-flare
  (sbcl-package->cl-source-package sbcl-flare))

;;<2021-05-12 Wed>
(define-public sbcl-chirp
  (let ((commit "01c79fa41939688216d1f86d0766a687becb0654")
        (revision "1"))
    (package
      (name "sbcl-chirp")
      (version (git-version "0.2.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shinmera/chirp")
               (commit commit)))
         (file-name (git-file-name "chirp" version))
         (sha256
          (base32 "10xlz1vwdv3jv48kmpndpnrg6672m0r5vsjgm2pksfl8bc05j2m0"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:asd-systems '("chirp-core" "chirp-dexador" "chirp-drakma" "chirp")))
      (inputs
       `(("alexandria" ,sbcl-alexandria)
         ("babel" ,sbcl-babel)
         ("cl-base64" ,sbcl-cl-base64)
         ("cl-ppcre" ,sbcl-cl-ppcre)
         ("dexador" ,sbcl-dexador)
         ("drakma" ,sbcl-drakma)
         ("flexi-streams" ,sbcl-flexi-streams)
         ("ironclad" ,sbcl-ironclad)
         ("local-time" ,sbcl-local-time)
         ("split-sequence" ,sbcl-split-sequence)
         ("uuid" ,sbcl-uuid)
         ("yason" ,sbcl-yason)))
      (home-page "https://shinmera.github.io/chirp/")
      (synopsis "Twitter client library for Common Lisp")
      (description
       "This package provides a Common Lisp systems utilizing Tweeter API:
CHIRP, CHIRP-CORE, CHIRP-DEXADOR, CHIRP-DRAKMA")
      (license license:zlib))))

(define-public ecl-chirp
  (sbcl-package->ecl-package sbcl-chirp))

(define-public cl-chirp
  (sbcl-package->cl-source-package sbcl-chirp))

;; <2021-05-08 Sat>
(define-public sbcl-simple-tasks
  (let ((commit "745d4b54eac9bf5d6909792e63ecd2ef8d303cf2")
        (revision "1"))
    (package
      (name "sbcl-simple-tasks")
      (version (git-version "1.3.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shinmera/simple-tasks")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32
           "1ls1pij7dvb65g4nam7nvik1218jvfk5iplr48vy290fw3lq7v98"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("array-utils" ,sbcl-array-utils)
         ("bordeaux-threads" ,sbcl-bordeaux-threads)
         ("dissect" ,sbcl-dissect)))
      (home-page "https://shinmera.github.io/simple-tasks/")
      (synopsis "Simple task scheduling framework")
      (description
       "Task scheduling framework for Common Lisp.")
      (license license:zlib))))

(define-public ecl-simple-tasks
  (sbcl-package->ecl-package sbcl-simple-tasks))

(define-public cl-simple-tasks
  (sbcl-package->cl-source-package sbcl-simple-tasks))

;; <2021-05-08 Sat>
(define-public sbcl-trivial-main-thread
  (let ((commit "25f114973bb69eb63e01d0bbfead31f8e682846a")
        (revision "1"))
    (package
      (name "sbcl-trivial-main-thread")
      (version (git-version "1.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shinmera/trivial-main-thread")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0bw1887i7396lqg75qvmgjfzz4xbiq9w5dp8wxdgrcsm0qwlraw7"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("bordeaux-threads" ,sbcl-bordeaux-threads)
         ("simple-tasks" ,sbcl-simple-tasks)
         ("trivial-features" ,sbcl-trivial-features)))
      (home-page "https://shinmera.github.io/trivial-main-thread/")
      (synopsis "Compatibility library to run things in the main thread")
      (description
       "This package provides a Common Lisp system which wraps BORDEUX-THREADS
system to be compatible to run GUI applications in the main thread of the
implementation.")
      (license license:zlib))))

(define-public ecl-trivial-main-thread
  (sbcl-package->ecl-package sbcl-trivial-main-thread))

(define-public cl-trivial-main-thread
  (sbcl-package->cl-source-package sbcl-trivial-main-thread))

;; <2021-05-08 Sat>
(define-public sbcl-for
  (let ((commit "2e4fcfa0f9c1d2f4559c58cef20ccefa50ba180d")
        (revision "1"))
    (package
      (name "sbcl-for")
      (version (git-version "1.1.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shinmera/for")
               (commit commit)))
         (file-name (git-file-name "for" version))
         (sha256
          (base32 "1akz9ggh33x2cq3h0f1cd0p632v1mbagv3dzsb0r10bwg9lh3nmv"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("documentation-utils" ,sbcl-documentation-utils)
         ("form-fiddle" ,sbcl-form-fiddle)
         ("lambda-fiddle" ,sbcl-lambda-fiddle)))
      (home-page "https://shinmera.github.io/for/")
      (synopsis "Extensible iteration macro library")
      (description
       "For is a library for an extensible iteration macro.  It allows you to write
concise looping constructs similar to @code{loop} and @code{iterate}.  Unlike
loop however it is extensible and sensible, and unlike iterate it does not
require code-walking and is easier to extend.")
      (license license:zlib))))

(define-public ecl-for
  (sbcl-package->ecl-package sbcl-for))

(define-public cl-for
  (sbcl-package->cl-source-package sbcl-for))

;; <2021-05-08 Sat>
(define-public sbcl-glsl-toolkit
  (let ((commit "d00ba1906e3b5eb08ea346ac300a1e77bb999d04")
        (revision "1"))
    (package
      (name "sbcl-glsl-toolkit")
      (version (git-version "1.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shirakumo/glsl-toolkit")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0as5796yazchq1qkna3srxlz5v7cf7ffny9cbqi41wsa2s20vbh9"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("cl-ppcre" ,sbcl-cl-ppcre)
         ("documentation-utils" ,sbcl-documentation-utils)
         ("parse-float" ,sbcl-parse-float)
         ("trivial-indent" ,sbcl-trivial-indent)))
      (home-page "https://shirakumo.github.io/glsl-toolkit/")
      (synopsis "Parser for OpenGL Shader Language source files")
      (description
       "This package provides Common Lisp system collecting tools written to
allow to wrangle OpenGL Shader Language (GLSL) source files.")
      (license license:zlib))))

(define-public ecl-glsl-toolkit
  (sbcl-package->ecl-package sbcl-glsl-toolkit))

(define-public cl-glsl-toolkit
  (sbcl-package->cl-source-package sbcl-glsl-toolkit))

;; <2021-05-08 Sat>
(define-public sbcl-messagebox
  (let ((commit "ea3688d9a9954bee7079c0173bc7b3f327021e9f")
        (revision "1"))
    (package
      (name "sbcl-messagebox")
      (version (git-version "1.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shinmera/messagebox")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0jkbzlca0wvspgsfj0b0hjwlyyy8jlywsldsbkp79q48fc3aa8jd"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("documentation-utils" ,sbcl-documentation-utils)
         ("trivial-features" ,sbcl-trivial-features)))
      (home-page "https://shinmera.github.io/messagebox/")
      (synopsis "Display a native GUI message box")
      (description
       "This is a small library to display a native GUI message box.  This can be
useful to show error messages and other informational pieces should the
application fail and be unable to do so using its standard UI.")
      (license license:zlib))))

(define-public ecl-messagebox
  (sbcl-package->ecl-package sbcl-messagebox))

(define-public cl-messagebox
  (sbcl-package->cl-source-package sbcl-messagebox))

;; <2021-05-03 Mon>
(define-public sbcl-3d-matrices
  (let ((commit "f453b521b8f2ceabb01eac94389119dece8c05f8")
        (revision "1"))
    (package
      (name "sbcl-3d-matrices")
      (version (git-version "3.1.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shinmera/3d-matrices")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "10q9c96gqzq6k8n89agy0khgimmnsn4s69171m3vhghqa2yv5n6v"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:asd-files '("3d-matrices.asd")
         #:asd-systems '("3d-matrices")))
      (native-inputs
       `(("parachute" ,sbcl-parachute)))
      (inputs
       `(("documentation-utils" ,sbcl-documentation-utils)
         ("3d-vectors" ,sbcl-3d-vectors)))
      (home-page "https://shinmera.github.io/3d-matrices/")
      (synopsis "Utility library implementing 2x2, 3x3, 4x4, and NxM matrix functionality")
      (description
       "@code{3D-MATRICES} is a library implementing common matrix operations,
mainly intended as the counterpiece to @code{3d-vectors} and thus being aimed at
operations in 3D space.")
      (license license:zlib))))

(define-public ecl-3d-matrices
  (sbcl-package->ecl-package sbcl-3d-matrices))

(define-public 3d-matrices
  (sbcl-package->cl-source-package sbcl-3d-matrices))

;; <2021-05-03 Mon>
(define-public sbcl-3d-vectors
  (let ((commit "29bb9684df803590deed344af63dbf7b712aabc0")
        (revision "1"))
    (package
      (name "sbcl-3d-vectors")
      (version (git-version "3.1.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shinmera/3d-vectors")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0qc7m5brhpwi531rgmlaj1c609by533a1ia5hv8f90ilm8ksmw3l"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:asd-files '("3d-vectors.asd")
         #:asd-systems '("3d-vectors")))
      (native-inputs
       `(("parachute" ,sbcl-parachute)))
      (inputs
       `(("documentation-utils" ,sbcl-documentation-utils)))
      (home-page "https://shinmera.github.io/3d-vectors/")
      (synopsis "Utility library implementing 2D, 3D, and 4D vector functionality")
      (description
       "@code{3D-VECTORS} is a library for vector math in 3D space.  It contains
most of the vector operations one would usually expect out of such a library and
offers them both in non-modifying and modifying versions where applicable.")
      (license license:zlib))))

(define-public ecl-3d-vectors
  (sbcl-package->ecl-package sbcl-3d-vectors))

(define-public 3d-vectors
  (sbcl-package->cl-source-package sbcl-3d-vectors))

;; <2021-04-22>
(define-public sbcl-terrable
  (let ((commit "e4fe23ffa08e8d53a8168105b413861da59cc786")
        (revision "1"))
    (package
     (name "sbcl-terrable")
     (version (git-version "1.0.0" revision commit))
     (source
      (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Shirakumo/terrable")
             (commit commit)))
       (file-name (git-file-name name version))
       (sha256
        (base32
         "0pnqflgz410zydc1ivwnd8hcl24bgr7x12yjzr7g4lq3ibc8y97b"))))
     (build-system asdf-build-system/sbcl)
     (inputs
      `(("documentation-utils" ,sbcl-documentation-utils)
        ("fast-io" ,sbcl-fast-io)
        ("ieee-floats" ,sbcl-ieee-floats)
        ("static-vectors" ,sbcl-static-vectors)
        ("trivial-garbage" ,sbcl-trivial-garbage)))
     (home-page "https://shirakumo.github.io/terrable/")
     (synopsis "File parser library for Terragen TER terrain files")
     (description
      "This package provides Common Lisp support for rendering format
Terragen+@code{.TER}. Format specification could be found
here+@url{https://planetside.co.uk/wiki/index.php?title=Terragen_.TER_Format}")
     (license license:zlib))))

(define-public ecl-terrable
  (sbcl-package->ecl-package sbcl-terrable))

(define-public cl-terrable
  (sbcl-package->cl-source-package sbcl-terrable))

;; <2021-04-21>
(define-public sbcl-pathname-utils
  (let ((commit "70f517e44e13a38e0c8f296613236376d679fa8f")
        (revision "1"))
    (package
     (name "sbcl-pathname-utils")
     (version (git-version "1.1.0" revision commit))
     (source
      (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Shinmera/pathname-utils")
             (commit commit)))
       (file-name (git-file-name name version))
       (sha256
        (base32
         "1zm4bf6gajpgmhr7zwf7600zlaf8fs1fcyzabqsh2ma2crkgqdxq"))))
     (build-system asdf-build-system/sbcl)
     (native-inputs
      `(("parachute" ,sbcl-parachute)))
     (home-page "https://shinmera.github.io/pathname-utils")
     (synopsis "Collection of utilities to help with pathname operations")
     (description
      "This package provides Common Lisp system with collection of common tests
and operations to help handling pathnames.  It does not actually deal in handling
the accessing of files on the underlying system however.")
     (license license:zlib))))

(define-public ecl-pathname-utils
  (sbcl-package->ecl-package sbcl-pathname-utils))

(define-public cl-pathname-utils
  (sbcl-package->cl-source-package sbcl-pathname-utils))

(define-public sbcl-verbose
  (let ((commit "c5b7ecd465be61b35af17ef57564697b88397174")
        (revision "1"))
    (package
      (name "sbcl-verbose")
      (version (git-version "2.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shinmera/verbose/")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0r51ydj5v7afi2jrlscbhxprv13d9vzg5316g1yzwaxc1kzsdsw6"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("piping" ,sbcl-piping)
         ("local-time" ,sbcl-local-time)
         ("bordeaux-threads" ,sbcl-bordeaux-threads)
         ("dissect" ,sbcl-dissect)
         ("documentation-utils" ,sbcl-documentation-utils)))
      (home-page "https://shinmera.github.io/verbose/")
      (synopsis "Logging framework using the piping library")
      (description
       "A Common Lisp library providing logging faciltiy similar to
@code{CL-LOG}, @code{LOG4CL}.

This package produces 1 system: @code{VERBOSE}")
      (license license:zlib))))

(define-public ecl-verbose
  (sbcl-package->ecl-package sbcl-verbose))

(define-public cl-verbose
  (sbcl-package->cl-source-package sbcl-verbose))

(define-public sbcl-trivial-arguments
  (let ((commit "ecd84ed9cf9ef8f1e873d7409e6bd04979372aa7")
        (revision "1"))
    (package
      (name "sbcl-trivial-arguments")
      (version (git-version "1.1.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shinmera/trivial-arguments")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "02vaqfavhj8jqxnr68nnzvzshm8jbgcy6m9lvyv4daa6f7ihqf88"))))
      (build-system asdf-build-system/sbcl)
      (home-page "https://github.com/Shinmera/trivial-arguments")
      (synopsis "Tiny Common Lisp library to retrieve the arguments list of a function")
      (description
       "A simple library to retrieve the lambda-list of a function.

This package produces 1 system: @code{TRIVIAL-ARGUMENTS}")
      (license license:zlib))))

(define-public ecl-trivial-arguments
  (sbcl-package->ecl-package sbcl-trivial-arguments))

(define-public cl-trivial-arguments
  (sbcl-package->cl-source-package sbcl-trivial-arguments))

(define-public sbcl-piping
  (let ((commit "c7a4163c00dea7e72bf6ad33d6abac0d5826a656")
        (revision "1"))
    (package
      (name "sbcl-piping")
      (version (git-version "2.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shinmera/piping/")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0in84qnfkynm36d4n4d6v87vprpi27xrydnga462wfhplji6klv5"))))
      (build-system asdf-build-system/sbcl)
      (home-page "https://shinmera.github.io/piping/")
      (synopsis "Library to enable simple message pipelines")
      (description
       "A Common Lisp library to enable simple message pipelines.

This package produces 1 system: @code{PIPING}")
      (license license:zlib))))

(define-public ecl-piping
  (sbcl-package->ecl-package sbcl-piping))

(define-public cl-piping
  (sbcl-package->cl-source-package sbcl-piping))

(define-public sbcl-modularize-hooks
  (let ((commit "e0348ed3ffd59a9ec31ca4ab28289e748bfbf96a")
        (revision "1"))
    (package
      (name "sbcl-modularize-hooks")
      (version (git-version "1.0.2" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shinmera/modularize-hooks")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "12kjvin8hxidwkzfb7inqv5b6g5qzcssnj9wc497v2ixc56fqdz7"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("modularize" ,sbcl-modularize)
         ("closer-mop" ,sbcl-closer-mop)
         ("trivial-arguments" ,sbcl-trivial-arguments)
         ("lambda-fiddle" ,sbcl-lambda-fiddle)))
      (home-page "https://shinmera.github.io/modularize-hooks/")
      (synopsis "Programmatical interfaces extension for Modularize")
      (description
       "This is a simple extension to @code{MODULARIZE} that allows modules to
define and trigger hooks, which other modules can hook on to.

This package produces 1 system: @code{MODULARIZE-HOOKS}")
      (license license:zlib))))

(define-public ecl-modularize-hooks
  (sbcl-package->ecl-package sbcl-modularize-hooks))

(define-public cl-modularize-hooks
  (sbcl-package->cl-source-package sbcl-modularize-hooks))

(define-public sbcl-modularize-interfaces
  (let ((commit "96353657afb8c7aeba7ef5b51eb04c5ed3bcb6ef")
        (revision "1"))
    (package
      (name "sbcl-modularize-interfaces")
      (version (git-version "0.9.3" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shinmera/modularize-interfaces")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0bjf4wy39cwf75m7vh0r7mmcchs09yz2lrbyap98hnq8blq70fhc"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("modularize" ,sbcl-modularize)
         ("trivial-indent" ,sbcl-trivial-indent)
         ("trivial-arguments" ,sbcl-trivial-arguments)
         ("lambda-fiddle" ,sbcl-lambda-fiddle)))
      (home-page "https://shinmera.github.io/modularize-interfaces/")
      (synopsis "Programmatical interfaces extension for Modularize")
      (description
       "This is an extension to @code{MODULARIZE} that allows your application to
define interfaces in-code that serve both as a primary documentation and as
compliance control.

This package produces 1 system: @code{MODULARIZE-INTERFACES}")
      (license license:zlib))))

(define-public ecl-modularize-interfaces
  (sbcl-package->ecl-package sbcl-modularize-interfaces))

(define-public cl-modularize-interfaces
  (sbcl-package->cl-source-package sbcl-modularize-interfaces))

(define-public sbcl-cl-mpg123
  (let ((commit "5f042c839d2ea4a2ff2a7b60c839d8633d64161d")
        (revision "1"))
    (package
      (name "sbcl-cl-mpg123")
      (version (git-version "1.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shirakumo/cl-mpg123")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "1hl721xaczxck008ax2y3jpkm509ry1sg3lklh2k76764m3ndrjf"))
         (modules '((guix build utils)))
         (snippet
          '(begin
             ;; Remove bundled pre-compiled libraries.
             (delete-file-recursively "static")
             #t))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:asd-files '("cl-mpg123.asd" "cl-mpg123-example.asd")
         #:asd-systems '("cl-mpg123" "cl-mpg123-example")
         #:phases
         (modify-phases %standard-phases
           (add-after 'unpack 'fix-paths
             (lambda* (#:key inputs #:allow-other-keys)
               (substitute* "low-level.lisp"
                 (("libmpg123.so" all)
                  (string-append (assoc-ref inputs "libmpg123")
                                        "/lib/" all))))))))
      (inputs
       `(("cffi" ,sbcl-cffi)
         ("cl-out123" ,sbcl-cl-out123)
         ("documentation-utils" ,sbcl-documentation-utils)
         ("libmpg123" ,mpg123)
         ("trivial-features" ,sbcl-trivial-features)
         ("trivial-garbage" ,sbcl-trivial-garbage)
         ("verbose" ,sbcl-verbose)))
      (home-page "https://shirakumo.github.io/cl-mpg123/")
      (synopsis "Bindings to libmpg123, allowing fast MPG1/2/3 decoding")
      (description
       "This is a bindings and wrapper library to @code{libmpg123} allowing for
convenient, extensive, and fast decoding of MPEG1/2/3 (most prominently mp3)
files.

This package produces 2 systems: @code{CL-MPG123} @code{CL-MPG123-EXAMPLE}")
      (license license:zlib))))

(define-public ecl-cl-mpg123
  (sbcl-package->ecl-package sbcl-cl-mpg123))

(define-public cl-mpg123
  (sbcl-package->cl-source-package sbcl-cl-mpg123))

(define-public sbcl-cl-out123
  (let ((commit "6b58d3f8c2a28ad09059ac4c60fb3c781b9b421b")
        (revision "1"))
    (package
      (name "sbcl-cl-out123")
      (version (git-version "1.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shirakumo/cl-out123")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0mdwgfax6sq68wvdgjjp78i40ah7wqkpqnvaq8a1c509k7ghdgv1"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:phases
         (modify-phases %standard-phases
           ;; NOTE: (Sharlatan-20210127T215142+0000): Project includes compiled
           ;; libraries in `static' which are available in Guix under `mpg123'
           ;; package - removing whole `static' directory.
           (add-after 'unpack 'clean-up
             (lambda _
               (delete-file-recursively "static")
               #t))
           (add-after 'unpack 'fix-paths
             (lambda* (#:key inputs #:allow-other-keys)
               (substitute* "low-level.lisp"
                 (("libout123.so" all) (string-append
                                        (assoc-ref inputs "libout123")
                                        "/lib/" all)))))
           ;; NOTE: (Sharlatan-20210129T134529+0000): ECL package `ext' has no
           ;; exported macro `without-interrupts' it's moved to `mp' package
           ;; https://github.com/Shirakumo/cl-out123/issues/2
           ;; https://gitlab.com/embeddable-common-lisp/ecl/-/blob/develop/src/lsp/mp.lsp
           (add-after 'unpack 'fix-ecl-package-name
             (lambda _
               (substitute* "wrapper.lisp"
                 (("ext:without-interrupts.*") "mp:without-interrupts\n"))
               #t)))))
      (inputs
       `(("libout123" ,mpg123)
         ("cffi" ,sbcl-cffi)
         ("trivial-features" ,sbcl-trivial-features)
         ("trivial-garbage" ,sbcl-trivial-garbage)
         ("documentation-utils" ,sbcl-documentation-utils)
         ("bordeaux-threads" ,sbcl-bordeaux-threads)))
      (home-page "https://shirakumo.github.io/cl-out123/")
      (synopsis "Bindings to libout123, allowing cross-platform audio output")
      (description
       "This is a bindings library to @code{libout123} which allows easy
cross-platform audio playback.

This package produces 1 system: @code{CL-OUT123}")
      (license license:zlib))))

(define-public ecl-cl-out123
  (sbcl-package->ecl-package sbcl-cl-out123))

(define-public cl-out123
  (sbcl-package->cl-source-package sbcl-cl-out123))

(define-public sbcl-modularize
  (let ((commit "86c5d9a11fbd2df9f0f03ac10b5d71837c8934ba")
        (revision "1"))
    (package
      (name "sbcl-modularize")
      (version (git-version "1.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shinmera/modularize")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "1zys29rfkb649rkgl3snxhajk8d5yf7ryxkrwy020kwdh7zdsg7d"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:test-asd-file "modularize-test-module.asd"
         #:asd-files '("modularize.asd" "modularize-test-module.asd")
         #:asd-systems '("modularize" "modularize-test-module")))
      (inputs
       `(("documentation-utils" ,sbcl-documentation-utils)
         ("trivial-package-local-nicknames" ,sbcl-trivial-package-local-nicknames)))
      (home-page "https://shinmera.github.io/modularize/")
      (synopsis "Common Lisp modularization framework")
      (description
       "@code{MODULARIZE} is an attempt at providing a common interface to
segregate major application components.  This is achieved by adding special
treatment to packages.  Each module is a package that is specially registered,
which allows it to interact and co-exist with other modules in better ways.  For
instance, by adding module definition options you can introduce mechanisms to
tie modules together in functionality, hook into each other and so on.

This package produces 1 system: @code{MODULARIZE}")
      (license license:zlib))))

(define-public ecl-modularize
  (sbcl-package->ecl-package sbcl-modularize))

(define-public cl-modularize
  (sbcl-package->cl-source-package sbcl-modularize))

(define-public sbcl-deploy
  (let ((commit "9b20e64fe924b9e31832304d87a3a72c383dc6d8")
        (revision "1"))
    (package
      (name "sbcl-deploy")
      (version (git-version "1.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shinmera/deploy")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "07pfkibaridihg8lbq2czwa4iqifqk24n6rx7bfnv7i49p1ppja1"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:test-asd-file "deploy-test.asd"
         #:asd-files
         '("deploy.asd"
           "deploy-test.asd")))
      (inputs
       `(("cffi" ,sbcl-cffi)
         ("cl-mpg123" ,sbcl-cl-mpg123)
         ("cl-out123" ,sbcl-cl-out123)
         ("documentation-utils" ,sbcl-documentation-utils)
         ("trivial-features" ,sbcl-trivial-features)))
      (home-page "https://shinmera.github.io/deploy/")
      (synopsis "Deployment tools for standalone Common Lisp applications ")
      (description
       "This package provides functionality to deploy standalone Common Lisp
applications as binaries, it's based on @code{(asdf:make)} and similar to
@code{buildapp}.

This package produces 1 system: @code{DEPLOY}")
      (license license:zlib))))

(define-public ecl-deploy
  (sbcl-package->ecl-package sbcl-deploy))

(define-public cl-deploy
  (sbcl-package->cl-source-package sbcl-deploy))

(define-public sbcl-ubiquitous
  (let ((commit "35eb7bd9e1b3daee1705f6b41260775180cce8af")
        (revision "1"))
    (package
      (name "sbcl-ubiquitous")
      (version (git-version "2.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shinmera/ubiquitous")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "1xlkaqmjcpkiv2xl2s2pvvrv976dlc846wm16s1lj62iy1315i49"))))
      (build-system asdf-build-system/sbcl)
      (propagated-inputs
       `(("bordeaux-threads" ,sbcl-bordeaux-threads)))
      (home-page "https://shinmera.github.io/ubiquitous/")
      (synopsis "Provides universal application configuration mechanism")
      (description
       "@code{UBIQUITOUS} is a very easy-to-use library for persistent
configuration storage.  It automatically takes care of finding a suitable place
to save your data, and provides simple functions to access and modify the data
within.

This package produces 2 systems: @code{UBIQUITOUS} @code{UBIQUITOUS-CONCURRENT}")
      (license license:zlib))))

(define-public ecl-ubiquitous
  (sbcl-package->ecl-package sbcl-ubiquitous))

(define-public cl-ubiquitous
  (sbcl-package->cl-source-package sbcl-ubiquitous))

(define-public sbcl-radiance
  (let ((commit "5ffbe1f157edd17a13194495099efd81e052df85")
        (revision "1"))
    (package
     (name "sbcl-radiance")
     (version (git-version "2.1.2" revision commit))
     (source
      (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Shirakumo/radiance")
             (commit commit)))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0hbkcnmnlj1cqzbv18zmla2iwbl65kxilz9764hndf8x8as1539c"))))
     (build-system asdf-build-system/sbcl)
     (arguments
      `(#:asd-files '("radiance-core.asd" "radiance.asd")
        #:asd-systems '("radiance-core" "radiance")))
     (inputs
      `(("babel" ,sbcl-babel)
        ("bordeaux-threads" ,sbcl-bordeaux-threads)
        ("cl-ppcre" ,sbcl-cl-ppcre)
        ("closer-mop" ,sbcl-closer-mop)
        ("documentation-utils" ,sbcl-documentation-utils)
        ("deploy" ,sbcl-deploy)
        ("form-fiddle" ,sbcl-form-fiddle)
        ("lambda-fiddle" ,sbcl-lambda-fiddle)
        ("local-time" ,sbcl-local-time)
        ("modularize-hooks" ,sbcl-modularize-hooks)
        ("modularize-interfaces" ,sbcl-modularize-interfaces)
        ("puri" ,sbcl-puri)
        ("trivial-indent" ,sbcl-trivial-indent)
        ("trivial-mimes" ,sbcl-trivial-mimes)))
     (propagated-inputs
      `(("ubiquitous-concurrent" ,sbcl-ubiquitous)))
     (home-page "https://shirakumo.github.io/radiance/")
     (synopsis "Common Lisp web application environment")
     (description
      "Radiance is a web application environment, which is sort of like a web
framework, but more general, more flexible.  It should let you write personal
websites and generally deployable applications easily and in such a way that
they can be used on practically any setup without having to undergo special
adaptations.

This package produces 2 systems: @code{RADIANCE} @code{RADIANCE-CORE}")
      (license license:zlib))))

(define-public ecl-radiance
  (sbcl-package->ecl-package sbcl-radiance))

(define-public cl-radiance
  (sbcl-package->cl-source-package sbcl-radiance))
;;+end-shirakumo

;;+begin-misc

(define-public sbcl-uax-15
  (let ((commit "a3f17a053cf6f6091c44c8036a0b5fc171be6e23")
         (revision "1"))
  (package
    (name "sbcl-uax-15")
    (version (git-version "0.0.0" revision commit))
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/sabracrolleton/uax-15")
                    (commit commit)))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0qabzwijhcs7z8spls636nklxr0xzl65402ab2niaj4mr8pwb8ll"))))
    (build-system asdf-build-system/sbcl)
    (inputs
     `(("split-sequence" ,sbcl-split-sequence)
       ("cl-ppcre" ,sbcl-cl-ppcre)))
    (arguments
     `(#:asd-files '("uax-15.asd")
       #:asd-systems '("uax-15/tests"
                       "uax-15")))
    (home-page "https://github.com/sabracrolleton/uax-15")
    (synopsis "Common Lisp implementation of unicode normalization functions")
    (description "This package supports UNICODE normalization and providing
support for RFC8264 and RFC7564.")
    (license license:expat))))

(define-public ecl-asdf-uax-15
  (sbcl-package->ecl-package sbcl-uax-15))

(define-public cl-asdf-uax-15
  (sbcl-package->cl-source-package sbcl-uax-15))

(define-public sbcl-trivial-timeout
  (let ((commit "feb869357f40f5e109570fb40abad215fb370c6c")
        (revision "1"))
    (package
      (name "sbcl-trivial-timeout")
      (version (git-version "0.1.5" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/gwkkwg/trivial-timeout/")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "1kninxwvvih9nhh7a9y8lfgi7pdr76675y1clw4ss17vz8fbim5p"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       ;; NOTE: (Sharlatan-20210202T231437+0000): Due to the age of this library
       ;; tests use some deprecated functionality and keep failing.
       `(#:tests? #f))
      (home-page "https://github.com/gwkkwg/trivial-timeout/")
      (synopsis "OS and Implementation independent access to timeouts")
      (description
       "Portable and possibly dangerous timeout library for Common Lisp.

This package provides 1 system: @code{TRIVIAL-TIMEOUT}")
      (license license:expat))))

(define-public ecl-trivial-timeout
  (sbcl-package->ecl-package sbcl-trivial-timeout))

(define-public cl-trivial-timeout
  (sbcl-package->cl-source-package sbcl-trivial-timeout))

(define-public sbcl-specialization-store
  (let ((commit "8d39a866a6f24986aad3cc52349e9cb2653496f3")
        (revision "1"))
    (package
      (name "sbcl-specialization-store")
      (version (git-version "0.0.5" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/markcox80/specialization-store")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0r0bgb46q4gy72l78s7djkxq8ibb4bb3yh9brsry5lih7br8lhi0"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:asd-systems
         '("specialization-store"
           "specialization-store-features")))
      (inputs
       `(("alexandria" ,sbcl-alexandria)
         ("introspect-environment" ,sbcl-introspect-environment)))
      (home-page "https://github.com/markcox80/specialization-store")
      (synopsis "Different type of generic function for Common Lisp")
      (description
       "SPECIALIZATION-STORE system provides a new kind of function, called
a store function, whose behavior depends on the types of objects passed to the
function.

 This package provides 2 systems: @code{SPECIALIZATION-STORE}
@code{SPECIALIZATION-STORE-FEATURES}")
      (license license:bsd-3))))

(define-public ecl-specialization-store
  (sbcl-package->ecl-package sbcl-specialization-store))

(define-public cl-specialization-store
  (sbcl-package->cl-source-package sbcl-specialization-store))

(define-public sbcl-py-configparser
  ;; NOTE: (Sharlatan <2021-01-05 Tue> <19:52:19 UTC+0000>) Project updated last
  ;; time 8y ago, it looks like abandoned. VCS of the project:
  ;; https://svn.common-lisp.net/py-configparser/trunk
  (let ((url "https://common-lisp.net/project/py-configparser/releases/")
        (name-origin "py-configparser"))
    (package
     (name "sbcl-py-configparser")
     (version "1.0.3")
     (source (origin
              (method url-fetch)
              (uri (string-append url name-origin "-" version ".tar.gz"))
            (sha256
             (base32
              "0i4rqz5cv7d7c2w81x5lwy05s6fbi3zikf4k5kpi3bkx3cabwdxj"))))
   (build-system asdf-build-system/sbcl)
   (inputs
    `(("parse-number" ,sbcl-parse-number)))
   (home-page "http://common-lisp.net/project/py-configparser/")
   (synopsis "It implements the ConfigParser Python module functionality in Common Lisp")
   (description "The py-configparser package implements the ConfigParser Python
module functionality in Common Lisp.  In short, it implements reading and writing
of .INI-file style configuration files with sections containing key/value pairs
of configuration options.  In line with the functionalities in the python module,
does this package implement basic interpolation of option values in other
options.")
   (license license:expat))))

(define-public cl-py-configparser
  (sbcl-package->cl-source-package sbcl-py-configparser))

(define-public ecl-py-configparser
  (sbcl-package->ecl-package sbcl-py-configparser))

(define-public sbcl-postmodern
  (package
    (name "sbcl-postmodern")
    (version "1.32.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/marijnh/Postmodern")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0bfx0hcb9wv47qd334xs0fpmisl75dpvasq1zai210s5wqg0km6d"))))
    (build-system asdf-build-system/sbcl)

    (native-inputs
     `(("fiveam" ,sbcl-fiveam)))
    (inputs
     `(("alexandria" ,sbcl-alexandria)
       ("bordeaux-threads" ,sbcl-bordeaux-threads)
       ("cl-base64" ,sbcl-cl-base64)
       ("cl-unicode" ,sbcl-cl-unicode)
       ("closer-mop" ,sbcl-closer-mop)
       ("global-vars" ,sbcl-global-vars)
       ("ironclad" ,sbcl-ironclad)
       ("local-time" ,sbcl-local-time)
       ("md5" ,sbcl-md5)
       ("split-sequence" ,sbcl-split-sequence)
       ("uax-15" ,sbcl-uax-15)
       ("usocket" ,sbcl-usocket)))
    (arguments
     `(#:tests? #f
       #:asd-systems '("postmodern"
                       "cl-postgres"
                       "s-sql"
                       "simple-date")))
    (synopsis "Common Lisp library for interacting with PostgreSQL")
    (description
     "@code{postmodern} is a Common Lisp library for interacting with
PostgreSQL databases.  It provides the following features:

@itemize
@item Efficient communication with the database server without need for
foreign libraries.
@item Support for UTF-8 on Unicode-aware Lisp implementations.
@item A syntax for mixing SQL and Lisp code.
@item Convenient support for prepared statements and stored procedures.
@item A metaclass for simple database-access objects.
@end itemize\n

This package produces 4 systems: postmodern, cl-postgres, s-sql, simple-date

@code{SIMPLE-DATE} is a very basic implementation of date and time objects, used
to support storing and retrieving time-related SQL types.  It is not loaded by
default and you can use local-time (which has support for timezones) instead.

@code{CL-POSTGRES} is the low-level library used for interfacing with a PostgreSQL
server over a socket.

@code{S-SQL} is used to compile s-expressions to strings of SQL code, escaping
any Lisp values inside, and doing as much as possible of the work at compile
time.

@code{Postmodern} itself is a wrapper around these packages and provides higher
level functions, a very simple data access object that can be mapped directly to
database tables and some convient utilities.  It then tries to put all these
things together into a convenient programming interface")
    (home-page "https://marijnhaverbeke.nl/postmodern/")
    (license license:zlib)))

(define-public cl-postmodern
  (sbcl-package->cl-source-package sbcl-postmodern))

(define-public ecl-postmodern
  (sbcl-package->ecl-package sbcl-postmodern))

(define-public sbcl-garbage-pools
  (let ((commit "9a7cb7f48b04197c0495df3b6d2e8395ad13f790")
        (revision "1"))
    (package
      (name "sbcl-garbage-pools")
      (version (git-version "0.1.2" revision commit))
      (source (origin
                (method git-fetch)
                (uri (git-reference
                      (url "https://github.com/archimag/garbage-pools")
                      (commit commit)))
                (file-name (git-file-name name version))
                (sha256
                 (base32
                  "04jqwr6j138him6wc4nrwjzm4lvyj5j31xqab02nkf8h9hmsf5v1"))))
      (build-system asdf-build-system/sbcl)
      (home-page "https://github.com/archimag/garbage-pools")
      (synopsis "Implementation pools for resource management")
      (description "GARBAGE-POOLS is Common Lisp re-implementation of the APR
Pools for resource management.")
      (license license:expat))))

(define-public ecl-garbage-pools
  (sbcl-package->ecl-package sbcl-garbage-pools))

(define-public cl-garbage-pools
  (sbcl-package->cl-source-package sbcl-garbage-pools))

(define-public sbcl-dynamic-classes
  (package
    (name "sbcl-dynamic-classes")
    (version "1.0.2")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/gwkkwg/dynamic-classes")
                    (commit (string-append "version-" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1z3ag6w4ff0v6715xa9zhvwjqnp4i6zrjfmxdz8m115sklbwgm6c"))))
    (build-system asdf-build-system/sbcl)
    (inputs
     `(("metatilities-base" ,sbcl-metatilities-base)))
    (arguments
     ;; NOTE: (Sharlatan-20210106222900+0000) Circular dependencies and failing
     ;; test suites. lift-standard.config contains referances to depricated
     ;; functionality.
     `(#:tests? #f))
    (home-page "https://common-lisp.net/project/dynamic-classes/")
    (synopsis "Classes how you want them, when you want them")
    (description "Dynamic-Classes helps to easy prototyping process.")
    (license license:expat)))

(define-public ecl-dynamic-classes
  (sbcl-package->ecl-package sbcl-dynamic-classes))

(define-public cl-dynamic-classes
  (sbcl-package->cl-source-package sbcl-dynamic-classes))

(define-public sbcl-cl-markdown
  ;; NOTE: (Sharlatan-20210106214629+0000) latest version tag
  ;; "version-0.10.6_version-0.10.6" is failing to build due to missing system
  ;; #:container-dynamic-classes
  (package
    (name "sbcl-cl-markdown")
    (version "0.10.4")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/gwkkwg/cl-markdown")
                    (commit (string-append "version-" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1wdjbdd1zyskxf7zlilcp6fmwkivybj0wjp64vvzb265d5xi7p8p"))))
    (build-system asdf-build-system/sbcl)
    (inputs
     `(("anaphora" ,sbcl-anaphora)
       ("cl-containers" ,sbcl-cl-containers)
       ("cl-ppcre" ,sbcl-cl-ppcre)
       ("dynamic-classes" ,sbcl-dynamic-classes)
       ("metabang-bind" ,sbcl-metabang-bind)
       ("metatilities-base" ,sbcl-metatilities-base)))
    (arguments
     ;; NOTE: (Sharlatan-20210107213629+0000) Tests depend on too many not
     ;; available systems, which  themself are abandoned.
     `(#:tests? #f))
     (home-page "https://common-lisp.net/project/cl-markdown/")
     (synopsis "A Common Lisp rewrite of Markdown")
     (description "Implementation of Markdown parser in Common Lisp.")
     (license license:expat)))

(define-public ecl-cl-markdown
  (sbcl-package->ecl-package sbcl-cl-markdown))

(define-public cl-markdown
  (sbcl-package->cl-source-package sbcl-cl-markdown))

(define-public sbcl-mssql
  (let ((commit "045602a19a32254108f2b75871049293f49731eb")
        (revision "1"))
    (package
      (name "sbcl-mssql")
      (version (git-version "0.0.3" revision commit))
      (source (origin
                (method git-fetch)
                (uri (git-reference
                      (url "https://github.com/archimag/cl-mssql")
                      (commit commit)))
                (file-name (git-file-name name version))
                (sha256
                 (base32
                  "09i50adppgc1ybm3ka9vbindhwa2x29f9n3n0jkrryymdhb8zknm"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("cffi" ,sbcl-cffi)
         ("freetds" ,freetds)
         ("garbage-pools" ,sbcl-garbage-pools)
         ("iterate" ,sbcl-iterate)
         ("parse-number" ,sbcl-parse-number)))
      (arguments
       `(#:phases
         (modify-phases %standard-phases
           (add-after 'unpack 'fix-paths
             (lambda* (#:key inputs #:allow-other-keys)
               (substitute* "src/mssql.lisp"
                 (("libsybdb" all)
                  (string-append (assoc-ref inputs "freetds")"/lib/" all)))
               #t)))))
      (home-page "https://github.com/archimag/cl-mssql")
      (synopsis "Common Lisp library which interacts with MS-SQL Server databases")
      (description
       "@code{cl-mssql} provides interface to connect to Microsof SQL server.  It
uses foriegn library @code{libsybdb} providing by FreeTDS project.")
      (license license:llgpl))))

(define-public ecl-mssql
  (sbcl-package->ecl-package sbcl-mssql))

(define-public cl-mssql
  (sbcl-package->cl-source-package sbcl-mssql))

(define-public sbcl-cl-mustache
  (package
    (name "sbcl-cl-mustache")
    (version "0.12.1")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/kanru/cl-mustache")
                    (commit (string-append "v" version))))
              (file-name (git-file-name "cl-mustache" version))
              (sha256
               (base32
                "149xbb6wxq1napliwm9cv729hwcgfnjli6y8hingfixz7f10lhks"))))
    (build-system asdf-build-system/sbcl)
    (home-page "https://github.com/kanru/cl-mustache")
    (synopsis "Common Lisp Mustache Template Renderer")
    (description "It's a template system implemented for Common Lisp, more
details on standard available at http://mustache.github.io")
    (license license:expat)))

(define-public cl-cl-mustache
  (sbcl-package->cl-source-package sbcl-cl-mustache))

(define-public ecl-cl-mustache
  (sbcl-package->ecl-package sbcl-cl-mustache))

(define-public sbcl-asdf-finalizers
  (let ((commit "7f537f6c598b662ae987c6acc268dd27c25977e0")
        (revision "1"))
    (package
      (name "sbcl-asdf-finalizers")
      (version (git-version "0.0.0" revision commit))
      (source (origin
                (method git-fetch)
                (uri (git-reference
                      (url "https://gitlab.common-lisp.net/asdf/asdf-finalizers")
                      (commit commit)))
                (file-name (git-file-name name version))
                (sha256
                 (base32
                  "1w56c9yjjydjshsgqxz57qlp2v3r4ilbisnsgiqphvxnhvd41y0v"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:tests? #f
         #:phases
         (modify-phases %standard-phases
           (add-after 'unpack 'disable-asdf-finalizers-test
               ;; Tests depend on asdf-finalizers which is not available on the
               ;; build phase
             (lambda _
               (delete-file "asdf-finalizers-test.asd")
               #t)))
         #:asd-systems '("asdf-finalizers"
                         "list-of")))
      (home-page "https://github.com/dimitri/cl-abnf")
      (synopsis "Enforced calling of finalizers for Lisp code")
      (description "This library allows you to implement and enforce proper
finalization of compile-time constructs while building Lisp source files.

It produces two systems: asdf-finalizers list-of")
      (license license:expat ))))

(define-public ecl-asdf-finalizers
  (sbcl-package->ecl-package sbcl-asdf-finalizers))

(define-public cl-asdf-finalizers
  (sbcl-package->cl-source-package sbcl-asdf-finalizers))

(define-public sbcl-cl-abnf
  ;; There are no releases
  (let ((commit "ba1fbb104dedbdaddb1ef93d2e4da711bd96cd70")
        (revision "1"))
    (package
     (name "sbcl-cl-abnf")
     (version (git-version "0" revision commit))
     (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/dimitri/cl-abnf")
                    (commit commit)))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0f09nsndxa90acm71zd4qdnp40v705a4sqm04mnv9x76h6dlggmz"))))
     (build-system asdf-build-system/sbcl)
     (inputs
      `(("esrap" ,sbcl-esrap)
        ("cl-ppcre" ,sbcl-cl-ppcre)))
     (arguments
      `(#:asd-systems '("abnf")))
     (home-page "https://github.com/dimitri/cl-abnf")
     (synopsis "ABNF Parser Generator, per RFC2234")
     (description "This Common Lisp librairie implements a parser generator for
the ABNF grammar format as described in RFC2234. The generated parser is a
regular expression scanner provided by the cl-ppcre lib, which means that we
can't parse recursive grammar definition. One such definition is the ABNF
definition as given by the RFC. Fortunately, as you have this lib, you most
probably don't need to generate another parser to handle that particular ABNF
grammar.")
     (license license:expat))))

(define-public ecl-cl-abnf
  (sbcl-package->ecl-package sbcl-cl-abnf))

(define-public cl-abnf
  (sbcl-package->cl-source-package sbcl-cl-abnf))

(define-public sbcl-cl-online-learning
  (let ((commit "87fbef8a340219e853adb3a5bf44a0470da76964")
        (revision "1"))
    (package
      (name "sbcl-cl-online-learning")
      (version (git-version "0.5" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/masatoi/cl-online-learning")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32
           "1lfq04lnxivx59nq5dd02glyqsqzf3vdn4s9b8wnaln5fs8g2ph9"))))
      (build-system asdf-build-system/sbcl)
      (native-inputs
       `(("prove" ,sbcl-prove)))
      (inputs
       `(("cl-libsvm-format" ,sbcl-cl-libsvm-format)
         ("cl-store" ,sbcl-cl-store)))
      (arguments
       `(#:test-asd-file "cl-online-learning-test.asd"
         #:asd-systems
         (list
          "cl-online-learning-test"
          "cl-online-learning")))
      (home-page "https://github.com/masatoi/cl-online-learning")
      (synopsis "Online Machine Learning for Common Lisp")
      (description
       "This library contains a collection of machine learning algorithms for
online linear classification written in Common Lisp.")
      (license license:expat))))

(define-public cl-online-learning
  (sbcl-package->cl-source-package sbcl-cl-online-learning))

(define-public ecl-cl-online-learning
  (sbcl-package->ecl-package sbcl-cl-online-learning))

(define-public sbcl-command-line-arguments
  (let ((commit "fbac862fb01c0e368141204f3f639920462c23fe")
        (revision "1"))
    (package
      (name "sbcl-command-line-arguments")
      (version (git-version "2.0.0" revision commit))
      (source (origin
                (method git-fetch)
                (uri (git-reference
                      (url "https://github.com/fare/command-line-arguments")
                      (commit commit)))
                (file-name (git-file-name name version))
                (sha256
                 (base32
                  "054m1ikndzqf72mb9ajaa64136cwr3bgag4yfbi1574a9vq75mjq"))))
      (build-system asdf-build-system/sbcl)
      (home-page "https://github.com/fare/command-line-arguments")
      (synopsis "Trivial command-line argument parsing library for Common Lisp")
      (description "A library to abstract away the parsing of Unix-style
command-line arguments.  Use it in conjunction with asdf:program-op or cl-launch
for portable processing of command-line arguments.")
      (license license:expat))))

(define-public ecl-command-line-arguments
  (sbcl-package->ecl-package sbcl-command-line-arguments))

(define-public cl-command-line-arguments
  (sbcl-package->cl-source-package sbcl-command-line-arguments))

;; <2021-04-15 Thu>
(define-public sbcl-png
  (let ((commit "11b965fe378fd0561abe3616b18ff03af5179648")
        (revision "1"))
    (package
      (name "sbcl-png")
      (version (git-version "2.1.2" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/ljosa/cl-png")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "173hqwpd0rwqf95mfx1h9l9c3i8bb0gvnpspzmmz3g5x3440czy4"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:phases
         (modify-phases %standard-phases
           (add-after 'unpack 'fix-lib-paths
             (lambda* (#:key inputs #:allow-other-keys)
               (substitute* "libpng.lisp"
                 (("\"libpng\"") (string-append "\""
                                        (assoc-ref inputs "libpng")
                                        "/lib/libpng\""))))))))
      (inputs
       `(("cffi" ,sbcl-cffi)
         ("libpng" ,libpng)))
      (home-page "https://github.com/ljosa/cl-png")
      (synopsis "Read and write PNG file format")
      (description
       "This package provides Common Lisp system @code{PNG} to operate with
Portable Network Graphics file format.")
      (license license:lgpl2.0))))

(define-public ecl-png
  (sbcl-package->ecl-package sbcl-png))

(define-public cl-png
  (sbcl-package->cl-source-package sbcl-png))

;; <2021-04-15 Thu>
(define-public sbcl-fare-mop
  (let ((commit "538aa94590a0354f382eddd9238934763434af30")
        (revision "1"))
    (package
      (name "sbcl-fare-mop")
      (version (git-version "1.0.1" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               ;; Other mirror, Fare is most active on GitHub.
               ;; https://gitlab.common-lisp.net/frideau/fare-mop
               (url "https://github.com/fare/fare-mop")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32
           "0maxs8392953fhnaa6zwnm2mdbhxjxipp4g4rvypm06ixr6pyv1c"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("close-mop" ,sbcl-closer-mop)
         ("fare-utils" ,sbcl-fare-utils)))
      (home-page "https://github.com/fare/fare-mop")
      (synopsis "General purpose Common Lisp utilities using the Meta-Object Project")
      (description
       "FARE-MOP is a small collection of utilities using the MOP.  It notably
contains a method SIMPLE-PRINT-OBJECT, and a mixin SIMPLE-PRINT-OBJECT-MIXIN
that allow you to trivially define PRINT-OBJECT methods that print the
interesting slots in your objects, which is great for REPL interaction and
debugging.")
      (license license:unlicense))))

(define-public ecl-fare-mop
  (sbcl-package->ecl-package sbcl-fare-mop))

(define-public cl-fare-mop
  (sbcl-package->cl-source-package sbcl-fare-mop))

;; <2021-04-15 Thu>
(define-public sbcl-inferior-shell
  (let ((commit "15c2d04a7398db965ea1c3ba2d49efa7c851f2c2")
        (revision "1"))
    (package
      (name "sbcl-inferior-shell")
      (version (git-version "2.0.5" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               ;; Other mirror, Fare is most active on GitHub.
               ;; https://gitlab.common-lisp.net/frideau/inferior-shell
               (url "https://github.com/fare/inferior-shell")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "02qx37zzk5j4xmwh77k2qa2wvnzvaj6qml5dh2q7b6b1ljvgcj4m"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("alexandira" ,sbcl-alexandria)
         ("trivia" ,sbcl-trivia)
         ("fare-utils" ,sbcl-fare-utils)
         ("fare-quasiquote" ,sbcl-fare-quasiquote)
         ("fare-mop" ,sbcl-fare-mop)))
      (home-page "https://github.com/fare/inferior-shell")
      (synopsis "Spawn local or remote processes and shell pipes")
      (description
       "This package provides Common Lisp system helping in scripting, it uses
@code{uiop:run-program} as a backend.")
      (license license:expat))))

(define-public ecl-inferior-shell
  (sbcl-package->ecl-package sbcl-inferior-shell))

(define-public cl-inferior-shell
  (sbcl-package->cl-source-package sbcl-fare-mop))

;; <2021-04-15 Thu>
(define-public sbcl-cl-svg
  (let ((commit "1e988ebd2d6e2ee7be4744208828ef1b59e5dcdc")
        (revision "1"))
    (package
      (name "sbcl-cl-svg")
      (version (git-version "0.0.3" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/wmannis/cl-svg")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "11rmzimy6j7ln7q5y1h2kw1225rsfb6fpn89qjcq7h5lc8fay0wz"))))
      (build-system asdf-build-system/sbcl)
      (home-page "https://github.com/wmannis/cl-svg")
      (synopsis "Write SVG file format")
      (description
       "This package provides Common Lisp system @code{CL-SVG} to produce
Scalable Vector Graphics files.")
      (license license:expat))))

(define-public ecl-cl-svg
  (sbcl-package->ecl-package sbcl-cl-svg))

(define-public cl-svg
  (sbcl-package->cl-source-package sbcl-fare-mop))

;; <2021-04-15 Thu>
;; NOTE: (Sharlatan-20210425T171922+0100): Not aplicable with Guix licence policy
(define-public sbcl-weir
  (let ((commit "beb4f6f47f0538d2c6d73b1d3c9d7f58ac8aa0e9")
        (revision "1"))
    (package
      (name "sbcl-weir")
      (version (git-version "4.9.1" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/inconvergent/weir")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "1vm10kb51g4ba2nl5yixswkk47vwqgwqdlz5031xfff8h9z2a6ad"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       ;; FIXME: (Sharlatan-20210415T165228+0100): All tests have been passed
       ;; but terminated with error status after `check' phase is completed.
       ;;
       ;;  tests:  303
       ;;  fails:  0
       ;;  passes: 303
       ;; "-- at least one catastrophe! --"
       ;; terminated with status: 1
       ;; ;
       ;; ; compilation unit aborted
       ;; ;   caught 1 fatal ERROR condition
       ;; ;   caught 3 STYLE-WARNING conditions
       ;; ;   printed 91 notes
       `(#:tests? #f))
      (inputs
       `(("alexandira" ,sbcl-alexandria)
         ("cl-json" ,sbcl-cl-json)
         ("cl-svg" ,sbcl-cl-svg)
         ("inferior-shell" ,sbcl-inferior-shell)
         ("lparallel" ,sbcl-lparallel)
         ("png" ,sbcl-png)
         ("split-sequence" ,sbcl-split-sequence)
         ("zpng" ,sbcl-zpng)))
      (home-page "https://github.com/inconvergent/weir")
      (synopsis "System for making generative systems")
      (description
       "This package provides Common Lisp system for generating 2d and 3d vector
artworks with SVG and PNG export format.")
      (license license:expat))))

(define-public ecl-weir
  (sbcl-package->ecl-package sbcl-weir))

(define-public cl-weir
  (sbcl-package->cl-source-package sbcl-weir))

;; <2021-04-29 Thu>
(define-public sbcl-unit-test
  (let ((commit "266afaf4ac091fe0e8803bac2ae72d238144e735")
        (revision "1"))
    (package
      (name "sbcl-unit-test")
      (version (git-version "0.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/hanshuebner/unit-test")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32
           "11hpksz56iqkv7jw25p2a8r3n9dj922fyarn16d98589g6hdskj9"))))
      (build-system asdf-build-system/sbcl)
      (home-page "https://github.com/hanshuebner/unit-test")
      (synopsis "Unit-testing framework for common lisp")
      (description
"Unit-testing framework for common lisp")
      (license license:unlicense))))

(define-public ecl-unit-test
  (sbcl-package->ecl-package sbcl-unit-test))

(define-public cl-unit-test
  (sbcl-package->cl-source-package sbcl-unit-test))

;; <2021-04-29 Thu>
(define-public sbcl-bknr-datastore
  (let ((commit "c98d44f47cc88d19ff91ca3eefbd9719a8ace022")
        (revision "1"))
    (package
      (name "sbcl-bknr-datastore")
      (version (git-version "0.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               ;; Some other similar repository
               ;; https://github.com/sharplispers/bknr.datastore
               (url "https://github.com/hanshuebner/bknr-datastore")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "1vi3w65fnczqvswkm381n6liqfrzjrg40y698qvj7skj28dm5vrm"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:asd-systems
         '("bknr.datastore"
           "bknr.impex"
           "bknr.indices"
           "bknr.skip-list"
           "bknr.utils"
           "bknr.xml")
         #:phases
         (modify-phases %standard-phases
           (add-after 'unpack 'chdir
             (lambda _
               (chdir "src")
               #t)))))
      (native-inputs
       `(("unit-test" ,sbcl-unit-test)))
      (inputs
       `(("alexandria" ,sbcl-alexandria)
         ("bordeaux-threads" ,sbcl-bordeaux-threads)
         ("closer-mop" ,sbcl-closer-mop)
         ("cl-interpol" ,sbcl-cl-interpol)
         ("cl-ppcre" ,sbcl-cl-ppcre)
         ("cl-store" ,sbcl-cl-store)
         ("cxml" ,sbcl-cxml)
         ("flexi-streams" ,sbcl-flexi-streams)
         ("md5" ,sbcl-md5)
         ("trivial-utf-8" ,sbcl-trivial-utf-8)
         ("yason" ,sbcl-yason)))
      (home-page "https://github.com/hanshuebner/bknr-datastore")
      (synopsis "MOP-Based in-memory database with transactions for Common Lisp")
      (description
       "BKNR.DATASTORE is an in-memory CLOS based data store.  This package
produces 6 systems: BKNR.DATASTORE BKNR.IMPEX BKNR.INDICES BKNR.SKIP-LIST
BKNR.UTILS BKNR.XML")
      (license license:bsd-2))))

;; NOTE: (Sharlatan-20210429T191426+0100):
;; There is no port for ECL in upstream yet
;; (define-public ecl-bknr-datastore
;;   (sbcl-package->ecl-package sbcl-bknr-datastore))

(define-public cl-bknr-datastore
  (sbcl-package->cl-source-package sbcl-bknr-datastore))

;; <2021-05-17 Mon>
(define-public sbcl-cl-package-locks
  (let ((commit "96a358ede7cef416d61d2f699e724fe1d9de602c")
        (revision "1"))
    (package
      (name "sbcl-cl-package-locks")
      (version (git-version "0.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/elliottjohnson/cl-package-locks")
               (commit commit)))
         (file-name (git-file-name "cl-package-locks" version))
         (sha256
          (base32
           "0g3gfljnvpgd66ccd2sqawlkwqx4a0wsdrg5180va61w869cgxqq"))))
      (build-system asdf-build-system/sbcl)
      (home-page "https://github.com/elliottjohnson/cl-package-locks")
      (synopsis "Compatability layer for dealing with package locks in a uniform manner")
      (description
"This package provides a Common Lisp library to provide a unified way to work
with package locks across supported common lisp implementations.")
      (license license:expat))))

(define-public ecl-cl-package-locks
  (sbcl-package->ecl-package sbcl-cl-package-locks))

(define-public cl-package-locks
  (sbcl-package->cl-source-package sbcl-cl-package-locks))

;; <2021-05-17 Mon>
(define-public sbcl-cl-typesetting
  (let ((commit "86eba981fc4254addebecf765578ec350d6e3b75")
        (revision "1"))
    (package
      (name "sbcl-cl-typesetting")
      (version (git-version "0.8.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/mbattyani/cl-typesetting")
               (commit commit)))
         (file-name (git-file-name "cl-typesetting" version))
         (sha256
          (base32 "0fcs5mq0gxfczbrg7ay8r4bf5r4g6blvpdbjkhcl8dapcikyn35h"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       ;; NOTE: (Sharlatan-20210515T213014+0100): Circular dependencies with
       ;; cl-typegraph
       `(#:tests? #f))
      (inputs
       `(("cl-pdf" ,sbcl-cl-pdf)
         ("xmls" ,sbcl-xmls)))
      (home-page "https://github.com/mbattyani/cl-typesetting")
      (synopsis "Stand-alone Common Lisp typesetting system")
      (description
       "CL-TYPESETTING is a cross-platform Common Lisp typesetting library for
all kind of typesetting applications.")
      (license license:bsd-2))))

(define-public ecl-cl-typesetting
  (sbcl-package->ecl-package sbcl-cl-typesetting))

(define-public cl-typesetting
  (sbcl-package->cl-source-package sbcl-cl-typesetting))

;; <2021-05-17 Mon>
(define-public sbcl-shasht
  (let ((commit "4055327ef8e2aaa8627892ab256350ff3cb15e3c")
        (revision "1"))
    (package
      (name "sbcl-shasht")
      (version (git-version "0.1.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/yitzchak/shasht.git")
               (commit commit)))
         (file-name (git-file-name "shasht" version))
         (sha256
          (base32 "01mh20s5gj0lajq45anxji77ykq1wcg72mn1y9a1k8i7q1ainjlr"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("alexandria" ,sbcl-alexandria)
         ("parachute" ,sbcl-parachute)
         ("trivial-do" ,sbcl-trivial-do)))
      (home-page "https://yitzchak.github.io/shasht/")
      (synopsis "Common Lisp JSON reading and writing for the Kzinti")
      (description
       "This package provides a Common Lisp library to work with JSON file
format.")
      (license license:expat))))

(define-public ecl-shasht
  (sbcl-package->ecl-package sbcl-shasht))

(define-public cl-shasht
  (sbcl-package->cl-source-package sbcl-shasht))

;; 20210523T170845+0100
(define-public sbcl-djula
  (let ((commit "5df7af35a21503d468a878fc6029caa527a7d204")
        (revision "1"))
    (package
      (name "sbcl-djula")
      (version (git-version "0.2.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/mmontone/djula")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "1lk2ypm3sacf60h96a7hv9jwjlxkl4k40yzdalmqdg548vrd1jjm"))))
      (build-system asdf-build-system/sbcl)
      (native-inputs
       `(("fiveam" ,sbcl-fiveam)))
      (inputs
       `(("access" ,sbcl-access)
         ("alexandria" ,sbcl-alexandria)
         ("anaphora" ,sbcl-anaphora)
         ("babel" ,sbcl-babel)
         ("cl-locale" ,sbcl-cl-locale)
         ("cl-ppcre" ,sbcl-cl-ppcre)
         ("cl-slice" ,sbcl-cl-slice)
         ("closer-mop" ,sbcl-closer-mop)
         ("gettext" ,sbcl-gettext)
         ("iterate" ,sbcl-iterate)
         ("local-time" ,sbcl-local-time)
         ("parser-combinators" ,sbcl-parser-combinators)
         ("split-sequence" ,sbcl-split-sequence)
         ("trivial-backtrace" ,sbcl-trivial-backtrace)))
      (home-page "https://mmontone.github.io/djula/")
      (synopsis "Common Lisp port of the Django templating language")
      (description
       "This package provides a Common Lisp templating system based on Python
Django with similar syntax like Pyton Jinja2.")
      (license license:expat))))

(define-public ecl-djula
  (sbcl-package->ecl-package sbcl-djula))

(define-public cl-djula
  (sbcl-package->cl-source-package sbcl-djula))

(define-public sbcl-cl-locale
  (let ((commit "0a36cc0dcf5e0a8c8bf97869cd6199980ca25eec")
        (revision "1"))
    (package
      (name "sbcl-cl-locale")
      (version (git-version "0.1.1" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/fukamachi/cl-locale")
               (commit commit)))
         (file-name (git-file-name "cl-locale" version))
         (sha256
          (base32 "1rhannhpsw1yg1fpflam483a3w9qb1izgyvmnmiddv3dn4qsmn9p"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       ;; FIXME: (Sharlatan-20210523T190658+0100): All tests passed ok but
       ;; successfully failed in the end:
       ;;
       ;; Summary:
       ;;   All 1 file passed.
       ;; Unhandled ASDF/FIND-COMPONENT:MISSING-DEPENDENCY
       ;; in thread #<SB-THREAD:THREAD "main thread" RUNNING {100B6C8253}>:
       ;;   Component CL-LOCALE-ASD::CL-LOCALE-TEST not found, required by
       ;;   #<SYSTEM "cl-locale">
       ;;
       `(#:tests? #f))
      (native-inputs
       `(("prove" ,sbcl-prove)
         ("flexi-streams" ,sbcl-flexi-streams)))
      (inputs
       `(("anaphora" ,sbcl-anaphora)
         ("arnesi" ,sbcl-arnesi)
         ("cl-annot" ,sbcl-cl-annot)
         ("cl-syntax" ,sbcl-cl-syntax)))
      (home-page "https://github.com/fukamachi/cl-locale")
      (synopsis "Internalization library for Common Lisp")
      (description
       "This package provides a Common Lisp translation library similar to
CL-I18N and CL-L10N.")
      (license license:llgpl))))

(define-public ecl-cl-locale
  (sbcl-package->ecl-package sbcl-cl-locale))

(define-public cl-locale
  (sbcl-package->cl-source-package sbcl-cl-locale))

(define-public sbcl-cl-slice
  (let ((commit "c531683f287216aebbb0affbe090611fa1b5d697")
        (revision "1"))
    (package
      (name "sbcl-cl-slice")
      (version (git-version "0.1.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/tpapp/cl-slice")
               (commit commit)))
         (file-name (git-file-name "cl-slice" version))
         (sha256
          (base32 "1ybznf4y5lda6bn163jcvj281qzhm24dfcwhbgxmm5n6f27gdccl"))))
      (build-system asdf-build-system/sbcl)
      (native-inputs
       `(("clunit" ,sbcl-clunit)))
      (inputs
       `(("alexandria" ,sbcl-alexandria)
         ("anaphora" ,sbcl-anaphora)
         ("let-plus" ,sbcl-let-plus)))
      (home-page "https://github.com/tpapp/cl-slice")
      (synopsis "Array slices for Common Lisp")
      (description
       "This package provides DSL for array slices in Common Lisp.")
      (license license:expat))))

(define-public ecl-cl-slice
  (sbcl-package->ecl-package sbcl-cl-slice))

(define-public cl-slice
  (sbcl-package->cl-source-package sbcl-cl-slice))

(define-public sbcl-gettext
  (let ((commit "a432020cbad99fc22cbe6bb9aa8a83a35000d7aa")
        (revision "1"))
    (package
      (name "sbcl-gettext")
      (version (git-version "0.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/rotatef/gettext")
               (commit commit)))
         (file-name (git-file-name "gettext" version))
         (sha256
          (base32 "1pzhamgni6k5hi6bbvlb3dm659pcllrrr3vhhn3rpjn238zxg5ar"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:test-asd-file "gettext-tests/gettext-tests.asd"))
      (native-inputs
       `(("stefil" ,sbcl-stefil)))
      (inputs
       `(("flexi-streams" ,sbcl-flexi-streams)
         ("split-sequence" ,sbcl-split-sequence)
         ("yacc" ,sbcl-cl-yacc)))
      (home-page "https://github.com/rotatef/gettext")
      (synopsis "Gettext runtime implementation in Common Lisp")
      (description
       "This package provides GNU @code{gettext} completely implemented in
Common Lisp without any C library bindings.")
      (license license:gpl3+))))

(define-public ecl-gettext
  (sbcl-package->ecl-package sbcl-gettext))

(define-public cl-gettext
  (sbcl-package->cl-source-package sbcl-gettext))

(define-public sbcl-parser-combinators
  (let ((commit "9c7569a4f6af5e60c0d3a51d9c15c16d1714c845")
        (revision "1"))
    (package
      (name "sbcl-parser-combinators")
      (version (git-version "0.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Ramarren/cl-parser-combinators")
               (commit commit)))
         (file-name (git-file-name "parser-combinators" version))
         (sha256
          (base32 "1k49vha5xm2cklayzpqwg73n4v93xwsbs5in6342pkkiimnidhs8"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       ;; FIXME: (Sharlatan-20210523T184237+0100): Tests require `femlisp', which
       ;; is quite chunky not packaged system yet, enable them when it's packed.
       `(#:tests? #f
         #:test-asd-file "parser-combinators-tests.asd"))
      ;; (native-inputs
      ;;  `(("hu.dwim.stefil" ,sbcl-hu.dwim.stefil)
      ;;    ("infix" ,sbcl-femlisp)))
      (inputs
       `(("alexandria" ,sbcl-alexandria)
         ("cl-containers" ,sbcl-cl-containers)
         ("cl-ppcre" ,sbcl-cl-ppcre)
         ("iterate" ,sbcl-iterate)))
      (home-page "https://github.com/Ramarren/cl-parser-combinators")
      (synopsis "Experimental implementation of parser combinators in Common Lisp")
      (description
       "PARSER-COMBINATORS is a library implementing monadic parser
combinators in Common Lisp, similar in concept to Haskell Parsec system.")
      (license license:bsd-3))))

(define-public ecl-parser-combinators
  (sbcl-package->ecl-package sbcl-parser-combinators))

(define-public cl-parser-combinators
  (sbcl-package->cl-source-package sbcl-parser-combinators))

(define-public sbcl-arnesi
  (let ((commit "1e7dc4cb2cad8599113c7492c78f4925e839522e")
        (revision "1"))
    (package
      (name "sbcl-arnesi")
      (version (git-version "2.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/AccelerationNet/arnesi")
               (commit commit)))
         (file-name (git-file-name "arnesi" version))
         (sha256
          (base32 "0jgj2xgd1gq6rf8ia43lkmbrbxnp8rgs053br9azfa25ygk3ikbh"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       ;; FIXME: (Sharlatan-20210523T190315+0100): Tests failed on
       ;; special-lisp-var-rebount-in/cc
       ;;
       ;; ; processing (TEST SPECIAL-LISP-VAR-REBOUND-IN/CC ...)
       ;; ; wrote .../sbcl/arnesi/t/call-cc-tmp5GEXGEG5.fasl
       ;; ; compilation finished in 0:00:00.028
       ;; Unhandled SIMPLE-ERROR in thread
       ;; #<SB-THREAD:THREAD "main thread" RUNNING {100B768173}>:
       ;; Sorry, No walker for the special operater DECLARE defined.
       ;;
       ;; Backtrace for: #<SB-THREAD:THREAD "main thread" RUNNING {100B768173}>
       ;; 0: (SB-DEBUG::DEBUGGER-DISABLED-HOOK #<SIMPLE-ERROR "Sorry,
       ;; No walker for the special operater ~S defined."
       ;; {1001FAF9D3}> #<unused argument> :QUIT T)
       ;;
       `(#:tests? #f))
      (native-inputs
       `(("fiveam" ,sbcl-fiveam)))
      (inputs
       `(("cl-ppcre" ,sbcl-cl-ppcre)
         ("collectors" ,sbcl-collectors)
         ("swank" ,sbcl-slime-swank)))
      (home-page "https://github.com/AccelerationNet/arnesi")
      (synopsis "Common Lisp utility suite")
      (description
       "ARNESI is Common Lisp utilities library similar to ALEXANDRIA, ANAPHORA
or GOLDEN-UTILS.  Please read README
@url{https://github.com/AccelerationNet/arnesi} for use case recomendations.")
      (license license:bsd-3))))

(define-public ecl-arnesi
  (sbcl-package->ecl-package sbcl-arnesi))

(define-public cl-arnesi
  (sbcl-package->cl-source-package sbcl-arnesi))

(define-public sbcl-femlisp
  (let ((commit "9084944079736eac085494523a41c8265d4671b7")
        (revision "1"))
    (package
      (name "sbcl-femlisp")
      (version (git-version "0.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "git://git.savannah.nongnu.org/femlisp.git")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "08l2x1jq3vfhh8m14wijd8c78n589cy5hd2py2jfj3yfiqyipasa"))))
      (build-system asdf-build-system/sbcl)
      (native-inputs
       `(("fiveam" ,sbcl-fiveam)))
      (inputs
       `(("alexandria" ,sbcl-alexandria)
         ("bordeaux-threads" ,sbcl-bordeaux-threads)
         ("cffi" ,sbcl-cffi)
         ("cl-gd" ,sbcl-cl-gd)
         ("cl-mpi" ,sbcl-cl-mpi)
         ("closer-mop" ,sbcl-closer-mop)
         ("cl-ppcre" ,sbcl-cl-ppcre)
         ("femlisp" ,sbcl-femlisp)
         ("flexi-streams" ,sbcl-flexi-streams)
         ("lfarm" ,sbcl-lfarm)
         ("lparallel" ,sbcl-lparallel)
         ("trees" ,sbcl-trees)))
      (home-page "git://git.savannah.nongnu.org/femlisp.git")
      (synopsis "TBC")
      (description
       "TBC")
      (license #f))))

(define-public sbcl-cl-gd
  (let ((commit "9084944079736eac085494523a41c8265d4671b7")
        (revision "1"))
    (package
      (name "sbcl-cl-gd")
      (version (git-version "0.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/edicl/cl-gd")
               (commit commit)))
         (file-name (git-file-name "cl-gd" version))
         (sha256
          (base32 "08l2x1jq3vfhh8m14wijd8c78n589cy5hd2py2jfj3yfiqyipasa"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("uffi" ,sbcl-uffi)))
      (home-page "https://edicl.github.io/cl-gd/")
      (synopsis "TBC")
      (description
       "TBC")
      (license #f))))

(define-public sbcl-cl-mpi
  (let ((commit "ba92be06ec1dca74d0ca5256aa387d8a28c8ad86")
        (revision "1"))
    (package
      (name "sbcl-cl-mpi")
      (version (git-version "0.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/marcoheisig/cl-mpi.git")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32
           "1ykwk7acjhzpsjgm2b5svdpyw2qgrh860gkx3n2ckyrgd9l9q6jb"))))
      (build-system asdf-build-system/sbcl)
      (native-inputs
       `(("fiveam" ,sbcl-fiveam)))
      (inputs
       `(("alexandria" ,sbcl-alexandria)
         ("cffi" ,sbcl-cffi)
         ("cl-conspack" ,sbcl-cl-conspack)
         ("static-vectors" ,sbcl-static-vectors)))
      (home-page "https://github.com/marcoheisig/cl-mpi.git")
      (synopsis "TBC")
      (description
       "TBC")
      (license #f))))

(define-public sbcl-lfarm
  (let ((commit "f7ba49f1ec01fb99a7aeb8f18e245a44411c361b")
        (revision "1"))
    (package
      (name "sbcl-lfarm")
      (version (git-version "0.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/lmj/lfarm.git")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32
           "10kfhfx26wmaa3hk3vc7hc2fzk0rl2xdjwk8ld36x6ivvd48jlkv"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("alexandria" ,sbcl-alexandria)
         ("bordeaux-threads" ,sbcl-bordeaux-threads)
         ("cl-gss" ,sbcl-cl-gss)
         ("cl+ssl" ,sbcl-cl+ssl)
         ("cl-store" ,sbcl-cl-store)
         ("external-program" ,sbcl-external-program)
         ("flexi-streams" ,sbcl-flexi-streams)
         ("lparallel" ,sbcl-lparallel)
         ("trivial-gray-streams" ,sbcl-trivial-gray-streams)
         ("usocket" ,sbcl-usocket)))
      (home-page "https://github.com/lmj/lfarm.git")
      (synopsis "TBC")
      (description
       "TBC")
      (license #f))))

(define-public sbcl-trees
  (let ((commit "7b06048af0248c4302088c758208276f9faf2beb")
        (revision "1"))
    (package
      (name "sbcl-trees")
      (version (git-version "0.11.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/froydnj/trees.git")
               (commit commit)))
         (file-name (git-file-name "trees" version))
         (sha256
          (base32 "1xvydf3qc17rd7ia8sffxcpclgm3l0iyhx8k72ddk59v3pg5is4k"))))
      (build-system asdf-build-system/sbcl)
      (home-page "https://github.com/froydnj/trees.git")
      (synopsis "Common Lisp binary trees library")
      (description
       "This package implements binary trees of various kinds, presenting a
uniform interface to them all.")
      (license license:bsd-3))))

(define-public ecl-trees
  (sbcl-package->ecl-package sbcl-trees))

(define-public cl-trees
  (sbcl-package->cl-source-package sbcl-trees))

(define-public sbcl-cl-gss
  (let ((commit "60086f4fd3b82316352e7f2288edbd58f03e08c5")
        (revision "1"))
    (package
      (name "sbcl-cl-gss")
      (version (git-version "0.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/lokedhs/cl-gss")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0zhxxn3zarird255s9i56bz0fm6dkv00mn8bbsjrhskg3wpcg4pb"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:phases
         (modify-phases %standard-phases
           (add-after 'unpack 'patch-gss-lib-path
             (lambda* (#:key inputs #:allow-other-keys)
               (substitute* "src/functions.lisp"
                 (("libgss.so" all)
                  (string-append (assoc-ref inputs "gss")
                                        "/lib/" all))))))))
      (inputs
       `(("cffi" ,sbcl-cffi)
         ("gss" ,gss)
         ("trivial-garbage" ,sbcl-trivial-garbage)
         ("trivial-utf-8" ,sbcl-trivial-utf-8)))
      (home-page "https://github.com/lokedhs/cl-gss.git")
      (synopsis "Common Lisp CFFI bindings to Generic Security Service (GSS)")
      (description
       "TBC")
      (license license:bsd-3))))


;; 20210519T223735+0100
(define-public sbcl-common-lisp-jupyter
  (let ((commit "ba9f0e746b9200d6fd6db647d7274448119ed01b")
        (revision "4"))
    (package
      (name "sbcl-common-lisp-jupyter")
      (version (git-version "0.1.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/yitzchak/common-lisp-jupyter")
               (commit commit)))
         (file-name (git-file-name "common-lisp-jupyter" commit))
         (sha256
          (base32 "0si69xfzi769dprwfy7gp1x3bl7lxz6d4n98sa26w9r41wvay5ja"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:phases
         (modify-phases %standard-phases
           (add-after 'create-asdf-configuration 'generate-kernelspec
             (lambda* (#:key outputs #:allow-other-keys)
               (let* ((out (assoc-ref outputs "out"))
                      (kernelspec (string-append out "/share/cl-jupyter/kernelspec")))
                 (mkdir-p kernelspec)
                 (copy-file (string-append "res/" (%lisp-type) "/logo-64x64.png")
                            (string-append kernelspec "/logo-64x64.png"))
                 (with-output-to-file (string-append kernelspec "/kernel.json")
                   (lambda ()
                     ;; FIXME: Use of guile-json would beneficial here
                     (format #t "{ \"argv\": [ ~s,
 \"--eval\",
\"(require :asdf)\",
 \"--eval\",
\"(asdf:load-system :common-lisp-jupyter)\",
 \"--eval\",
\"(jupyter:run-kernel 'common-lisp-jupyter:kernel)\",
\"{connection_file}\"
],
\"display_name\": \"Common Lisp\",
\"language\": \"common-lisp\",
\"interrupt_mode\": \"message\"
}"
                             (string-append (assoc-ref %build-inputs (%lisp-type)) "/bin/" (%lisp-type))))))))
      (add-after 'generate-kernelspec 'install-kernelspec
        (lambda* (#:key outputs #:allow-other-keys)
          (let* ((out (assoc-ref outputs "out"))
                (kernelspec (string-append out "/share/cl-jupyter/kernelspec")))
            (invoke "jupyter" "kernelspec" "install"
                    "--name" "cl-jupyter"
                    "--prefix" out
                    kernelspec)))))))
      (inputs
       `(("alexandria" ,sbcl-alexandria)
         ("babel" ,sbcl-babel)
         ("bordeaux-threads" ,sbcl-bordeaux-threads)
         ("cl-base64" ,sbcl-cl-base64)
         ("cl-indentify" ,sbcl-cl-indentify)
         ("closer-mop" ,sbcl-closer-mop)
         ("dissect" ,sbcl-dissect)
         ("eclector" ,sbcl-eclector)
         ;; ("jupyter" ,jupyter)
         ("ironclad" ,sbcl-ironclad)
         ("iterate" ,sbcl-iterate)
         ("multilang-documentation" ,sbcl-multilang-documentation)
         ("puri" ,sbcl-puri)
         ("pzmq" ,sbcl-pzmq)
         ("sbcl" ,sbcl)
         ("shasht" ,sbcl-shasht)
         ("static-vectors" ,sbcl-static-vectors)
         ("trivial-do" ,sbcl-trivial-do)
         ("trivial-garbage" ,sbcl-trivial-garbage)
         ("trivial-gray-streams" ,sbcl-trivial-gray-streams)
         ("trivial-mimes" ,sbcl-trivial-mimes)))
      (home-page "https://yitzchak.github.io/common-lisp-jupyter/")
      (synopsis "Common Lisp kernel for Jupyter")
      (description
       "This is a Common Lisp kernel for Jupyter along with a library for
building Jupyter kernels, based on Maxima-Jupyter which was based on
@code{cl-jupyter}.")
      (license license:expat))))

;; 20210520T162625+0100
(define-public sbcl-woo
  (let ((commit "fba3567be95ed6e782d98a4c1477d3a74b8ad124")
        (revision "1"))
    (package
      (name "sbcl-woo")
      (version (git-version "0.12.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/fukamachi/woo")
               (commit commit)))
         (file-name (git-file-name "woo" version))
         (sha256
          (base32 "06f95x8s8v523gxmrkn9wwgw2pvc3bc66znbgrzhqb30y4aar5v5"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       ;; NOTE: (Sharlatan-20210520T164142+0100): Test failed, it tries to creat
       ;; test data in sbcl-clack package
       ;;
       ;; Unhandled SB-INT:SIMPLE-FILE-ERROR in thread #<SB-THREAD:THREAD
       ;; "main thread" RUNNING {100B7D8173}>:
       ;;
       ;; Error opening #P"/gnu/store/...-sbcl-clack-2.0.0-1.e3e0328/
       ;; lib/common-lisp/sbcl/clack/src/test-tmpGHU3ALSV.fasl":
       ;;
       ;; Permission denied
       ;;
       `(#:tests? #f))
      (native-inputs
       `(("dexador" ,sbcl-dexador)))
      (inputs
       `(("alexandria" ,sbcl-alexandria)
         ("bordeaux-threads" ,sbcl-bordeaux-threads)
         ("cffi" ,sbcl-cffi)
         ("cl-speedy-queue" ,ecl-cl-speedy-queue) ;; Required for ecl build
         ("clack-socket" ,sbcl-clack)
         ("fast-http" ,sbcl-fast-http)
         ("fast-io" ,sbcl-fast-io)
         ("lev" ,sbcl-lev)
         ("quri" ,sbcl-quri)
         ("rove" ,sbcl-rove)
         ("smart-buffer" ,sbcl-smart-buffer)
         ("static-vectors" ,sbcl-static-vectors)
         ("swap-bytes" ,sbcl-swap-bytes)
         ("trivial-utf-8" ,sbcl-trivial-utf-8)
         ("vom" ,sbcl-vom)))
      (home-page "https://github.com/fukamachi/woo")
      (synopsis "Non-blocking HTTP server based on libev")
      (description
       "This package provides Common Lisp HTTP server @code{WOO}, which utilizes
@code{libev} event library.")
      (license license:expat))))

(define-public cl-woo
  (sbcl-package->cl-source-package sbcl-woo))

(define-public ecl-woo
  (sbcl-package->ecl-package sbcl-woo))

(define-public sbcl-lev
  (let ((commit "7d03c68dad44f1cc4ac2aeeab2d24eb525ad941a")
        (revision "1"))
    (package
      (name "sbcl-lev")
      (version (git-version "0.1.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/fukamachi/lev")
               (commit commit)))
         (file-name (git-file-name "lev" version))
         (sha256
          (base32 "14lfnrvfyg2nnvlwck896p6vgarzc6g4kijmvhi2d8wra7gxzifh"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       ;; NOTE: (Sharlatan-20210520T163300+0100): No tests in upstream
       `(#:tests? #f
         #:phases
         (modify-phases %standard-phases
           (add-after 'unpack 'patch-libev-lib-path
             (lambda* (#:key inputs #:allow-other-keys)
               (substitute* "src/lev.lisp"
                 (("libev.so" all)
                  (string-append (assoc-ref inputs "libev")
                                        "/lib/" all))))))))
      (inputs
       `(("cffi" ,sbcl-cffi)
         ("libev" ,libev)))
      (home-page "https://github.com/fukamachi/lev")
      (synopsis "Common Lisp bindins for libev")
      (description
"Common Lisp bindins for libev")
      (license license:bsd-2))))

(define-public cl-lev
  (sbcl-package->cl-source-package sbcl-lev))

(define-public ecl-lev
  (sbcl-package->ecl-package sbcl-lev))

(define-public sbcl-cl-speedy-queue
  (let ((commit "0425c7c62ad3b898a5ec58cd1b3e74f7d91eec4b")
        (revision "1"))
    (package
      (name "sbcl-cl-speedy-queue")
      (version (git-version "0.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/zkat/cl-speedy-queue")
               (commit commit)))
         (file-name (git-file-name "cl-speedy-queue" version))
         (sha256
          (base32 "0czhnvxn9lvbjz9h1lb7y18nqrsq3drq5icd3lqdaa07362alriq"))))
      (build-system asdf-build-system/sbcl)
      (home-page "https://github.com/zkat/cl-speedy-queue")
      (synopsis "Lightweight, optimized queue Common Lisp implementation")
      (description
"Lightweight, optimized queue Common Lisp implementation")
      (license license:expat))))

(define-public cl-speedy-queue
  (sbcl-package->cl-source-package sbcl-cl-speedy-queue))

(define-public ecl-cl-speedy-queue
  (sbcl-package->ecl-package sbcl-cl-speedy-queue))

;; 20210520T224438+0100
(define-public sbcl-json-streams
  (let ((commit "5da012e8133affbf75024e7500feb37394690752")
        (revision "1"))
    (package
      (name "sbcl-json-streams")
      (version (git-version "0.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/rotatef/json-streams")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0cia3721im04q73dfkd688d8splgpz03qa4h8s3r39kar4w3xll2"))))
      (build-system asdf-build-system/sbcl)
      (native-inputs
       `(("cl-quickcheck" ,sbcl-cl-quickcheck)
         ("flexi-streams" ,sbcl-flexi-streams)))
      (home-page "https://github.com/rotatef/json-streams")
      (synopsis "Common Lisp library for reading and writing JSON")
      (description
       "This package provides a stream based JSON parser/writer, well suited for
higher as building block for higher level libraries.")
      (license license:gpl3+))))

(define-public cl-json-streams
  (sbcl-package->cl-source-package sbcl-json-streams))

(define-public ecl-json-streams
  (sbcl-package->ecl-package sbcl-json-streams))

;; 20210529T191116+0100
(define-public sbcl-cl-glfw3
  (let ((commit "32c3f34d592d55ee7ce932ed85804c1a9c4158c6")
        (revision "1"))
    (package
      (name "sbcl-cl-glfw3")
      (version (git-version "0.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/AlexCharlton/cl-glfw3")
               (commit commit)))
         (file-name (git-file-name "cl-glfw3" version))
         (sha256
          (base32 "1wzr43nckdx4rlgxzhm1r4kfc264q969mc43y0js9ramh7l8gba5"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:phases
         (modify-phases %standard-phases
           (add-after 'unpack 'patch-glfw-lib-path
             (lambda* (#:key inputs #:allow-other-keys)
               (substitute* "glfw-bindings.lisp"
                 (("libglfw.so.3" all)
                  (string-append (assoc-ref inputs "glfw") "/lib/" all))))))))
      (inputs
       `(("alexandria" ,sbcl-alexandria)
         ("cffi" ,sbcl-cffi)
         ("glfw" ,glfw)
         ("cl-opengl" ,sbcl-cl-opengl)
         ("trivial-main-thread" ,sbcl-trivial-main-thread)))
      (home-page "https://github.com/AlexCharlton/cl-glfw3")
      (synopsis "Common Lisp bindings to GLFW version 3.x")
      (description
       "This package provides a Common Lisp bindings to @code{glfw} - OpenGL
application development library.")
      (license license:bsd-2))))

(define-public ecl-cl-glfw3
  (sbcl-package->ecl-package sbcl-cl-glfw3))

(define-public cl-glfw3
  (sbcl-package->cl-source-package sbcl-cl-glfw3))

;; 20210604T110204+0100
(define-public sbcl-cepl
  (let ((commit "d1a10b6c8f4cedc07493bf06aef3a56c7b6f8d5b")
        (revision "1"))
    (package
     (name "sbcl-cepl")
     (version (git-version "0.0.0" revision commit))
     (source
      (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/cbaggers/cepl")
             (commit commit)))
       (file-name (git-file-name "cepl" version))
       (sha256
        (base32 "0izbw2advqm3wailj3dpq6zqfrfirwn14pw5qmqh8i71r51xwmm2"))))
     (build-system asdf-build-system/sbcl)
     (arguments
      `(#:asd-files '("cepl.asd" "cepl.build.asd")))
     (inputs
      `(("alexandria" ,sbcl-alexandria)
        ("bordeaux-threads" ,sbcl-bordeaux-threads)
        ("cffi" ,sbcl-cffi)
        ("cl-opengl" ,sbcl-cl-opengl)
        ("cl-ppcre" ,sbcl-cl-ppcre)
        ("documentation-utils" ,sbcl-documentation-utils)
        ("float-features" ,sbcl-float-features)
        ("ieee-floats" ,sbcl-ieee-floats)
        ("split-sequence" ,sbcl-split-sequence)
        ("varjo" ,sbcl-varjo)))
     (propagated-inputs
      `(("quickproject" ,sbcl-quickproject)))
     (home-page "https://github.com/cbaggers/cepl")
     (synopsis "Code Evaluate Play Loop - development playground to work with OpenGL")
     (description
      "CEPL is a lispy and REPL-friendly Common Lisp library for working with
OpenGL.

Its definition of success is making the user feel that GPU programming has
always been part of the languages standard.

The usual approach to using CEPL is to start it at the beginning of your Lisp
session and leave it open for the duration of your work.  You can then treat the
window it creates as just another output for your graphics, analogous to how
@code{*standard-output*} is treated for text.")
     (license license:bsd-2))))

(define-public ecl-cepl
  (sbcl-package->ecl-package sbcl-cepl))

(define-public cl-cepl
  (sbcl-package->cl-source-package sbcl-cepl))

;; 20210604T194236+0100
(define-public sbcl-nst
  (let ((commit "6c0990f594abcf5887e8d80f1035e3b60454b61b")
        (revision "1"))
    (package
     (name "sbcl-nst")
     (version (git-version "4.1.2" revision commit))
     (source
      (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/jphmrst/cl-nst")
             (commit commit)))
       (file-name (git-file-name "nst" version))
       (sha256
        (base32 "1hf3r6pqbnd9vsd1i24qmz928kia72hdgmiafiwb6jw1hmj3r6ga"))))
     (build-system asdf-build-system/sbcl)
     (inputs
      `(("closer-mop" ,sbcl-closer-mop)
        ("org-sampler" ,sbcl-org-sampler)))
     (home-page "https://github.com/jphmrst/cl-nst")
     (synopsis "Unit testing for Common Lisp")
     (description
      "NST is unit/regression testing system for Common Lisp.")
     (license license:llgpl))))

(define-public ecl-nst
  (sbcl-package->ecl-package sbcl-nst))

(define-public cl-nst
  (sbcl-package->cl-source-package sbcl-nst))

;; 20210604T195150+0100
(define-public sbcl-org-sampler
  (let ((commit "ee135a417750e5b1d810bb9574eb85223cb3038a")
        (revision "1"))
    (package
     (name "sbcl-org-sampler")
     (version (git-version "0.2.1" revision commit))
     (source
      (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/jphmrst/cl-org-sampler")
             (commit commit)))
       (file-name (git-file-name "org-sampler" version))
       (sha256
        (base32 "1dg029in14928qfxvfshyxmdwhzskzhxx3na0zy98ybx69b21qla"))))
     (build-system asdf-build-system/sbcl)
     (inputs
      `(("iterate" ,sbcl-iterate)))
     (home-page "https://github.com/jphmrst/cl-org-sampler")
     (synopsis "Extracting Common Lisp docstrings as Emacs Org-mode documents")
     (description
      "ORG-SAMPLER allows to use Lisp docstrings and reflection to make org-mode
text for inclusion into a larger document.")
     (license license:llgpl))))

(define-public ecl-org-sampler
  (sbcl-package->ecl-package sbcl-org-sampler))

(define-public cl-org-sampler
  (sbcl-package->cl-source-package sbcl-org-sampler))

;; 20210608T233910+0100
(define-public sbcl-adopt
  (let ((commit "c558dfdd8b8f3ba386f67550268d651e81eff6cf")
        (revision "1"))
    (package
      (name "sbcl-adopt")
      (version (git-version "1.1.1" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/sjl/adopt")
               (commit commit)))
         (file-name (git-file-name "adopt" version))
         (sha256
          (base32 "1b1f9mpp3lkfq3hcpmw4g2cwklscjs5nggdjsfxapj88j2pj73ky"))))
      (build-system asdf-build-system/sbcl)
      (native-inputs
       `(("1am" ,sbcl-1am)))
      (inputs
       `(("bobbin" ,sbcl-bobbin)
         ("split-sequence" ,sbcl-split-sequence)))
      (home-page "https://hg.stevelosh.com/adopt")
      (synopsis "Common Lisp A Damn OPTion parsing library")
      (description
       "Adopt is a simple UNIX-style option parser in Common Lisp, heavily
influenced by Python's optparse and argparse.")
      (license license:expat))))

(define-public ecl-adopt
  (sbcl-package->ecl-package sbcl-adopt))

(define-public cl-adopt
  (sbcl-package->cl-source-package sbcl-adopt))

(define-public sbcl-bobbin
  (let ((commit "b454e8241b24ceab674eeeae464c8082b1b6d8ce")
        (revision "1"))
    (package
      (name "sbcl-bobbin")
      (version (git-version "1.0.1" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/sjl/bobbin")
               (commit commit)))
         (file-name (git-file-name "bobbin" version))
         (sha256
          (base32 "02lw7w8cbvnxw5acbz405rb5lcqsf4fx7dvj5ldr0lhgbyv1mjnm"))))
      (build-system asdf-build-system/sbcl)
      (native-inputs
       `(("1am" ,sbcl-1am)))
      (inputs
       `(("split-sequence" ,sbcl-split-sequence)))
      (home-page "https://hg.stevelosh.com/bobbin")
      (synopsis "Word-wrapping library for strings in Common Lisp")
      (description
       "This package provides a simple (word) wrapping utilities for strings
implemented in Common Lisp which aim is to be easy to use without demand on
performance.")
      (license license:expat))))

(define-public ecl-bobbin
  (sbcl-package->ecl-package sbcl-bobbin))

(define-public cl-bobbin
  (sbcl-package->cl-source-package sbcl-bobbin))

;; 20210621T110738+0100
(define-public sbcl-cl-posix-mqueue
  (let ((commit "8977370c7206d1f62bd1be80f4254af40654b83f")
        (revision "1"))
    (package
      (name "sbcl-cl-posix-mqueue")
      (version (git-version "0.1.2" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/xFA25E/cl-posix-mqueue")
               (commit commit)))
         (file-name (git-file-name "cl-posix-mqueue" version))
         (sha256
          (base32 "04519rg8vc782z097dzlb8nx0skab2fy2zd0m60r6mz2nw8xdvh6"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:test-asd-file "cl-posix-mqueue-tests.asd"
         #:phases
         (modify-phases %standard-phases
           (add-after 'unpack 'patch-librt-path
             (lambda* (#:key inputs #:allow-other-keys)
               (substitute* "src/spec.lisp"
                 (("librt.so" all)
                  (string-append (assoc-ref inputs "glibc") "/lib/" all))))))))
      (native-inputs
       `(("rove" ,sbcl-rove)
         ("cl-ppcre" ,sbcl-cl-ppcre)))
      (inputs
       `(("alexandira" ,sbcl-alexandria)
         ("babel" ,sbcl-babel)
         ("cffi" ,sbcl-cffi)
         ("glibc" ,glibc)
         ("local-time" ,sbcl-local-time)))
      (home-page "https://github.com/xFA25E/cl-posix-mqueue")
      (synopsis "Common Lisp binding to POSIX mqueue")
      (description
       "This package provides a Common Lisp bindings to POSIX message queue - an
IPC (Inter-Process Communication) method that is easy to use and quick to
setup.")
      (license license:gpl3+))))

(define-public ecl-cl-posix-mqueue
  (sbcl-package->ecl-package sbcl-cl-posix-mqueue))

(define-public cl-posix-mqueue
  (sbcl-package->cl-source-package sbcl-cl-posix-mqueue))

(define-public sbcl-cl-graph
  (let ((commit "3cb786797b24883d784b7350e7372e8b1e743508")
        (revision "1"))
    (package
      (name "sbcl-cl-graph")
      (version (git-version "0.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/gwkkwg/cl-graph")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "1748rj52f2jmd5jvsy9jwhn0zf73sjzjhwhnljvq6yi2kdqr30kl"))))
      (build-system asdf-build-system/sbcl)
      (native-inputs
       `(("lift" ,sbcl-lift)
         ("moptilities" ,sbcl-moptilities)))
      (inputs
       `(("cl-containers" ,sbcl-cl-containers)
         ("cl-mathstats" ,sbcl-cl-mathstats)
         ("dynamic-classes" ,sbcl-dynamic-classes)
         ("hu.dwim.graphviz" ,sbcl-hu.dwim.graphviz)
         ("metabang-bind" ,sbcl-metabang-bind)
         ("metacopy" ,sbcl-metacopy)
         ("metatilities-base" ,sbcl-metatilities-base)
         ("moptilities" ,sbcl-moptilities)))
      (home-page "https://github.com/gwkkwg/cl-graph")
      (synopsis "TBC")
      (description
       "TBC")
      (license #f))))

(define-public sbcl-cl-mathstats
  (let ((commit "39af1b5e1ebbad6f75dab2c4214ce48852031bbf")
        (revision "1"))
    (package
      (name "sbcl-cl-mathstats")
      (version (git-version "0.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/gwkkwg/cl-mathstats.git")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "1iswi8gsz1s720ni8hfb7x5n8cidlaf8ypi7qwz1a7j89qcnqppr"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("cl-containers" ,sbcl-cl-containers)
         ("lift" ,sbcl-lift)
         ("metatilities-base" ,sbcl-metatilities-base)))
      (home-page "https://github.com/gwkkwg/cl-mathstats.git")
      (synopsis "TBC")
      (description
       "TBC")
      (license #f))))

(define-public sbcl-hu.dwim.graphviz
  (let ((commit "63b1195c4b87257608f21700be6718a450660b08")
        (revision "1"))
    (package
      (name "sbcl-hu.dwim.graphviz")
      (version (git-version "0.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/hu-dwim/hu.dwim.graphviz.git")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0imafyj8jlx1wymdqpwmmxpzm02bggsdaqv00zni3r9nyb4nqcqf"))))
      (build-system asdf-build-system/sbcl)
      (native-inputs
       `(("hu.dwim.common" ,sbcl-hu.dwim.common)
         ("hu.dwim.presentation" ,sbcl-hu.dwim.presentation)
                                        ;("hu.dwim.stefil+hu.dwim.def+swank" ,sbcl-hu.dwim.stefil+hu.dwim.def+swank)
         ))
      (inputs
       `(("cffi" ,sbcl-cffi)
         ("metabang-bind" ,sbcl-metabang-bind)))
      (home-page "https://github.com/hu-dwim/hu.dwim.graphviz.git")
      (synopsis "TBC")
      (description
       "TBC")
      (license #f))))

(define-public sbcl-metacopy
  (let ((commit "not-available")
        (revision "1"))
    (package
      (name "sbcl-metacopy")
      (version (git-version "0.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "http://dwim.hu/live/metacopy/")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0imafyj8jlx1wymdqpwmmxpzm02bggsdaqv00zni3r9nyb4nqcqf"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       `(("contextl" ,sbcl-contextl)
         ("lift" ,sbcl-lift)
         ("moptilities" ,sbcl-moptilities)))
      (home-page "http://dwim.hu/live/metacopy/")
      (synopsis "TBC")
      (description
       "TBC")
      (license #f))))

(define-public sbcl-eventbus
  (let ((commit "92c1fa3846ba0e3cc9e6d7605d765379c8658d84")
        (revision "1"))
    (package
      (name "sbcl-eventbus")
      (version (git-version "0.1.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/noloop/eventbus")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0slqx3zq6sbz3rg4g79j8y25sx4405y6ff3x6l5v8v4v42m1s0p2"))))
      (build-system asdf-build-system/sbcl)
      (native-inputs
       `(("simplet" ,sbcl-simplet)))
      (home-page "https://github.com/noloop/eventbus")
      (synopsis "Event bus implementation in Common Lisp")
      (description
"This package provides EVENTBUST Common Lisp system.")
      (license license:gpl3+))))

(define-public ecl-eventbus
  (sbcl-package->ecl-package sbcl-eventbus))

(define-public cl-eventbus
  (sbcl-package->cl-source-package sbcl-eventbus))

;; 20211127T133558+0000
(define-public sbcl-cl-liballegro
  (let ((commit "49f632ce97fc4f835bf5d450588793234b980a64")
        (revision "1"))
    (package
      (name "sbcl-cl-liballegro")
      (version (git-version "0.2.15" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/resttime/cl-liballegro")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0brbr7i342s0gadlnzd3a61w2b9ihhx60l19ararnc2asvyhmz7x"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:phases
         (modify-phases %standard-phases
           (add-after 'unpack 'patch-allegro-lib-path
                      (lambda* (#:key inputs #:allow-other-keys)
                        (let ((allegro-lib-path (string-append
                       (assoc-ref inputs "allegro") "/lib/")))
                 (substitute* "src/library.lisp"
                   (("lib \".so\"" all)
                    (string-append "\"" allegro-lib-path "\"" " lib \".so\"")))))))))
      (inputs
       `(("allegro" ,allegro)
         ("cffi" ,sbcl-cffi)
         ("float-features" ,sbcl-float-features)
         ("trivial-garbage" ,sbcl-trivial-garbage)
         ("trivial-main-thread" ,sbcl-trivial-main-thread)))
      (home-page "https://github.com/resttime/cl-liballegro")
      (synopsis "Allegro 5 game programming library bindings for Common Lisp")
      (description
       "This package provides CFFI bindings and interface to Allegro 5 game
developing library for Common Lisp.")
      (license license:zlib))))

(define-public ecl-cl-liballegro
  (sbcl-package->ecl-package sbcl-cl-liballegro))

(define-public cl-liballegro
  (sbcl-package->cl-source-package sbcl-cl-liballegro))
