(use-modules (guix packages)
             (guix utils)
             (guix build-system asdf)
             (guix build-system trivial)
             (guix download)
             (guix git-download)
             ((guix licenses) #:prefix license:)
             (gnu packages)
             (gnu packages pkg-config)
             (gnu packages lisp)
             (gnu packages lisp-xyz)
             (ice-9 match))

(define-public sbcl-local-time
  (let ((commit "a177eb911c0e8116e2bfceb79049265a884b701b")
        (revision "2"))
    (package
     (name "sbcl-local-time")
     (version (git-version "1.0.6" revision commit))
     (source
      (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/dlowe-net/local-time")
             (commit commit)))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0wld28xx20k0ysgg6akic5lg4vkjd0iyhv86m388xfrv8xh87wii"))))
     (build-system asdf-build-system/sbcl)
     (native-inputs
      `(("hu.dwim.stefil" ,sbcl-hu.dwim.stefil)))
     (home-page "https://common-lisp.net/project/local-time/")
     (synopsis "Time manipulation library for Common Lisp")
     (description
      "The LOCAL-TIME library is a Common Lisp library for the manipulation of
dates and times.  It is based almost entirely upon Erik Naggum's paper \"The
Long Painful History of Time\".")
     (license license:expat))))

sbcl-local-time
