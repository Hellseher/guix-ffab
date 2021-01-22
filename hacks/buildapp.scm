(use-modules (guix packages)
             (guix utils)
             (guix build-system asdf)
             (guix build-system gnu)
             (guix build-system trivial)
             (guix download)
             (guix git-download)
             ((guix licenses) #:prefix license:)
             (gnu packages)
             (gnu packages pkg-config)
             (gnu packages lisp)
             (gnu packages lisp-xyz)
             (ice-9 match))


(define-public buildapp
  (package
    (name "buildapp")
    (version "1.5.6")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/xach/buildapp")
                    (commit (string-append "release-" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "020ipjfqa3l8skd97cj5kq837wgpj28ygfxnkv64cnjrlbnzh161"))))
    (build-system gnu-build-system)
    (native-inputs
     `(("sbcl" ,sbcl)))
    (arguments
     `(#:tests? #f
       #:make-flags
       (list (string-append "DESTDIR=" (assoc-ref %outputs "out")))
       #:strip-binaries? #f
       #:phases
       (modify-phases %standard-phases
         (delete 'configure)
         (add-after 'unpack 'set-home
           (lambda _
             (setenv "HOME" "/tmp") #t))
         (add-before 'install 'create-target-directory
           (lambda* (#:key outputs #:allow-other-keys)
             (let* ((bin (string-append (assoc-ref outputs "out") "/bin")))
               (mkdir-p bin)
               #t))))))
    (home-page "https://www.xach.com/lisp/buildapp/")
    (synopsis "Makes easy to build application executables with SBCL")
    (description
     "Buildapp is an application for SBCL or CCL that configures and saves an
executable Common Lisp image.  It is similar to cl-launch and hu.dwim.build. ")
    (license license:bsd-2)))

buildapp
