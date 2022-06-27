;;; GNU Guix --- Functional package management for GNU
;;; Copyright © 2020-2022 Sharlatan Hellseher <sharlatanus@gmail.com>
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
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages)
  #:use-module (srfi srfi-1)
  #:use-module (json))

;; 20201201T143902+0000
;; (define-public sbcl-cl-log
;; added-to-upstream: 65d3fab53aa1ac19c49f93d1d6b21df596ebeb0f
;; CommitDate: Sat Dec 5 16:01:19 2020 +0100

;; 20201203T175618+0000
;; (define-public sbcl-zs3
;; added-to-upstream: cebfb29abb151ede95696181d2446c63504593d7
;; CommitDate: Sat Dec 5 16:01:19 2020 +0100

;; https://github.com/lispgames
;;+begin-lispgames

;; 20220525T231520+0100
(define-public sbcl-glop
  (let ((commit "45e722ab4a0cd2944d550bf790206b3326041e38")
        (revision "1"))
    (package
      (name "sbcl-glop")
      (version (git-version "0.1.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/lispgames/glop")
               (commit commit)))
         (file-name (git-file-name "glop" version))
         (sha256
          (base32 "1nm35kvigflfjlmsa8zwdajc61f02fh4sq08jv0wnqylhx8yg2bv"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       (list
        #:test-asd-file "glop-test.asd"
        #:phases
        #~(modify-phases %standard-phases
            (add-after 'unpack 'patch-lib-paths
              (lambda _
                (substitute* "src/x11/xcomposite.lisp"
                  (("libXcomposite.so" all)
                   (string-append #$(this-package-input "libxcomposite") "/lib/" all)))
                (substitute* "src/x11/xlib.lisp"
                  (("libX11" all)
                   (string-append #$(this-package-input "libx11") "/lib/" all)))
                (substitute* "src/utils.lisp"
                  (("libX11" all)
                   (string-append #$(this-package-input "libx11") "/lib/" all)))
                (substitute* "src/utils.lisp"
                  (("libGL.so.1" all)
                   (string-append #$(this-package-input "mesa") "/lib/" all)))
                (substitute* "src/x11/glx.lisp"
                  (("libGL.so" all)
                   (string-append #$(this-package-input "mesa") "/lib/" all)))
                (substitute* "src/x11/display-ctrl.lisp"
                  (("libXrandr" all)
                   (string-append #$(this-package-input "libxrandr") "/lib/" all)))
                #t)))))
      (native-inputs
       (list sbcl-cl-opengl))
      (inputs
       (list libx11
             libxcomposite
             libxrandr
             mesa
             sbcl-cffi
             sbcl-split-sequence
             sbcl-trivial-garbage))
      (home-page "https://github.com/lispgames/glop")
      (synopsis "Direct FFI bindings for OpenGL window and context management")
      (description
       "This package provides Common Lisp bindings to create OpenGL window and context
manipulation code as well as system input handling.  Direct FFI bindings to
system functions are used so no third party C lib is required except system
libraries.")
      (license license:expat))))

(define-public ecl-glop
  (sbcl-package->ecl-package sbcl-glop))

(define-public cl-glop
  (sbcl-package->cl-source-package sbcl-glop))

;;+end-lispgames

;; https://github.com/dimitri
;;+begin-dimitri

;; 20201219T163755+0000
;; (define-public sbcl-qmynd
;; added-to-upstream: 10c06966af07908aa15f79c3be1d6a64d7717d02
;; CommitDate: Sat Dec 19 19:01:29 2020 +0100

;; 20210103T214507+0000
;; (define-public sbcl-db3
;; added-to-upstream: d005f809f8209dfb3e4b4ee02b6f2beeb1d8f2e6
;; CommitDate: Mon Jan 4 10:40:54 2021 +0100

;; 20210101T232743+0000
;; (define-public sbcl-cl-ixf
;; added-to-upstream: 1fc9baeebb24a36431736f1a187e501943918444
;; CommitDate: Sat Jan 2 11:13:06 2021 +0100

;;+end-dimitri

;; https://git.mfiano.net/mfiano
;;+begin-mfiano

;; 20210203T000433+0000
;; (define-public sbcl-golden-utlils
;; added-to-upstream: ed39a7c1dc6bde13f770e751cb6106c2a85d70c5
;; CommitDate: Wed Feb 3 17:41:38 2021 +0100

;;+end-mfiano

;; https://github.com/Shirakumo
;; https://github.com/Shinmera
;;+begin-shirakumo

;; 20211107T173633+0000
;; (define-public sbcl-alloy
;; added-to-upstream: 6ec0c6c7678234ff5ab4c892903e0b682cbd876d
;; CommitDate: Mon Nov 8 09:16:28 2021 +0100

;; 20210527T213028+0100
;; (define-public sbcl-trial
;; added-to-upstream: 88cde3c671747b6a51699ab8e7052de3c79fac04
;; CommitDate: Thu Jun 24 14:22:09 2021 +0200

;; 20210527T203933+0100
;; (define-public sbcl-cl-gamepad
;; added-to-upstream: d09184ce2eafd1c5f7d4d1962c44b0becfaede16
;; CommitDate: Thu Jun 24 14:22:09 2021 +0200

;; 20210527T202249+0100
;; (define-public sbcl-flow
;; added-to-upstream: c03da7edb0bc4bb48c2f8e00e1ef5932c399f800
;; CommitDate: Tue Jun 8 11:09:12 2021 +0200;;

;; 20210526T224526+0100
;; (define-public sbcl-flare
;; added-to-upstream: 23ab7067f32495a8a02710c08b7cfe0e21be7f3f
;; CommitDate: Thu May 27 09:05:24 2021 +0200

;;<2021-05-12 Wed>
;; (define-public sbcl-chirp
;; added-to-upstream: 7cf3860429f7ba650f0fe040310017b419b57961
;; CommitDate: Mon Jun 14 09:55:38 2021 +0200

;; <2021-05-08 Sat>
;; (define-public sbcl-simple-tasks
;; added-to-upstream: 4a1fd4a5371b23e1fbf793c33124af08db45a8cd
;; CommitDate: Tue May 11 10:06:53 2021 +0200

;; <2021-05-08 Sat>
;; (define-public sbcl-trivial-main-thread
;; added-to-upstream: a232a40b0011ef3200954f0f5e082e9adfeab2e1
;; CommitDate: Tue May 11 10:15:38 2021 +0200

;; <2021-05-08 Sat>
;; (define-public sbcl-for
;; added-to-upstream: 1ab3aab59af43f42113408020cf052389cb6e303
;; CommitDate: Thu May 27 09:05:20 2021 +0200

;; <2021-05-08 Sat>
;; (define-public sbcl-glsl-toolkit
;; added-to-upstream: a2aa8ac5518cc803d73d35db04bfe64fcf9f98bc
;; CommitDate: Tue May 11 10:01:44 2021 +0200

;; <2021-05-08 Sat>
;; (define-public sbcl-messagebox
;; added-to-upstream: df07ecbac6ef76f0f4d47606d85888fbcd2f0454
;; CommitDate: Tue May 11 09:39:56 2021 +0200

;; <2021-05-03 Mon>
;; (define-public sbcl-3d-matrices
;; added-to-upstream: 440217b1e5e8f7c4570e23494f932ff620eedee2
;; CommitDate: Sat May 8 13:43:17 2021 +0200

;; <2021-05-03 Mon>
;; (define-public sbcl-3d-vectors
;; added-to-upstream: e961f15083e71abfd16b74a10331c9297960370d
;; CommitDate: Sat May 8 13:43:17 2021 +0200

;; <2021-04-22>
;; (define-public sbcl-terrable
;; added-to-upstream: 4bef55db1d27aab2775ce2ec2ad11ff58a3c4f4c
;; CommitDate: Fri Apr 23 10:39:50 2021 +0200

;; <2021-04-21>
;; (define-public sbcl-pathname-utils
;; added-to-upstream: 3de01371dc0c5fb0847d8ad64bc508f77396f56b
;; CommitDate: Thu Apr 22 10:36:51 2021 +0200

;; 20210131T014135+0000
;; (define-public sbcl-verbose
;; 67793f33ecd87d717fccd07b63ed6a221a056d6e
;; CommitDate: Sun Jan 31 10:27:37 2021 +0100

;; 20210125T180824+0000
;; (define-public sbcl-trivial-arguments
;; added-to-upstream: 538d91140c9a430e4a9dd79d42710a06ba2e5012
;; CommitDate: Tue Jan 26 09:39:35 2021 +0100

;; 20210131T013925+0000
;; (define-public sbcl-piping
;; f7174a2889130328e586cda15cf74d29aa74795c
;; CommitDate: Sun Jan 31 10:27:36 2021 +0100

;; 20210126T231620+0000
;; (define-public sbcl-modularize-hooks
;; added-to-upstream: 82f4d5d2cd8a7b78d3bf4f59a462df873a997b66
;; CommitDate: Wed Jan 27 10:27:04 2021 +0100

;; 20210126T232456+0000
;; (define-public sbcl-modularize-interfaces
;; added-to-upstream: 3420075351713edcd19661227638117f32eb91aa
;; CommitDate: Wed Jan 27 10:27:05 2021 +0100

;; 20210131T014340+0000
;; (define-public sbcl-cl-mpg123
;; added-to-upstream: b41d8a702d1f0df22c04f58bd7174e4906c2857f
;; CommitDate: Sun Jan 31 10:27:37 2021 +0100

;; 20210129T135622+0000
;; (define-public sbcl-cl-out123
;; added-to-upstream: 9c8ed43dd884ac143d759d12f2bc451fe3853ed2
;; CommitDate: Sat Jan 30 11:08:15 2021 +0100

;; 20210125T180331+0000
;; (define-public sbcl-modularize
;; added-to-upstream: f39d8d2ca96b15c4d415a36932526e1dd9ee212c
;; CommitDate: Tue Jan 26 09:31:40 2021 +0100

;; 20210125T181244+0000
;; (define-public sbcl-ubiquitous
;; added-to-upstream: 582bc6a8778b14e8fd2d57aed9c6c96684b1b4db
;; CommitDate: Tue Jan 26 09:45:51 2021 +0100

;; 20210202T001130+0000
;; (define-public sbcl-radiance
;; added-to-upstream: 051c1271209a1a0f9ff258f9034600d650e25ca8
;; CommitDate: Wed Feb 3 23:41:09 2021 +0100

;;+end-shirakumo

;;+begin-misc

;; 20201226T235607+0000
;; (define-public sbcl-uax-15
;; added-to-upstream: 14efb2f8ebd641fc3a9ee2ad802591e87dd4131a
;; CommitDate: Mon Dec 28 14:31:17 2020 +0100

;;+end-misc

;; https://github.com/gwkkwg
;;+begin-gwkkwg

;; 20210203T001510+0000
;; (define-public sbcl-trivial-timeout
;; added-to-upstream: 102f668acd3487a6b68e65a0d972e1df81cec766
;; CommitDate: Wed Feb 3 17:41:39 2021 +0100

;; 20210108T102108+0000
;; (define-public sbcl-dynamic-classes
;; added-to-upstream: b76ae073722910b1373301293f0acabd7c0833ee
;; CommitDate: Fri Jan 8 10:47:46 2021 +0100

;; 20210108T103848+0000
;; (define-public sbcl-cl-markdown
;; added-to-upstream: 375c44de40827a33369a93f5745f272e491f4150
;; CommitDate: Fri Jan 8 10:47:46 2021 +0100

;; 20220615T223419+0100
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
       (list sbcl-lift
             sbcl-moptilities))
      (inputs
       (list sbcl-cl-containers
             sbcl-cl-mathstats
             sbcl-dynamic-classes
             ;; sbcl-hu.dwim.graphviz
             sbcl-metabang-bind
             sbcl-metacopy
             sbcl-metatilities-base
             sbcl-moptilities))
      (home-page "https://github.com/gwkkwg/cl-graph")
      (synopsis "Common Lisp library for manipulating graphs and running graph algorithms")
      (description
       "Graph manipulation utilities for Common Lisp")
      (license license:expat))))

(define-public ecl-cl-graph
  (sbcl-package->ecl-package sbcl-cl-graph))

(define-public cl-cl-graph
  (sbcl-package->cl-source-package sbcl-cl-graph))

;; 20220627T204024+0100
(define-public sbcl-cl-mathstats
  (let ((commit "4df38ea1b9de069cf939919253565a9ca9538eca")
        (revision "1"))
    (package
      (name "sbcl-cl-mathstats")
      (version (git-version "0.8.2" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/gwkkwg/cl-mathstats")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0gsjvmkmnxc4hp5z9mkm5vsllywqyg7kx8jgz88vnx47yj3va1s8"))))
      (build-system asdf-build-system/sbcl)
      (native-inputs
       (list sbcl-lift))
      (inputs
       (list sbcl-cl-containers sbcl-metatilities-base))
      (home-page "https://github.com/gwkkwg/cl-mathstats")
      (synopsis "Common Lisp unordered collection of mathematical routines")
      (description
       "Common Lisp math and statistics routines")
      (license license:expat))))

(define-public ecl-cl-mathstats
  (sbcl-package->ecl-package sbcl-cl-mathstats))

(define-public cl-cl-mathstats
  (sbcl-package->cl-source-package sbcl-cl-mathstats))

;; 20220627T205038+0100
(define-public sbcl-metacopy
  (let ((commit "1b5bf443206cc1dea7801ae23d1167bd02122d30")
        (revision "1"))
    (package
      (name "sbcl-metacopy")
      (version (git-version "0.2.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/gwkkwg/metacopy")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "1rzp112djgw5n76s6hy2aq92bc43p0zd5bgzvqwvgvws4pls42s9"))))
      (build-system asdf-build-system/sbcl)
      (native-inputs
       (list sbcl-lift sbcl-asdf-system-connections))
      (inputs
       (list sbcl-contextl sbcl-moptilities))
      (home-page "https://github.com/gwkkwg/metacopy")
      (synopsis "Flexible Common Lisp shallow/deep copy mechanism")
      (description
       "This package provides flexible Common Lisp shallow/deep copy mechanism.")
      (license license:expat))))

(define-public ecl-metacopy
  (sbcl-package->ecl-package sbcl-metacopy))

(define-public cl-metacopy
  (sbcl-package->cl-source-package sbcl-metacopy))

;;+end-gwkkwg

;; 20210204T013223+0000
;; (define-public sbcl-specialization-store
;; added-to-upstream: 68608dd412c49a3372567b2d43633d9c7161ecbb
;; CommitDate: Thu Feb 4 14:07:30 2021 +0100

;; 20210105T202423+0000
;; (define-public sbcl-py-configparser
;; added-to-upstream: 288fe185e86763f5d18e2efe378b6c86c091fc6a
;; CommitDate: Wed Jan 6 14:00:35 2021 +0100

;; 20210109T133854+0000
;; (define-public sbcl-garbage-pools
;; added-to-upstream: df898f7206f3925cdc041a8578d9dbff2f0118f1
;; CommitDate: Sun Jan 10 09:26:41 2021 +0100

;; 20210113T214328+0000
;; (define-public sbcl-mssql
;; added-to-upstream: 88eb5370ec155902ed5fe7636e91e932079b338a
;; CommitDate: Thu Jan 14 10:22:50 2021 +0100

;; 20201221T202956+0000
;; (define-public sbcl-cl-mustache
;; added-to-upstream: c072887bb0b37aea36d6ba6e0dc636858b4b440a
;; CommitDate: Tue Dec 22 10:11:26 2020 +0100

;; 20201215T225111+0000
;; (define-public sbcl-asdf-finalizers
;; added-to-upstream: 14c00ab710b564fc2e23bb55925534bfd99b1acb
;; CommitDate: Fri Dec 18 10:16:08 2020 +0100

;; 20200107T212250+0000
;; added-to-upstream: 2ae3033449a6ee803fc3ead77c5f26967e9dc34c
;; CommitDate: Fri Dec 11 19:17:00 2020 +0100
;; (define-public sbcl-cl-abnf

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

;; 20201212T002124+0000
;; (define-public sbcl-command-line-arguments
;; added-to-upstream: f42e54dfaaece18a5065ddd328750d8b316605f3
;; CommitDate: Sun Dec 13 09:48:18 2020 +0100

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
;; added-to-upstream: ad4a46b028378f38f897c74ca5728e6cb77689ca
;; CommitDate: Thu Jun 24 10:33:04 2021 +0200
;; (define-public sbcl-cl-posix-mqueue

(define-public sbcl-hu-dwim-graphviz
  (let ((commit "63b1195c4b87257608f21700be6718a450660b08")
        (revision "1"))
    (package
      (name "sbcl-hu-dwim-graphviz")
      (version (git-version "0.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/hu-dwim/hu.dwim.graphviz.git")
               (commit commit)))
         (file-name (git-file-name "sbcl-hu.dwim.graphviz" version))
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
;; added-to-upstream: 4beb013c84cd44a2e6dc03a2697615c660985f4a
;; CommitDate: Wed Dec 1 09:44:03 2021 +0100
;; (define-public sbcl-cl-liballegro

;; 20220123T112516+0000
(define-public sbcl-cl-resect
  (let ((commit "1ae6a4b9ded6e613ca7d58bc6b73f2c5d66e2f67")
        (revision "1"))
    (package
      (name "sbcl-cl-resect")
      (version (git-version "1.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/borodust/cl-resect")
               (commit commit)))
         (file-name (git-file-name "cl-resect" version))
         (sha256
          (base32 "0k3i2gpxpjkisj1aycgzr1vicnzfnqx2ch6bxpy521mxcz3nhjgi"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       (list sbcl-alexandria
             sbcl-cffi))
      (home-page "https://github.com/borodust/cl-resect")
      (synopsis "Common Lisp bindings to libresect")
      (description
       "This package provides bindings for Common Lispt for @code{libresect}")
      (license license:bsd-2))))

(define-public cl-resect
  (sbcl-package->cl-source-package sbcl-cl-resect))

(define-public ecl-claw
  (sbcl-package->ecl-package sbcl-cl-resect))

;; NOTE: (Sharlatan-20220622T211349+0100): This package contains JavaScript
;; blobs and has to be withdrawn from upstream.
;;
;; 20220520T170101+0100
(define-public sbcl-clog
  (package
    (name "sbcl-clog")
    (version "1.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/rabbibotton/clog")
             (commit (string-append "v" version))))
       (file-name (git-file-name "clog" version))
       (sha256
        (base32 "0f4i6571nm0j704zgnh60sc9slifs11byb2gs8gamqjcfh931dap"))))
    (build-system asdf-build-system/sbcl)
    (inputs
     (list sbcl-3bmd
           sbcl-alexandria
           sbcl-bordeaux-threads
           sbcl-cl-ppcre
           sbcl-cl-sqlite
           sbcl-cl-template
           sbcl-clack
           sbcl-closer-mop
           sbcl-colorize
           sbcl-dbi
           sbcl-hunchentoot
           sbcl-lack
           sbcl-mgl-pax
           sbcl-parse-float
           sbcl-quri
           sbcl-trivial-open-browser
           sbcl-websocket-driver))
    (home-page "https://github.com/rabbibotton/clog")
    (synopsis "Common Lisp Omnificent GUI")
    (description
     "This package provides the Common Lisp web framefork for building GUI
applications.  CLOG can take the place, or work along side, most cross platform
GUI frameworks and website frameworks.  The CLOG package starts up the
connectivity to the browser or other websocket client (often a browser embedded
in a native template application.")
    (license license:bsd-3)))

(define-public cl-clog
  (sbcl-package->cl-source-package sbcl-clog))

(define-public ecl-clog
  (sbcl-package->ecl-package sbcl-clog))
