(define-module (ffab packages build-tools)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module (guix packages))

(define-public c2ffi-llvm-10
  (let ((commit "7371b79cdd2c0b9f091b345f362bc77f5e188f63")
        (revision "1"))
    (package
      (name "c2ffi")
      (version (git-version "0.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/rpav/c2ffi")
               (commit commit)))
         (sha256
          (base32 "0ldpdcdfvp27f9lbnx9xb663az2i6h0jwiq996mbpxpf2mylgy59"))
         (file-name (git-file-name name version))))
      (build-system cmake-build-system)
      (home-page "https://github.com/rpav/c2ffi")
      (synopsis "Clang-based FFI wrapper generator")
      (description
       "This package provide a tool for extracting definitions from C,
C++, and Objective C headers for use with foreign function call interfaces.")
      (license license:lgpl2.1))))
