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
  #:use-module (ffab packages graphics)
  #:use-module (ffab packages audio)
  #:use-module (ffab packages lisp-check)
  #:use-module (ffab packages game-development)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages base)
  #:use-module (gnu packages databases)
  #:use-module (gnu packages elf)
  #:use-module (gnu packages game-development)
  #:use-module (gnu packages gd)
  #:use-module (gnu packages gl)
  #:use-module (gnu packages graphviz)
  #:use-module (gnu packages gsasl)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages image)
  #:use-module (gnu packages kerberos)
  #:use-module (gnu packages libevent)
  #:use-module (gnu packages lisp)
  #:use-module (gnu packages lisp-check)
  #:use-module (gnu packages lisp-xyz)
  #:use-module (gnu packages mp3)
  #:use-module (gnu packages mpi)
  #:use-module (gnu packages sdl)
  #:use-module (gnu packages xiph)
  #:use-module (gnu packages xorg)
  #:use-module (guix build lisp-utils)
  #:use-module (guix build-system asdf)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages)
  #:use-module (srfi srfi-1)
  #:use-module (json))

;; 20240313T223823+0000
(define-public sbcl-arrow-macros
  (let ((commit "16bdfd31298182099c7d70df4598104e5a38b05e")
        (revision "0"))
    (package
      (name "sbcl-arrow-macros")
      (version (git-version "0.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/hipeta/arrow-macros")
               (commit commit)))
         (file-name (git-file-name "arrow-macros" version))
         (sha256
          (base32 "0q4vpysk4h9ghs5zmnzzilky9jyz7i8n0x0p98nq528crbrkh6c4"))))
      (build-system asdf-build-system/sbcl)
      (native-inputs (list sbcl-fiveam))
      (home-page "https://github.com/hipeta/arrow-macros/")
      (synopsis "Clojure-like arrow macros in Common Lisp")
      (description
       "Arrow-macros provides clojure-like arrow macros (ex. ->, ->>) and diamond wands
in swiss-arrows.")
      (license license:expat))))

(define-public cl-arrow-macros
  (sbcl-package->cl-source-package sbcl-arrow-macros))

(define-public ecl-arrow-macros
  (sbcl-package->ecl-package sbcl-arrow-macros))

;; 20201201T143902+0000
;; (define-public sbcl-cl-log
;; added-to-downstream-guix 65d3fab53aa1ac19c49f93d1d6b21df596ebeb0f
;; CommitDate: Sat Dec 5 16:01:19 2020 +0100

;; 20201203T175618+0000
;; (define-public sbcl-zs3
;; added-to-downstream-guix cebfb29abb151ede95696181d2446c63504593d7
;; CommitDate: Sat Dec 5 16:01:19 2020 +0100

;; https://github.com/lispgames
;;+begin-lispgames

;; 20220525T231520+0100
;; (define-public sbcl-glop
;; added-to-downstream-guix c62b3e6575d0ce68b07bace59014ae2f374c1068
;; CommitDate: Tue Jul 19 23:00:36 2022 +0200

;; 20230227T231520+0100
;; (define-public sbcl-sdl2-mixer
;; added-to-downstream-guix ad854e06b4300d70bcb04ca8ed483d864f3114c7
;; CommitDate: Mon Feb 27 13:51:23 2023 +0100

;;+end-lispgames

;; https://github.com/dimitri
;;+begin-dimitri

;; 20201219T163755+0000
;; (define-public sbcl-qmynd
;; added-to-downstream-guix 10c06966af07908aa15f79c3be1d6a64d7717d02
;; CommitDate: Sat Dec 19 19:01:29 2020 +0100

;; 20210103T214507+0000
;; (define-public sbcl-db3
;; added-to-downstream-guix d005f809f8209dfb3e4b4ee02b6f2beeb1d8f2e6
;; CommitDate: Mon Jan 4 10:40:54 2021 +0100

;; 20210101T232743+0000
;; (define-public sbcl-ixf
;; added-to-downstream-guix 1fc9baeebb24a36431736f1a187e501943918444
;; CommitDate: Sat Jan 2 11:13:06 2021 +0100

;;+end-dimitri

;; https://git.mfiano.net/mfiano
;;+begin-mfiano

;; 20210203T000433+0000
;; (define-public sbcl-golden-utils
;; added-to-downstream-guix ed39a7c1dc6bde13f770e751cb6106c2a85d70c5
;; CommitDate: Wed Feb 3 17:41:38 2021 +0100

;;+end-mfiano

;; https://github.com/Shirakumo
;; https://github.com/Shinmera
;;+begin-shirakumo

;; 20230326T100349+0100
;; (define-public sbcl-harmony
;; added-to-downstream-guix c5a943e016414afc38418c14320e72587e5d9393
;; CommitDate: Thu Mar 30 11:32:46 2023 +0200

;; 20230326T100851+0100
;; (define-public sbcl-cl-mixed
;; added-to-downstream-guix c54033619482705f4c57dc798f5b388c54e4f5ac
;; CommitDate: Thu Mar 30 11:32:46 2023 +0200

;; 20230326T194048+0100
;; (define-public sbcl-cl-vorbis
;; added-to-upstram 03387bd17f2890f74e5b38bb80d0e4be7fcbc928
;; CommitDate: Thu Mar 30 11:32:46 2023 +0200

;; 20230326T200840+0100
;; (define-public sbcl-cl-flac
;; added-to-upstram 2ab0c55e3f4718034fc3253ec6aa435b490fc4f0
;; CommitDate: Thu Mar 30 11:32:46 2023 +0200

;; 20230312T202241+0000
;; (define-public sbcl-3d-quaternions
;; added-to-downstream-guix ff7649d379cc9f100c68232a28b6a8804682ae58
;; CommitDate: Thu Mar 16 15:50:29 2023 +0100

;; 20230312T213827+0000
;; (define-public sbcl-3d-transforms
;; added-to-downstream-guix 92db5a79db8aabd20e71e675304267326371ef3d
;; CommitDate: Thu Mar 16 15:50:29 2023 +0100

;; 20230312T214734+0000
;; (define-public sbcl-trivial-extensible-sequences
;; added-to-downstream-guix df6edddc5c6561b2e52111e380d6f9cf3b6ac523
;; CommitDate: Thu Mar 16 15:50:29 2023 +0100

;; 20230312T220004+0000
;; (define-public sbcl-promise
;; added-to-downstream-guix 4ec1589a43cec5350e651e96d61aa125bd9bdcb9
;; CommitDate: Thu Mar 16 15:50:29 2023 +0100

;; 20230314T002946+0000
;; (define-public sbcl-cl-gltf
;; added-to-downstream-guix 37b70cfece179dc5f925d977d3c1c0c441d0c097
;; CommitDate: Thu Mar 16 15:50:29 2023 +0100

;; 20230314T220728+0000
;; (define-public sbcl-dns-client
;; added-to-downstream-guix 12b2507295d77be4ea5e3a5e3ef3b9c751b08301
;; CommitDate: Thu Mar 16 15:50:29 2023 +0100

;; 20211107T173633+0000
;; (define-public sbcl-alloy
;; added-to-downstream-guix 6ec0c6c7678234ff5ab4c892903e0b682cbd876d
;; CommitDate: Mon Nov 8 09:16:28 2021 +0100

;; 20210527T213028+0100
;; (define-public sbcl-trial
;; added-to-downstream-guix 88cde3c671747b6a51699ab8e7052de3c79fac04
;; CommitDate: Thu Jun 24 14:22:09 2021 +0200

;; 20210527T203933+0100
;; (define-public sbcl-cl-gamepad
;; added-to-downstream-guix d09184ce2eafd1c5f7d4d1962c44b0becfaede16
;; CommitDate: Thu Jun 24 14:22:09 2021 +0200

;; 20210527T202249+0100
;; (define-public sbcl-flow
;; added-to-downstream-guix c03da7edb0bc4bb48c2f8e00e1ef5932c399f800
;; CommitDate: Tue Jun 8 11:09:12 2021 +0200;;

;; 20210526T224526+0100
;; (define-public sbcl-flare
;; added-to-downstream-guix 23ab7067f32495a8a02710c08b7cfe0e21be7f3f
;; CommitDate: Thu May 27 09:05:24 2021 +0200

;;<2021-05-12 Wed>
;; (define-public sbcl-chirp
;; added-to-downstream-guix 7cf3860429f7ba650f0fe040310017b419b57961
;; CommitDate: Mon Jun 14 09:55:38 2021 +0200

;; <2021-05-08 Sat>
;; (define-public sbcl-simple-tasks
;; added-to-downstream-guix 4a1fd4a5371b23e1fbf793c33124af08db45a8cd
;; CommitDate: Tue May 11 10:06:53 2021 +0200

;; <2021-05-08 Sat>
;; (define-public sbcl-trivial-main-thread
;; added-to-downstream-guix a232a40b0011ef3200954f0f5e082e9adfeab2e1
;; CommitDate: Tue May 11 10:15:38 2021 +0200

;; <2021-05-08 Sat>
;; (define-public sbcl-for
;; added-to-downstream-guix 1ab3aab59af43f42113408020cf052389cb6e303
;; CommitDate: Thu May 27 09:05:20 2021 +0200

;; <2021-05-08 Sat>
;; (define-public sbcl-glsl-toolkit
;; added-to-downstream-guix a2aa8ac5518cc803d73d35db04bfe64fcf9f98bc
;; CommitDate: Tue May 11 10:01:44 2021 +0200

;; <2021-05-08 Sat>
;; (define-public sbcl-messagebox
;; added-to-downstream-guix df07ecbac6ef76f0f4d47606d85888fbcd2f0454
;; CommitDate: Tue May 11 09:39:56 2021 +0200

;; <2021-05-03 Mon>
;; (define-public sbcl-3d-matrices
;; added-to-downstream-guix 440217b1e5e8f7c4570e23494f932ff620eedee2
;; CommitDate: Sat May 8 13:43:17 2021 +0200

(define-public sbcl-3d-matrices-ffab
  (let ((commit "b4f5a58299f8437fad2d77f0879c374e3430f4b5")
        (revision "2"))
    (package
      (inherit sbcl-3d-matrices)
      (name "sbcl-3d-matrices")
      (version (git-version "1.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shinmera/3d-matrices")
               (commit commit)))
         (file-name (git-file-name "3d-matrices" version))
         (sha256
          (base32 "1s8b4zlmqwyplghs73riz1khf0c5sk64w6b12jd599091d5nr6sr")))))))

;; <2021-05-03 Mon>
;; (define-public sbcl-3d-vectors
;; added-to-downstream-guix e961f15083e71abfd16b74a10331c9297960370d
;; CommitDate: Sat May 8 13:43:17 2021 +0200

(define-public sbcl-3d-vectors-ffab
  (let ((commit "257969402864ac3859d77b981abf0aa5373c4e78")
        (revision "2"))
    (package
      (inherit sbcl-3d-vectors)
      (name "sbcl-3d-vectors")
      (version (git-version "3.1.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/Shinmera/3d-vectors")
               (commit commit)))
         (file-name (git-file-name "3d-matrices" version))
         (sha256
          (base32 "0vmf7nycc49ydcy0dfs25cgs655kwjc6jcjvpwxw61jq4gl2fh7x")))))))

;; <2021-04-22>
;; (define-public sbcl-terrable
;; added-to-downstream-guix 4bef55db1d27aab2775ce2ec2ad11ff58a3c4f4c
;; CommitDate: Fri Apr 23 10:39:50 2021 +0200

;; <2021-04-21>
;; (define-public sbcl-pathname-utils
;; added-to-downstream-guix 3de01371dc0c5fb0847d8ad64bc508f77396f56b
;; CommitDate: Thu Apr 22 10:36:51 2021 +0200

;; 20210131T014135+0000
;; (define-public sbcl-verbose
;; 67793f33ecd87d717fccd07b63ed6a221a056d6e
;; CommitDate: Sun Jan 31 10:27:37 2021 +0100

;; 20210125T180824+0000
;; (define-public sbcl-trivial-arguments
;; added-to-downstream-guix 538d91140c9a430e4a9dd79d42710a06ba2e5012
;; CommitDate: Tue Jan 26 09:39:35 2021 +0100

;; 20210131T013925+0000
;; (define-public sbcl-piping
;; f7174a2889130328e586cda15cf74d29aa74795c
;; CommitDate: Sun Jan 31 10:27:36 2021 +0100

;; 20210126T231620+0000
;; (define-public sbcl-modularize-hooks
;; added-to-downstream-guix 82f4d5d2cd8a7b78d3bf4f59a462df873a997b66
;; CommitDate: Wed Jan 27 10:27:04 2021 +0100

;; 20210126T232456+0000
;; (define-public sbcl-modularize-interfaces
;; added-to-downstream-guix 3420075351713edcd19661227638117f32eb91aa
;; CommitDate: Wed Jan 27 10:27:05 2021 +0100

;; 20210131T014340+0000
;; (define-public sbcl-cl-mpg123
;; added-to-downstream-guix b41d8a702d1f0df22c04f58bd7174e4906c2857f
;; CommitDate: Sun Jan 31 10:27:37 2021 +0100

;; 20210129T135622+0000
;; (define-public sbcl-cl-out123
;; added-to-downstream-guix 9c8ed43dd884ac143d759d12f2bc451fe3853ed2
;; CommitDate: Sat Jan 30 11:08:15 2021 +0100

;; 20210125T180331+0000
;; (define-public sbcl-modularize
;; added-to-downstream-guix f39d8d2ca96b15c4d415a36932526e1dd9ee212c
;; CommitDate: Tue Jan 26 09:31:40 2021 +0100

;; 20210125T181244+0000
;; (define-public sbcl-ubiquitous
;; added-to-downstream-guix 582bc6a8778b14e8fd2d57aed9c6c96684b1b4db
;; CommitDate: Tue Jan 26 09:45:51 2021 +0100

;; 20210202T001130+0000
;; (define-public sbcl-radiance
;; added-to-downstream-guix 051c1271209a1a0f9ff258f9034600d650e25ca8
;; CommitDate: Wed Feb 3 23:41:09 2021 +0100

;;+end-shirakumo

;;+begin-misc

;; 20201226T235607+0000
;; (define-public sbcl-uax-15
;; added-to-downstream-guix 14efb2f8ebd641fc3a9ee2ad802591e87dd4131a
;; CommitDate: Mon Dec 28 14:31:17 2020 +0100

;;+end-misc

;; https://github.com/gwkkwg
;;+begin-gwkkwg

;; 20210203T001510+0000
;; (define-public sbcl-trivial-timeout
;; added-to-downstream-guix 102f668acd3487a6b68e65a0d972e1df81cec766
;; CommitDate: Wed Feb 3 17:41:39 2021 +0100

;; 20240315T094010+0000
(define-public sbcl-trivial-utilities
  (let ((commit "279ff255562628196942632c543d91c357067221")
        (revision "0"))
    (package
      (name "sbcl-trivial-utilities")
      (version (git-version "0.4.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://gitlab.com/ediethelm/trivial-utilities")
               (commit commit)))
         (file-name (git-file-name "trivial-utilities" version))
         (sha256
          (base32 "0k1xmn5f5dik7scadw0vyy67mik4ypnfqbhlv2vsg9afxzbpx2dz"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       (list sbcl-alexandria sbcl-iterate sbcl-closer-mop))
      (home-page "https://gitlab.com/ediethelm/trivial-utilities")
      (synopsis "Collection of useful types, functions and macros for Common Lisp")
      (description
       "This package provides a collection of types, functions and macros.  Some
 of the functionality is implemented from Grham's On Lisp and Seibel's Practical
 Common Lisp.")
      (license license:expat))))

(define-public cl-trivial-utilities
  (sbcl-package->cl-source-package sbcl-trivial-utilities))

(define-public ecl-trivial-utilities
  (sbcl-package->ecl-package sbcl-trivial-utilities))

;; 20210108T102108+0000
;; (define-public sbcl-dynamic-classes
;; added-to-downstream-guix b76ae073722910b1373301293f0acabd7c0833ee
;; CommitDate: Fri Jan 8 10:47:46 2021 +0100

;; 20210108T103848+0000
;; (define-public sbcl-cl-markdown
;; added-to-downstream-guix 375c44de40827a33369a93f5745f272e491f4150
;; CommitDate: Fri Jan 8 10:47:46 2021 +0100

;; 20220615T223419+0100
;; (define sbcl-cl-graph
;; added-to-downstream-guix a02cd9623f1468205d7dee5f7545f4ed76007b4d
;; CommitDate: Sat Nov 19 12:58:11 2022 +0100

;; 20220627T204024+0100
;; (define-public sbcl-cl-mathstats
;; added-to-downstream-guix 8cbd51d2d53cf8aa3794c7916750c6146eff1e5d
;; CommitDate: Fri Nov 18 14:33:06 2022 +0100

;; 20220627T205038+0100
;; (define-public sbcl-metacopy
;; added-to-downstream-guix f136e83840a2d3ef74864a5147352387f652691a
;; CommitDate: Fri Nov 18 14:27:18 2022 +0100

;; 20220707T232742+0100
;; (define-public sbcl-asdf-system-connections
;; added-to-downstream-guix 89ebe054c5c32a6bb751548addda6fd31a27d099
;; CommitDate: Fri Nov 18 14:15:41 2022 +0100

;;+end-gwkkwg

;; 20210204T013223+0000
;; (define-public sbcl-specialization-store
;; added-to-downstream-guix 68608dd412c49a3372567b2d43633d9c7161ecbb
;; CommitDate: Thu Feb 4 14:07:30 2021 +0100

;; 20210105T202423+0000
;; (define-public sbcl-py-configparser
;; added-to-downstream-guix 288fe185e86763f5d18e2efe378b6c86c091fc6a
;; CommitDate: Wed Jan 6 14:00:35 2021 +0100

;; 20210109T133854+0000
;; (define-public sbcl-garbage-pools
;; added-to-downstream-guix df898f7206f3925cdc041a8578d9dbff2f0118f1
;; CommitDate: Sun Jan 10 09:26:41 2021 +0100

;; 20210113T214328+0000
;; (define-public sbcl-mssql
;; added-to-downstream-guix 88eb5370ec155902ed5fe7636e91e932079b338a
;; CommitDate: Thu Jan 14 10:22:50 2021 +0100

;; 20201221T202956+0000
;; (define-public sbcl-cl-mustache
;; added-to-downstream-guix c072887bb0b37aea36d6ba6e0dc636858b4b440a
;; CommitDate: Tue Dec 22 10:11:26 2020 +0100

;; 20201215T225111+0000
;; (define-public sbcl-asdf-finalizers
;; added-to-downstream-guix 14c00ab710b564fc2e23bb55925534bfd99b1acb
;; CommitDate: Fri Dec 18 10:16:08 2020 +0100

;; 20200107T212250+0000
;; added-to-downstream-guix 2ae3033449a6ee803fc3ead77c5f26967e9dc34c
;; CommitDate: Fri Dec 11 19:17:00 2020 +0100
;; (define-public sbcl-cl-abnf

;; 20201212T002124+0000
;; (define-public sbcl-command-line-arguments
;; added-to-downstream-guix f42e54dfaaece18a5065ddd328750d8b316605f3
;; CommitDate: Sun Dec 13 09:48:18 2020 +0100

;; <2021-04-15 Thu>
;; (define-public sbcl-png
;; added-to-downstream-guix 1cef75faaebec55d0c5f1c03aed8deebff1dbad4
;; CommitDate: Mon Apr 19 17:06:31 2021 +0200

;; <2021-04-15 Thu>
;; (define-public sbcl-fare-mop
;; added-to-downstream-guix 9f084143d8be12462947c8a3bf5f7f4b9d42013b
;; CommitDate: Mon Apr 19 17:18:17 2021 +0200

;; <2021-04-15 Thu>
;; (define-public sbcl-inferior-shell
;; added-to-downstream-guix bde6c43fbcb202933ebe64d746e2d74b36fbdbc2
;; CommitDate: Mon Apr 19 17:28:12 2021 +0200

;; <2021-04-15 Thu>
;; (define-public sbcl-cl-svg
;; added-to-downstream-guix f7b45ede9f9220a647cd4bae36e629a18a677cfb
;; CommitDate: Mon Apr 19 17:11:00 2021 +0200

;;https://github.com/inconvergent
;;+begin-inconvergent

;; NOTE: (Sharlatan-20231010T015304+0100): Arcvhied project. See auxin. For a
;; stripped version of this repo
;;
;; 20221111T210641+0000
;;-(define-public sbcl-weird

;; 20221111T211104+0000
(define-public sbcl-veq
  (let ((commit "6f8041a20724d65076c06aa11178d94a3266d16c")
        (revision "1"))
    (package
      (name "sbcl-veq")
      (version (git-version "3.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/inconvergent/cl-veq")
               (commit commit)))
         (file-name (git-file-name "cl-veq" version))
         (sha256
          (base32 "1hby08h7qj88nkksg7niaa049rzb5h4s1azqd85q2fb4l49w3z3s"))))
      (build-system asdf-build-system/sbcl)
      (native-inputs (list sbcl-prove))
      (home-page "https://github.com/inconvergent/weir")
      (synopsis "2-4d vector and matrix operations")
      (description
       "VEQ is a set of convenience utilities for writing (1d/)2d/3d vector
mathematics.  It suports single vectors or arrays of vectors, with some
broadcasting and reduction operations.")
      (license license:expat))))

;; NOTE: (Sharlatan-20221111T211502+0000): ECL is not curently supported
;;
;; ecl-veq

(define-public cl-veq
  (sbcl-package->cl-source-package sbcl-veq))

;;+end-inconvergent


;; <2021-04-29 Thu>
;; (define-public sbcl-unit-test
;; added-to-downstream-guix c72c3e50cd29c45f9e4f32313e5d937905085050
;; CommitDate: Fri Apr 30 09:16:22 2021 +0200

;; <2021-04-29 Thu>
;; (define-public sbcl-bknr-datastore
;; added-to-downstream-guix 91ba42509e764543cced393cfcb99140c20227bc
;; CommitDate: Fri Apr 30 09:42:07 2021 +0200

;; <2021-05-17 Mon>
;; (define-public sbcl-cl-package-locks
;; added-to-downstream-guix 7f96fb3f4591890bc324426b21dbfc386512f546
;; CommitDate: Sat May 15 10:21:39 2021 +0200

;; <2021-05-17 Mon>
;; (define-public sbcl-cl-typesetting
;; added-to-downstream-guix 0d85c83602c58cf83117643571e56205cfaeadc9
;; CommitDate: Mon May 17 10:43:15 2021 +0200

;; <2021-05-17 Mon>
;; (define-public sbcl-shasht
;; added-to-downstream-guix ff11a9f449e2f259faabebd075ce2ae1e13d27c2
;; CommitDate: Tue May 18 09:22:08 2021 +0200

;; 20210523T170845+0100
;; (define-public sbcl-djula
;; added-to-downstream-guix 3a89ff123a52059743d48f6c3428fc436b4d397a
;; CommitDate: Tue May 25 11:16:55 2021 +0200

;; 20210523T211756+0100
;; (define-public sbcl-cl-locale
;; added-to-downstream-guix 7af6a356bbb3bd690b42f479a5a336b3091acff3
;; CommitDate: Tue May 25 11:04:25 2021 +0200

;; 20210523T212013+0100
;; (define-public sbcl-cl-slice
;; added-to-downstream-guix a0dcb1aa8f03d2b4702c9dc31d21d4e0e1090122
;; CommitDate: Tue May 25 11:09:11 2021 +0200

;; 20210523T211203+0100
;; (define-public sbcl-gettext
;; added-to-downstream-guix 16342832c522796a19d209b0159fcb3fb0d9bc71
;; CommitDate: Tue May 25 10:39:43 2021 +0200

;; 20210523T211432+0100
;; (define-public sbcl-parser-combinators
;; added-to-downstream-guix 77bd1b5be0cfebdd3c6fbc55658c473cf43f2832
;; CommitDate: Tue May 25 10:50:05 2021 +0200

;; 20210523T210914+0100
;; (define-public sbcl-arnesi
;; added-to-downstream-guix 0e007842c9ab3021160596a0de14a2ef1b94acb2
;; CommitDate: Tue May 25 10:31:27 2021 +0200

;; TODO: (Sharlatan-20220709T215016+0100): Needs more love
;;
;; 20220709T215009+0100
(define sbcl-femlisp
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
         (file-name (git-file-name "femlisp" version))
         (sha256
          (base32 "08l2x1jq3vfhh8m14wijd8c78n589cy5hd2py2jfj3yfiqyipasa"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:asd-systems '("cl-cpu-affinity"
                         "ddo"
                         "dealii-tutorial"
                         "femlisp-basic"
                         "femlisp-ddo"
                         "femlisp-dictionary"
                         "femlisp-matlisp"
                         "femlisp-mpi-worker"
                         "femlisp-parallel"
                         "femlisp-picture"
                         "femlisp-save-core"
                         "femlisp"
                         "mpi-worker"
                         "net.scipolis.graphs")
         #:phases
         (modify-phases %standard-phases
           (add-after 'unpack 'cd-systems
             (lambda _
               (chdir "systems"))))))
      (native-inputs
       (list sbcl-fiveam))
      (inputs
       (list sbcl-alexandria
             sbcl-bordeaux-threads
             sbcl-cffi
             sbcl-cl-gd
             sbcl-cl-mpi
             sbcl-closer-mop
             sbcl-cl-ppcre
             sbcl-femlisp
             sbcl-flexi-streams
             sbcl-lfarm
             sbcl-lparallel
             sbcl-trees))
      (home-page "http://www.femlisp.org/")
      (synopsis "Common Lisp finite element method framework")
      (description
       "FEMLISP is a Common Lisp framework for solving partial differential equations
with the help of the @acronym{FEM, Finite Element Method}.")
      (license license:bsd-3))))

(define-public sbcl-cl-gd
  (let ((commit "0e1812a38f93ece0c3b183a92be6e440cecfd7e6")
        (revision "1"))
    (package
      (name "sbcl-cl-gd")
      (version (git-version "0.6.1" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/edicl/cl-gd")
               (commit commit)))
         (file-name (git-file-name "cl-gd" version))
         (sha256
          (base32 "1wa6nv5bdf0v38hzr6cfadkk6mhvvnj9lpl9igcxygdjbnn2a3y6"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:asd-systems '("cl-gd" "cl-gd-test")))
      (inputs (list sbcl-uffi gd))
      (home-page "https://edicl.github.io/cl-gd/")
      (synopsis "UFFI bindings to the GD graphics library")
      (description
       "CL-GD is a library for Common Lisp which provides an interface to the GD
Graphics Library for the dynamic creation of images. It is based on UFFI and
should thus be portable to all CL implementations supported by UFFI.")
      (license #f))))

;; NOTE: (Sharlatan-20221111T220120+0000): No ECL build
;;
;; ecl-cl-gd

(define-public cl-gd
  (sbcl-package->cl-source-package sbcl-cl-gd))

;; TODO: (Sharlatan-20221111T134608+0000): Link mpicc binary int 'mpi/wrap.lisp'
;; and others
;;
;; 20220709T235535+0100
(define sbcl-cl-mpi
  (let ((commit "ba92be06ec1dca74d0ca5256aa387d8a28c8ad86")
        (revision "1"))
    (package
      (name "sbcl-cl-mpi")
      (version (git-version "0.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/marcoheisig/cl-mpi")
               (commit commit)))
         (file-name (git-file-name "cl-mpi" version))
         (sha256
          (base32
           "1ykwk7acjhzpsjgm2b5svdpyw2qgrh860gkx3n2ckyrgd9l9q6jb"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       ;; TODO: (Sharlatan-20220710T001624+0100): tests failed :
       ;;
       ;;  plm_rsh_agent: ssh : rsh
       ;; Please either unset the parameter, or check that the path is correct
       ;; --------------------------------------------------------------------------
       ;; [localhost:00080] [[INVALID],INVALID] FORCE-TERMINATE AT Not found:-13 - error plm_rsh_component.c(335)
       ;; [localhost:00078] [[INVALID],INVALID] ORTE_ERROR_LOG: Unable to start a daemon on the local node in file ess_singleton_module.c at line 716
       ;; [localhost:00078] [[INVALID],INVALID] ORTE_ERROR_LOG: Unable to start a daemon on the local node in file ess_singleton_module.c at line 172
       ;;
       `(#:tests? #f
         #:asd-systems '("cl-mpi"
                         "cl-mpi-asdf-integration"
                         "cl-mpi-extensions"
                         "cl-mpi-test-suite")))
      (native-inputs
       (list sbcl-fiveam))
      (inputs
       (list openmpi
             sbcl-alexandria
             sbcl-cffi
             sbcl-cl-conspack
             sbcl-static-vectors))
      (home-page "https://github.com/marcoheisig/cl-mpi.git")
      (synopsis "Common Lisp bindings for the Message Passing Interface (MPI)")
      (description
       "@code{cl-mpi} provides convenient CFFI bindings for the Message Passing
Interface (MPI).  MPI is typically used in High Performance Computing to utilize
big parallel computers with thousands of cores.  It features minimal
communication overhead with a latency in the range of microseconds. In
comparison to the C or FORTRAN interface of MPI, cl-mpi relieves the programmer
from working with raw pointers to memory and a plethora of mandatory function
arguments.")
      (license license:expat))))

(define cl-mpi
  (sbcl-package->cl-source-package sbcl-cl-mpi))

;; FIXME: (Sharlatan-20221111T134434+0000): Failed ECL build:
;;
;; An error occurred during initialization:
;; Unable to load foreign library (WRAP).
;;
;; LOAD-FOREIGN-MODULE: Could not load foreign module
;; "/gnu/store/536whk3pzgfky2bi195f3q8dixal6m2z-ecl-cl-mpi-0.0.0-1.ba92be0/lib/common-lisp/ecl/cl-mpi/mpi/wrap.so"
;; (Error:
;; "/gnu/store/536whk3pzgfky2bi195f3q8dixal6m2z-ecl-cl-mpi-0.0.0-1.ba92be0/lib/common-lisp/ecl/cl-mpi/mpi/wrap.so:
;; undefined symbol: ompi_mpi_char").
;;
;; ecl-cl-mpi

;; NOTE: (Sharlatan-20221112T205556+0000): It's depends on Quicklisp in lfarm-launcher.lsip:
;;
;; (unless (find-package :quicklisp-client)
;;   (let ((namestring (merge-pathnames "quicklisp/setup.lisp"
;;                                      (user-homedir-pathname))))
;; 20221111T220926+0000
(define sbcl-lfarm
  (let ((commit "f7ba49f1ec01fb99a7aeb8f18e245a44411c361b")
        (revision "1"))
    (package
      (name "sbcl-lfarm")
      (version (git-version "0.1.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/lmj/lfarm")
               (commit commit)))
         (file-name (git-file-name "lfarm" version))
         (sha256
          (base32
           "10kfhfx26wmaa3hk3vc7hc2fzk0rl2xdjwk8ld36x6ivvd48jlkv"))))
      (build-system asdf-build-system/sbcl)
      (arguments
       `(#:asd-systems '("lfarm-admin"
                         "lfarm-client"
                         "lfarm-common"
                         "lfarm-gss"
                         "lfarm-launcher"
                         "lfarm-server"
                         "lfarm-test"
                         "lfarm-ssl")))
      (inputs
       (list sbcl-alexandria
             sbcl-bordeaux-threads
             sbcl-cl-gss
             sbcl-cl+ssl
             sbcl-cl-store
             sbcl-external-program
             sbcl-flexi-streams
             sbcl-lparallel
             sbcl-trivial-gray-streams
             sbcl-usocket))
      (home-page "https://github.com/lmj/lfarm.git")
      (synopsis "Distribute work across machines using the lparallel API")
      (description
       "LFARM is a Common Lisp library for distributing work across machines using the
LPARALLEL.")
      (license license:bsd-3))))

;; 20221112T205831+0000
;; (define-public sbcl-cl-gss
;; added-to-downstream-guix d244282b698087bb6f6cf3c1c4d57b7a5e2e8ffa
;; CommitDate: Tue Nov 15 11:22:29 2022 +0100

;;https://github.com/fukamachi
;;+begin-fukamachi

;; 20210520T162625+0100
;; (define-public sbcl-woo
;; added-to-downstream-guix 2a60770f47ca9dbb5206844348d57df24140784f
;; CommitDate: Fri May 21 11:02:06 2021 +0200

;; 20210520T172942+0100
;; (define-public sbcl-lev
;; added-to-downstream-guix c4ebe659ab982f9ed40175af6dd5d8e3a342ac3e
;; CommitDate: Fri May 21 10:28:13 2021 +0200

;; 20210520T172208+0100
;; (define-public sbcl-cl-speedy-queue
;; added-to-downstream-guix 0195d9041a5f440a7e2e14b39e98f596fddf0c12
;; CommitDate: Fri May 21 10:22:59 2021 +0200

;;+end-fukamachi

;; 20210520T224438+0100
;; (define-public sbcl-json-streams
;; added-to-downstream-guix 20eb41b66adc5933cf34323a3c010b8d57ab7eae
;; CommitDate: Fri May 21 11:10:30 2021 +0200

;; 20210529T191116+0100
;; (define-public sbcl-cl-glfw3
;; added-to-downstream-guix 901ceafadd05349d6dc254541c50da0bff4d2885
;; CommitDate: Mon Jun 14 09:55:37 2021 +0200

;; 20210604T110204+0100
;; (define-public sbcl-cepl
;; added-to-downstream-guix 5cf9137ccb20f12f88bfbb216bb24c6d8262cd1b
;; CommitDate: Mon Jun 14 09:55:38 2021 +0200

;; 20210604T195150+0100
;; (define-public sbcl-org-sampler
;; added-to-downstream-guix e101a117eb5af9affcf68e27e91d68d3bfd72986
;; CommitDate: Thu Jun 24 14:22:09 2021 +0200

;; https://github.com/rpav
;;+begin-rpav

;; 20220227T233910+0100
;; (define-public sbcl-cl-cairo2
;; added-to-downstream-guix a71e4554419e48cf24bb7f96b6e3f74427d65de5
;; CommitDate: Mon Feb 27 14:02:28 2023 +0100

;;+end-rpav

;; https://github.com/sjl
;;+begin-sjl

;; 20210608T233910+0100
;; (define-public sbcl-adopt
;; added-to-downstream-guix c0037bd5080460c88aa80000e8fa5d8f3493c335
;; CommitDate: Mon Nov 21 10:10:27 2022 +0100

;;+end-sjl

;; https://github.com/VitoVan
;;+begin-VitoVan

;; 20220227T233910+0100
;; (define-public sbcl-calm
;; added-to-downstream-guix 55054c1235ff2048079d4b83840cf22a61d04e5a
;; CommitDate: Mon Feb 27 14:13:11 2023 +0100

;;+end-VitoVan

;; 20210621T110738+0100
;; added-to-downstream-guix ad4a46b028378f38f897c74ca5728e6cb77689ca
;; CommitDate: Thu Jun 24 10:33:04 2021 +0200
;; (define-public sbcl-cl-posix-mqueue

;; http://dwim.hu
;;+begin-hu-dwim

;; 20221103T171243+0000
;; (define-public sbcl-hu.dwim.graphviz
;; added-to-downstream-guix 53c8cbb31428322e16c255f73fb7f7670ef7f8aa
;; CommitDate: Thu Nov 3 15:07:16 2022 +0100

;;+end-hu-dwim

;; <2021-11-07 Sun>
;; (define-public sbcl-eventbus
;; added-to-downstream-guix cd9df33e4144ff9d85fef55cdc6caec4ccc007b4
;; CommitDate: Wed Nov 23 09:53:11 2022 +0000

;; 20211127T133558+0000
;; added-to-downstream-guix 4beb013c84cd44a2e6dc03a2697615c660985f4a
;; CommitDate: Wed Dec 1 09:44:03 2021 +0100
;; (define-public sbcl-cl-liballegro

;; https://github.com/borodust
;;+begin-borodust

;; NOTE: (Sharlatan-20221112T212701+0000): Complete package, missing long chain.
;;
;; https://github.com/borodust/libresect
;;
;; 20220123T112516+0000
(define sbcl-cl-resect
  (let ((commit "9565d941db21785a5b4d2ed492a0cde49c5141ba")
        (revision "2"))
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
      (inputs (list sbcl-alexandria sbcl-cffi))
      (home-page "https://github.com/borodust/cl-resect")
      (synopsis "Common Lisp bindings to libresect")
      (description
       "This package provides bindings for Common Lispt for @code{libresect}")
      (license license:expat))))

(define cl-resect
  (sbcl-package->cl-source-package sbcl-cl-resect))

(define ecl-claw
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

;; 20221110T222158+0000
;; (define-public sbcl-clobber
;; added-to-downstream-guix 1f146d4714152823cabca8a9281b2f1495d8a4c8
;; CommitDate: Wed Mar 22 10:35:48 2023 +0100

;; 20221110T222158+0000
;; (define-public sbcl-kons-9
;; added-to-downstream-guix cfccc9acdb2c9892d4c41ff56ed95347f1750e3f
;; CommitDate: Wed Mar 22 10:35:49 2023 +0100

;; 20230110T230445+0000
;; (define-public sbcl-classimp
;; added-to-downstream-guix 1428e20284e8ae40953000709bce974ee327eff0
;; CommitDate: Tue Jan 17 15:04:49 2023 +0100

;; 20230306T212509+0000
;; (define-public sbcl-cl-raylib
;; added-to-downstream-guix b0dc4199d6d8ceb1d918e753e2520e2311e4db78
;; CommitDate: Tue Mar 7 11:05:11 2023 +0100

;; 20230411T215734+0100
;; (define-public sbcl-cl-fast-ecs
;; added-to-downstream-guix 3905bd72996578a83dcc5aa40c0bdcee1cd08cc6
;; CommitDate: Tue Apr 4 09:38:41 2023 +0200

;; 20230424T214253+0100
;; (define-public sbcl-chlorophyll
;; added-to-downstream-guix 870f2d40e055d57659dff0dc20b903522f055bb0
;; CommitDate: Wed Apr 26 15:08:15 2023 +0200

;; End of lisp-xyz.scm
