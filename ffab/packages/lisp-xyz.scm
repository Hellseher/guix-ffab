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
         (file-name (git-file-name "cl-graph" version))
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

(define-public cl-graph
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
         (file-name (git-file-name "cl-mathstats" version))
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

(define-public cl-mathstats
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

;; 20201212T002124+0000
;; (define-public sbcl-command-line-arguments
;; added-to-upstream: f42e54dfaaece18a5065ddd328750d8b316605f3
;; CommitDate: Sun Dec 13 09:48:18 2020 +0100

;; <2021-04-15 Thu>
;; (define-public sbcl-png
;; added-to-upstream: 1cef75faaebec55d0c5f1c03aed8deebff1dbad4
;; CommitDate: Mon Apr 19 17:06:31 2021 +0200

;; <2021-04-15 Thu>
;; (define-public sbcl-fare-mop
;; added-to-upstream: 9f084143d8be12462947c8a3bf5f7f4b9d42013b
;; CommitDate: Mon Apr 19 17:18:17 2021 +0200

;; <2021-04-15 Thu>
;; (define-public sbcl-inferior-shell
;; added-to-upstream: bde6c43fbcb202933ebe64d746e2d74b36fbdbc2
;; CommitDate: Mon Apr 19 17:28:12 2021 +0200

;; <2021-04-15 Thu>
;; (define-public sbcl-cl-svg
;; added-to-upstream: f7b45ede9f9220a647cd4bae36e629a18a677cfb
;; CommitDate: Mon Apr 19 17:11:00 2021 +0200

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
;; (define-public sbcl-unit-test
;; added-to-upstream: c72c3e50cd29c45f9e4f32313e5d937905085050
;; CommitDate: Fri Apr 30 09:16:22 2021 +0200

;; <2021-04-29 Thu>
;; (define-public sbcl-bknr-datastore
;; added-to-upstream: 91ba42509e764543cced393cfcb99140c20227bc
;; CommitDate: Fri Apr 30 09:42:07 2021 +0200

;; <2021-05-17 Mon>
;; (define-public sbcl-cl-package-locks
;; added-to-upstream: 7f96fb3f4591890bc324426b21dbfc386512f546
;; CommitDate: Sat May 15 10:21:39 2021 +0200

;; <2021-05-17 Mon>
;; (define-public sbcl-cl-typesetting
;; added-to-upstream: 0d85c83602c58cf83117643571e56205cfaeadc9
;; CommitDate: Mon May 17 10:43:15 2021 +0200

;; <2021-05-17 Mon>
;; (define-public sbcl-shasht
;; added-to-upstream: ff11a9f449e2f259faabebd075ce2ae1e13d27c2
;; CommitDate: Tue May 18 09:22:08 2021 +0200

;; 20210523T170845+0100
;; (define-public sbcl-djula
;; added-to-upstream: 3a89ff123a52059743d48f6c3428fc436b4d397a
;; CommitDate: Tue May 25 11:16:55 2021 +0200

;; 20210523T211756+0100
;; (define-public sbcl-cl-locale
;; added-to-upstream: 7af6a356bbb3bd690b42f479a5a336b3091acff3
;; CommitDate: Tue May 25 11:04:25 2021 +0200

;; 20210523T212013+0100
;; (define-public sbcl-cl-slice
;; added-to-upstream: a0dcb1aa8f03d2b4702c9dc31d21d4e0e1090122
;; CommitDate: Tue May 25 11:09:11 2021 +0200

;; 20210523T211203+0100
;; (define-public sbcl-gettext
;; added-to-upstream: 16342832c522796a19d209b0159fcb3fb0d9bc71
;; CommitDate: Tue May 25 10:39:43 2021 +0200

;; 20210523T211432+0100
;; (define-public sbcl-parser-combinators
;; added-to-upstream: 77bd1b5be0cfebdd3c6fbc55658c473cf43f2832
;; CommitDate: Tue May 25 10:50:05 2021 +0200

;; 20210523T210914+0100
;; (define-public sbcl-arnesi
;; added-to-upstream: 0e007842c9ab3021160596a0de14a2ef1b94acb2
;; CommitDate: Tue May 25 10:31:27 2021 +0200

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

;;https://github.com/fukamachi
;;+begin-fukamachi

;; 20210520T162625+0100
;; (define-public sbcl-woo
;; added-to-upstream: 2a60770f47ca9dbb5206844348d57df24140784f
;; CommitDate: Fri May 21 11:02:06 2021 +0200

;; 20210520T172942+0100
;; (define-public sbcl-lev
;; added-to-upstream: c4ebe659ab982f9ed40175af6dd5d8e3a342ac3e
;; CommitDate: Fri May 21 10:28:13 2021 +0200

;; 20210520T172208+0100
;; (define-public sbcl-cl-speedy-queue
;; added-to-upstream: 0195d9041a5f440a7e2e14b39e98f596fddf0c12
;; CommitDate: Fri May 21 10:22:59 2021 +0200

;;+end-fukamachi

;; 20210520T224438+0100
;; (define-public sbcl-json-streams
;; added-to-upstream: 20eb41b66adc5933cf34323a3c010b8d57ab7eae
;; CommitDate: Fri May 21 11:10:30 2021 +0200

;; 20210529T191116+0100
;; (define-public sbcl-cl-glfw3
;; added-to-upstream: 901ceafadd05349d6dc254541c50da0bff4d2885
;; CommitDate: Mon Jun 14 09:55:37 2021 +0200

;; 20210604T110204+0100
;; (define-public sbcl-cepl
;; added-to-upstream: 5cf9137ccb20f12f88bfbb216bb24c6d8262cd1b
;; CommitDate: Mon Jun 14 09:55:38 2021 +0200

;; 20210604T195150+0100
;; (define-public sbcl-org-sampler
;; added-to-upstream: e101a117eb5af9affcf68e27e91d68d3bfd72986
;; CommitDate: Thu Jun 24 14:22:09 2021 +0200

;; https://github.com/sjl
;;+begin-sjl

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

;;+end-sjl

;; 20210621T110738+0100
;; added-to-upstream: ad4a46b028378f38f897c74ca5728e6cb77689ca
;; CommitDate: Thu Jun 24 10:33:04 2021 +0200
;; (define-public sbcl-cl-posix-mqueue

;; http://dwim.hu
;;+begin-hu-dwim

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

;;+end-hu-dwim

;; <2021-11-07 Sun>
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

;; https://github.com/borodust
;;+begin-borodust

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
;;+end-borodust

;; NOTE: (Sharlatan-20220622T211349+0100): This package contains JavaScript
;; blobs and has to be withdrawn from upstream.
;;
;; 20220520T170101+0100
(define sbcl-clog
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

(define cl-clog
  (sbcl-package->cl-source-package sbcl-clog))

(define ecl-clog
  (sbcl-package->ecl-package sbcl-clog))
