;;; GNU Guix --- Functional package management for GNU
;;; Copyright © 2021-2024 Sharlatan Hellseher <sharlatanus@gmail.com>
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

(define-module (ffab packages python-xyz)
  #:use-module (ffab packages check)
  #:use-module (ffab packages python-check)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages astronomy)
  #:use-module (gnu packages base)
  #:use-module (gnu packages check)
  #:use-module (gnu packages fontutils)
  #:use-module (gnu packages commencement)
  #:use-module (gnu packages xiph)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages databases)
  #:use-module (gnu packages freedesktop)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages geo)
  #:use-module (gnu packages image)
  #:use-module (gnu packages image-processing)
  #:use-module (gnu packages libusb)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages python-build)
  #:use-module (gnu packages python-check)
  #:use-module (gnu packages python-compression)
  #:use-module (gnu packages python-crypto)
  #:use-module (gnu packages python-science)
  #:use-module (gnu packages python-web)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages serialization)
  #:use-module (gnu packages sphinx)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages time)
  #:use-module (gnu packages version-control)
  #:use-module (gnu packages video)
  #:use-module (gnu packages xml)
  #:use-module (gnu packages)
  #:use-module (guix build-system python)
  #:use-module (guix build-system pyproject)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix utils)
  #:use-module (guix build utils)
  #:use-module (guix packages))

;; 20230212T194438+0000
(define python-gallia
  (package
    (name "python-gallia")
    ;; TODO: This is the latest version supporting current Guix's Python 3.9.
    ;; Update when more fresh Python is available.
    (version "1.0.3")
    (source
     (origin
       ;; There are no tests in the PyPI tarball.
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Fraunhofer-AISEC/gallia")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0nkzpy3cybpxbcm1hvnki7mnzpnb111p61i29cd3f4mf46g7g1ha"))))
    (build-system pyproject-build-system)
    (arguments
     (list #:phases
           #~(modify-phases %standard-phases
               ;; NOTE: Test steps are sourced from GitHub Actions attached to
               ;; the project. This is a minimal test suite, more precise tests
               ;; require setting up local service.
               (replace 'check
                 (lambda* (#:key tests? #:allow-other-keys)
                   (when tests?
                     (invoke "python" "-m" "pytest" "-v" "tests/python")))))))
    (native-inputs
     (list python-poetry-core
           python-pytest
           python-pytest-asyncio))
    (propagated-inputs
     (list python-aiohttp
           python-aiofiles-0.8
           python-aiosqlite
           python-argcomplete-next
           python-can
           python-construct
           python-tabulate
           python-zstandard-0.17
           ))
    (home-page "https://github.com/Fraunhofer-AISEC/gallia")
    (synopsis "Extendable Pentesting Framework")
    (description
     "Gallia is an extendable pentesting framework with the focus on the
automotive domain.  The scope of the toolchain is conducting penetration tests
from a single ECU up to whole cars.")
    (license license:apsl2)))

;; 20230212T200910+0000
;; For python-gallia@1.0.3
(define-public python-zstandard-0.17
  (package
    (inherit python-zstandard)
    (name "python-zstandard")
    (version "0.17.0")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "zstandard" version))
       (sha256
        (base32 "1dmzmx5k6zw8fhv9gp8hrdv8iqsb335w9pd358jgf7a4j75r94gs"))))))

;; 20240109T191926+0000
(define-public python-about-time
  ;; No release tags in VCS, no tests in PyPI archive, use the latest commit
  (let ((commit "bcabddd4c864d58b272a1d69b321ca9184ba45ac")
        (revision "0"))
    (package
      (name "python-about-time")
      (version (git-version "4.2.1" revision commit))
      (source
       (origin
         (method git-fetch) ;no tests in PyPi archive
         (uri (git-reference
               (url "https://github.com/rsalmei/about-time")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0gx69ha8vg5xcy09i2fsx0lh3mg9m7xqxr9z2agzz9cp2nl5f2vv"))))
      (build-system pyproject-build-system)
      (arguments
       (list
        #:phases
        #~(modify-phases %standard-phases
            (add-before 'build 'pretend-version
              (lambda _
                (setenv "SETUPTOOLS_SCM_PRETEND_VERSION"
                        #$(package-version this-package)))))))
      (native-inputs
       (list python-pytest))
      (home-page "https://github.com/rsalmei/about-time")
      (synopsis "Measure timing and throughput of code blocks")
      (description
       "@code{about-time} is a helper for tracking time and throughput of code
blocks, with beautiful human friendly renditions.

Key feature are:

@itemize
@item measure the duration of two or more blocks at the same time, including the
whole duration

@item instrument a code to cleanly retrieve durations in one line, to log or
send to time series databases

@item easily see human friendly durations in s (seconds), ms (milliseconds), µs
(microseconds) and even ns (nanoseconds)

@item easily see human friendly counts with SI prefixes like k, M, G, T, etc

@item measure the actual throughput of a block

@item easily see human friendly throughputs in @code{/second}, @code{/minute},
@code{/hour} or even @code{/day}, including SI prefixes
@end itemize")
      (license license:expat))))

;; 20240109T194103+0000
(define-public python-alive-progress
  (package
    (name "python-alive-progress")
    (version "3.1.5")
    (source
     (origin
       (method git-fetch) ;no tests in PyPi archive
       (uri (git-reference
             (url "https://github.com/rsalmei/alive-progress")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1rpjnmhwdgxcba95sw96k56ds3hi80zgrp1047yl876c1b8nb668"))))
    (build-system pyproject-build-system)
    (propagated-inputs
     (list python-about-time python-grapheme))
    (native-inputs
     (list python-click python-pytest))
    (home-page "https://github.com/rsalmei/alive-progress")
    (synopsis "Progress Bar, with real-time throughput, ETA, and animations")
    (description
     "This package provides a new kind of Progress Bar, with real-time throughput,
ETA, and very cool animations!")
    (license license:expat)))

;; 20230212T201907+0000
(define-public python-argcomplete-next
  (package
    (inherit python-argcomplete)
    (name "python-argcomplete")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "argcomplete" version))
       (sha256
        (base32 "082v88i9s6rglm7fkksm2wwmni386qjsw60l20sj0rlxr1waswk3"))))))

;; 20230212T202602+0000
;; For python-gallia@1.0.3
(define-public python-aiofiles-0.8
  (package
    (inherit python-aiofiles)
    (name "python-aiofiles")
    (version "0.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "aiofiles" version))
       (sha256
        (base32 "0n8yj2d4srlkrhk72fcnkfb3jkv74a5aghxjhcp3p2i46lrg4d43"))))))

;; 20231022T002437+0100
(define-public python-av
  (package
    (name "python-av")
    (version "10.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "av" version))
       (sha256
        (base32 "01byqsjclkg65mhr6b4i2r2n4y7af9kdd2c35lxny27121b3vzca"))))
    (build-system pyproject-build-system)
    (arguments
     (list
      #:test-flags
      #~(list
         ;; Tests require outbound access to download test data
         ;; from http://fate.ffmpeg.org/fate-suite:
         ;;
         ;; E urllib.error.URLError: <urlopen error [Errno -3]
         ;; Temporary failure in name resolution>
         ;;
         "--ignore=tests/test_doctests.py"
         "--ignore=tests/test_timeout.py"
         "-k"
         (string-append
          "not test_data"
          " and not test_container_probing"
          " and not test_stream_probing"
          " and not test_transcode"
          " and not test_codec_tag"
          " and not test_parse"
          " and not test_decode_audio_sample_count"
          " and not test_decoded_motion_vectors"
          " and not test_decoded_motion_vectors_no_flag"
          " and not test_decoded_time_base"
          " and not test_decoded_video_frame_count"
          " and not test_encoding_aac"
          " and not test_encoding_dnxhd"
          " and not test_encoding_dvvideo"
          " and not test_encoding_h264"
          " and not test_encoding_mjpeg"
          " and not test_encoding_mp2"
          " and not test_encoding_mpeg1video"
          " and not test_encoding_mpeg4"
          " and not test_encoding_pcm_s24le"
          " and not test_encoding_png"
          " and not test_encoding_tiff"
          " and not test_encoding_xvid"
          " and not test_reading_from_buffer"
          " and not test_reading_from_buffer_no_seek"
          " and not test_reading_from_file"
          " and not test_reading_from_pipe_readonly"
          " and not test_reading_from_write_readonly"
          " and not test_writing_to_custom_io_dash"
          " and not test_writing_to_custom_io_image2"
          " and not test_decode_half"
          " and not test_seek_end"
          " and not test_seek_float"
          " and not test_seek_int64"
          " and not test_seek_middle"
          " and not test_seek_start"
          " and not test_stream_seek"
          " and not test_selection"
          " and not test_stream_tuples"
          " and not test_movtext"
          " and not test_vobsub"
          " and not test_roundtrip"
          " and not test_stream_probing"))
      #:phases
      #~(modify-phases %standard-phases
          (add-before 'check 'build-extensions
            (lambda _
              (invoke "python" "setup.py" "build_ext" "--inplace"))))))
    (native-inputs
     (list pkg-config
           python-cython
           python-editorconfig
           python-numpy
           python-pillow
           python-pytest))
    (inputs
     ;; XXX: Build is failing with FFmpeg 6.0, unresolved upstream.
     ;; See https://github.com/PyAV-Org/PyAV/issues/1106
     (list ffmpeg-5))
    (home-page "https://github.com/PyAV-Org/PyAV")
    (synopsis "Pythonic bindings for FFmpeg's libraries.")
    (description
     "PyAV is a Python library that allows for direct and precise manipulation
of media through containers, streams, packets, codecs, and frames. It provides
access to the powerful FFmpeg libraries while managing the complex details as
much as possible. PyAV also facilitates data transformation and integration with
other packages such as Numpy and Pillow. However, working with media is a
challenging task and PyAV cannot abstract it away or make all the best decisions
for you. If you can accomplish your tasks with the ffmpeg command, PyAV may not
be necessary. Nonetheless, PyAV is an essential tool when working with media
that requires its specific capabilities.")
    (license license:bsd-3)))

;; 20231022T014831+0100
(define-public python-djitellopy
  (package
    (name "python-djitellopy")
    (version "2.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "djitellopy" version))
       (sha256
        (base32 "1kc0syb4hpn7fay0rxpazmczag6jw3pncrrc6v762jj0afiwkrps"))))
    (build-system pyproject-build-system)
    (arguments
     (list
      #:tests? #f ; No tests provided.
      #:phases
      #~(modify-phases %standard-phases
          ;; XXX: Can't detect opencv-python version. The input opencv might not
          ;; set the version correctly.
          (delete 'sanity-check))))
    ;; opencv provides OpenCV-Python which is Listed as install requirement.
    (propagated-inputs
     (list opencv
           python-av
           python-numpy
           python-pillow))
    (home-page "https://github.com/damiafuentes/DJITelloPy")
    (synopsis "DJI Tello drone lib with video streaming, swarms and state packets")
    (description
     "DJI Tello drone python interface using the official Tello SDK and Tello
EDU SDK.

 This library has the following features:
@itemize
@item Implementation of all tello commands
@item Retrieve a video stream easely
@item Receive and parse state packets
@item Control a swarm of drones
@end itemize")
    (license license:expat)))

;; 20240104T162509+0000
(define-public python-pfzy
  (package
    (name "python-pfzy")
    (version "0.3.4")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "pfzy" version))
       (sha256
        (base32 "1wdkjkmwwg920ybmr46m1jry06fqxyc2v2r9wwc3ddhhvmjsfzki"))))
    (build-system pyproject-build-system)
    (propagated-inputs
     (list python-myst-parser))
    (native-inputs
     (list python-poetry-core python-pytest))
    (home-page "https://github.com/kazhala/pfzy")
    (synopsis "Python port of the fzy fuzzy string matching algorithm")
    (description
     "This package provides a Python port of the @code{fzy} fuzzy string matching
 algorithm.")
    (license license:expat)))

;; 20221104T210922+0000
(define-public python-py3amf
  (package
    (name "python-py3amf")
    (version "0.8.10")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "Py3AMF" version))
       (sha256
        (base32 "0b4m94qjncl4rk6ig329vfk60dbb0b1wvs2lwr8m7bwxl0s2vb3d"))))
    (build-system python-build-system)
    (propagated-inputs (list python-defusedxml))
    (home-page "https://github.com/StdCarrot/Py3AMF")
    (synopsis "AMF support for Python3")
    (description
     "This package provides a Python module Py3AMF which is a fork of PyAMF
with support of Python v3+.")
    (license license:expat)))

;; 20231011T015829+0100
(define-public python-can
  (package
    (name "python-can")
    (version "4.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "python-can" version))
       (sha256
        (base32 "0psrij2rx9jm7zlwr54rjb5nsxqxj342lvbb4x6kr7r82d30zmba"))))
    (build-system pyproject-build-system)
    (arguments
     (list
      #:test-flags
      ;; XXX: Tests requiring root access to configure interfaces.
      ;; See project's CI and test/open_vcan.sch
      #~(list "-k"
              (string-append "not test_dlc_less_than_eight"
                             " and not test_extended_message"
                             " and not test_fd_message"
                             " and not test_fd_message_with_brs"
                             " and not test_fileno"
                             " and not test_multiple_shutdown"
                             " and not test_no_message"
                             " and not test_remote_message"
                             " and not test_standard_message"
                             " and not test_sub_second_timestamp_resolution"
                             " and not test_timestamp"
                             " and not test_timestamp_is_absolute"
                             " and not test_unique_message_instances"
                             " and not test_dlc_less_than_eight"
                             " and not test_extended_message"
                             " and not test_fd_message"
                             " and not test_fd_message_with_brs"
                             " and not test_fileno"
                             " and not test_multiple_shutdown"
                             " and not test_no_message"
                             " and not test_remote_message"
                             " and not test_standard_message"
                             " and not test_sub_second_timestamp_resolution"
                             " and not test_timestamp"
                             " and not test_timestamp_is_absolute"
                             " and not test_unique_message_instances"))))
    (native-inputs
     (list python-canalystii
           python-coveralls
           python-hypothesis
           python-msgpack
           python-parameterized
           python-pyserial
           python-pytest
           python-pytest-timeout))
    (propagated-inputs
     (list python-packaging
           python-setuptools
           python-typing-extensions
           python-wrapt))
    (home-page "https://github.com/hardbyte/python-can")
    (synopsis "Controller Area Network interface module for Python")
    (description
     "The @code{can} package provides controller area network support for Python
developers; providing common abstractions to different hardware devices, and a
suite of utilities for sending and receiving messages on a can bus.

The Controller Area Network is a bus standard designed to allow microcontrollers
and devices to communicate with each other.  It has priority based bus
arbitration and reliable deterministic communication. It is used in cars,
trucks, boats, wheelchairs and more.")
    (license license:gpl3+)))

;; 20231230T184513+0000
(define-public python-fastrlock
  (package
    (name "python-fastrlock")
    (version "0.8.2")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "fastrlock" version))
       (sha256
        (base32 "0sim32hnpp3g3dzy903dw7rim72xl5wi6lfq520dzi7rbhhwjkk4"))))
    (build-system pyproject-build-system)
    (home-page "https://github.com/scoder/fastrlock")
    (synopsis "RLock implementation for CPython")
    (description
     "FastRLock is a C-level implementation of an optimistic lock for CPython
 which can be used as a replacement for @code{threading.RLock}.  It is
implemented in Cython and offers a C-API for direct use from Cython code.  The
lock is 10x faster than @code{threading.RLock} under normal conditions and 10%
faster under congestion, making it a faster option than the revised RLock
implementation in Python 3.2.")
    (license license:expat)))

;; 20240104T162846+0000
(define-public python-inquirerpy
  (package
    (name "python-inquirerpy")
    (version "0.3.4")
    (source
     (origin
       (method git-fetch) ; 0.3.4 is missed in PyPI
       (uri (git-reference
             (url "https://github.com/kazhala/InquirerPy")
             (commit version)))
       (file-name (git-file-name name version))
       (sha256
        (base32 "01s1wpsfsjxd1vpvhrz9b5314fml8kg11a3fiqnrzqqlf5j33782"))))
    (build-system pyproject-build-system)
    (arguments
     ;; XXX: Tests failed a lot and the project looks dorman.
     ;; https://github.com/kazhala/InquirerPy/issues/62
     ;; https://github.com/kazhala/InquirerPy/issues/61
      `(#:tests? #f))
    (propagated-inputs
     (list python-myst-parser
           python-pfzy
           python-prompt-toolkit))
    (native-inputs
     (list python-poetry-core))
    (home-page "https://github.com/kazhala/InquirerPy")
    (synopsis "Python port of Inquirer.js")
    (description
     "This package provides a Python port of Inquirer.js - a collection of common
interactive CLIs.")
    (license license:expat)))

;; 20220513T200612+0100
;; (define-public python-parsley
;; added-to-downstream-guix 0ce76141bfe52b7c65d6185d036b4eaad2a0f0a3
;; CommitDate: Wed Jun 14 14:52:22 2023 +0300

;; 20220621T191218+0100
;; (define-public python-posix-ipc
;; added-to-downstream-guix b12da85668c40be322204e1ca04fb70b4d709411
;; CommitDate: Fri Aug 5 21:08:49 2022 +0300

;; 20220621T222117+0100
(define-public python-progressbar
  (package
    (name "python-progressbar")
    (version "2.5")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "progressbar" version))
       (sha256
        (base32 "0qvckfpkdk7a35r9lc201rkwc18grb4ddbv276sj7qm2km9cp0ax"))))
    (build-system python-build-system)
    (home-page "https://github.com/niltonvolpato/python-progressbar")
    (synopsis "Text progress bar library for Python")
    (description "Text progress bar library for Python with auto-resizing feature.")
    ;; python-progressbar/LICENSE.txt
    ;; You can redistribute and/or modify this library under the terms of the
    ;; GNU LGPL license or BSD license (or both).
    (license (list license:lgpl2.0+ license:bsd-3))))

;; 20220627T220024+0100
;; (define-public python-glymur
;; added-to-downstream-guix 95ed62c12bb33f6b64daf2f51df0e610f1abc913
;; CommitDate: Fri Jul 8 23:58:12 2022 +0200

;; 20240109T191355+0000
(define-public python-grapheme
  ;; v0.6.0 has no release tags in VCS, no tests in PyPI archive, use the latest
  ;; commit.
  (let ((commit "66f07ca02fc64a9ea2f9b4ad66593b226d473adb")
        (revision "0"))
    (package
      (name "python-grapheme")
      (version (git-version "0.6.0" revision commit))
      (source
       (origin
         (method git-fetch)               ; no tests in PyPI release
         (uri (git-reference
               (url "https://github.com/alvinlindstam/grapheme")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0fqw6iymg7s8q1pfwijx0awcj1j55jppx7hfa5ci7y0c7x4jc8v9"))))
      (arguments
       (list
        #:phases
        #~(modify-phases %standard-phases
            (add-before 'build 'pretend-version
              (lambda _
                (setenv "SETUPTOOLS_SCM_PRETEND_VERSION"
                        #$(package-version this-package)))))))
      (build-system pyproject-build-system)
      (native-inputs
       (list python-pytest python-twine))
      (home-page "https://github.com/alvinlindstam/grapheme")
      (synopsis "Unicode grapheme helpers")
      (description
       "A Python package for working with user perceived characters.  More
 specifically, string manipulation and calculation functions for working with
grapheme cluster groups (graphemes) as defined by the
@url{http://unicode.org/reports/tr29/,Unicode Standard Annex #29}")
      (license license:expat))))

;; 20220702T095332+0100
;; (define-public python-h5netcdf
;; added-to-downstream-guix 3bd2b1b544c45e5e341010e48bcedcb0ba593480
;; CommitDate: Thu Aug 4 12:05:53 2022 +0200

;; 20221012T205858+0100
;; (define-public python-siosocks
;; added-to-downstream-guix 5ed098095dbabbc93b5a8b6a1f24c61517f87d2d
;; CommitDate: Mon Nov 7 20:29:18 2022 +0100

;; 20240104T155647+0000
(define-public python-types-pyyaml
  (package
    (name "python-types-pyyaml")
    (version "6.0.12.12")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "types-PyYAML" version))
       (sha256
        (base32 "0qjhhphqjql5xf9lbcb7472i1yl531kg3hzmbbwzvq7xjb9p6hrk"))))
    (build-system pyproject-build-system)
    (home-page "https://github.com/python/typeshed")
    (synopsis "Typing stubs for @code{pyyaml}")
    (description
     "This package contains typing stubs for @code{pyyaml}, a
very small subset the Python stubs contained in the complete @code{pyyaml}
collection.")
    (license license:asl2.0)))

;; 20240104T155342+0000
(define-public python-types-simplejson
  (package
    (name "python-types-simplejson")
    (version "3.19.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "types-simplejson" version))
       (sha256
        (base32 "06zfz1wlypj5h7yii3s34rycg2r2la5529n7h1mrvnc9dy41zj7b"))))
    (build-system pyproject-build-system)
    (home-page "https://github.com/python/typeshed")
    (synopsis "Typing stubs for @code{simplejson}")
    (description
     "This package contains typing stubs for @code{simplejson}, a
very small subset the Python stubs contained in the complete @code{simplejson}
collection.")
    (license license:asl2.0)))

;; 20240104T014637+0000
(define-public python-types-tqdm
  (package
    (name "python-types-tqdm")
    (version "4.66.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "types-tqdm" version))
       (sha256
        (base32 "0b0ifiz7pnqa8cb4cwspnpv3c86h2fvsjwhg60b8ihiqj937xgbl"))))
    (build-system pyproject-build-system)
    (arguments
     (list #:tests? #f)) ; no tests provided
    ;; XXX: According to https://pypi.org/project/types-tqdm/ the repository
    ;; contains all contrib packages tqdm is part of them.
    (home-page "https://github.com/python/typeshed")
    (synopsis "Typing stubs for @code{tqdm}")
    (description
     "This package contains typing stubs for @code{tqdm}, a
very small subset the Python stubs contained in the complete @code{tqdm}
collection.")
    (license license:asl2.0)))

;; 20221011T224747+0100
;; (define-public python-aioftp
;; added-to-downstream-guix b0db0b2b2d3c6d5fecb6c7727b3173c21b896540
;; CommitDate: Mon Nov 7 20:29:21 2022 +0100

;; 20221010T225525+0100
;; (define-public parfive
;; added-to-downstream-guix 472917ea6c479b3546ffaea02f755ed9c6e8d46b
;; CommitDate: Mon Nov 7 20:29:21 2022 +0100

;; 20231012T020416+0100
(define-public python-canalystii
  (package
    (name "python-canalystii")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "canalystii" version))
       (sha256
        (base32 "110grwfq0azhpzplnhspragyn577dm7gvq3y9byhgi45vyff0wbl"))))
    (arguments
     (list
      ;; Tests require Canalyst-II USB device.
      #:tests? #f))
    (build-system pyproject-build-system)
    (propagated-inputs
     (list python-pyusb))
    (home-page "https://github.com/projectgus/python-canalystii")
    (synopsis "Python userspace driver for Canalyst-II USB CAN analyzer")
    (description
     "This driver is based on black box reverse engineering of the USB behaviour
of the proprietary software, and reading the basic data structure layouts in the
original python-can canalystii source.")
    (license license:bsd-3)))

;; 20240129T120744+0000
(define-public python-cmyt
  (package
    (name "python-cmyt")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "cmyt" version))
       (sha256
        (base32 "1zabmckr1z637pfqqvlkj0asfqqvx2x92163dby8x0c8yiqgdvjb"))))
    (build-system pyproject-build-system)
    (native-inputs
     (list python-colorspacious python-pytest python-pytest-mpl))
    (propagated-inputs
     (list python-matplotlib python-numpy))
    (home-page "https://yt-project.org/")
    (synopsis "Matplotlib colormaps from the yt project")
    (description
     "This package provides a range of colormaps designed for scientific
use with Matplotlib.  It includes perceptually uniform sequential colormaps such
as @code{abre}, @code{dusk}, @code{kepl}, and @code{octarine}, as well as
monochromatic sequential colormaps like @code{blue}, @code{green}, and
@code{red}, and others (@code{algae}, @code{pastel}, and @code{xray}).")
    (license license:bsd-3)))

;; 20240129T135721+0000
(define-public python-ewah-bool-utils
  (package
    (name "python-ewah-bool-utils")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "ewah_bool_utils" version))
       (sha256
        (base32 "11z9vv9m19370j762z100dqhy2ndjzkxk3w9z02lzwadbyibal3h"))))
    (build-system pyproject-build-system)
    (arguments
     (list
      #:phases
      #~(modify-phases %standard-phases
          (add-before 'check 'build-extensions
            (lambda _
              (invoke "python" "setup.py" "build_ext" "--inplace"))))))
    (native-inputs
     (list python-cython python-pytest))
    (propagated-inputs
     (list python-numpy))
    (home-page "https://github.com/yt-project/ewah_bool_utils")
    (synopsis "EWAH Bool Array compression")
    (description "This package provide a Python wrapper to @acronym{EWAH,
 Enhanced Word-Aligned Hybrid} compression bitarray method.")
    (license license:bsd-3)))

;; 20230301T210252+0000
;; (define-public python-czml3
;; added-to-downstream-guix 0689a842710e5831d9de12964ec1fd38b360e022
;; CommitDate: Thu Mar 16 00:10:58 2023 +0100

