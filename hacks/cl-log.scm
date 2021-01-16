(use-modules (guix packages)
             (guix build lisp-utils)
             (guix build-system asdf)
             (guix download)
             (guix git-download)
             ((guix licenses) #:prefix license:)
             (gnu packages)
             (gnu packages lisp)
             (gnu packages lisp-xyz))

(define-public sbcl-cl-log
  (package
   (name "sbcl-cl-log")
   (version "1.0.1")
   (source
    (origin
     (method git-fetch)
     (uri (git-reference
           (url "https://github.com/nicklevine/cl-log")
           (commit "8f4b766d51e02245c310526cf1e4534ce634f837")))
     (sha256
      (base32 "1r3z9swy1b59swvaa5b97is9ysrfmjvjjhhw56p7p5hqg93b92ak"))
     (file-name (git-file-name "cl-log" version))))
   (build-system asdf-build-system/sbcl)
   (synopsis "Common Lisp general purpose logging utility")
   (description "CL-LOG is a general purpose logging utility, loosely modelled
in some respects after Gary King's Log5. Its features include: logging to
several destinations at once, via \"messengers\", each messenger is tailored to
accept some log messages and reject others, and this tailoring can be changed
on-the-fly, very rapid processing of messages which are rejected by all
messengers, fully independent use of the utility by several different
sub-systems in an application, support for messengers which cl:format text to a
stream, support for messengers which do not invoke cl:format, timestamps in
theory accurate to internal-time-units-per-second.")
   (home-page "https://github.com/nicklevine/cl-log")
   (license license:expat)))
