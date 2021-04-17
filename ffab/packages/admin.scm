(define-module (ffab packages admin)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages)
  #:use-module (gnu packages qt)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module (guix packages))

;; TODO: (Sharlatan-20210415T230303+0100):
(define-public stacer
  (package
    (name "stacer")
    (version "1.1.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/oguzhaninan/Stacer")
             (commit (string-append  "v" version))))
       (sha256
        (base32 "0qndzzkbq6abapvwq202kva8j619jdn9977sbqmmfs9zkjz4mbsd"))
       (file-name (git-file-name name version))))
    (build-system cmake-build-system)
    (arguments
     `(#:configure-flags
         (list
          "-DCMAKE_BUILD_TYPE=Release"
          (string-append
           "-DCMAKE_PREFIX_PATH=" (assoc-ref %build-inputs "qtbase")))))
    (inputs
     `(("qtbase" ,qtbase)))
    (home-page "")
    (synopsis "Linux System Optimizer and Monitoring")
    (description
     " ")
    (license license:gpl3)))
