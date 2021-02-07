(use-modules (guix packages)
             (guix build-system asdf)
             (guix git-download)
             ((guix licenses) #:prefix license:)
             (gnu packages lisp)
             (gnu packages lisp-xyz))

(define-public sbcl-static-dispatch
  (let ((commit "6243afcd152854c52ba33daef7394367b657d9c6")
        (revision "1"))
    (package
     (name "sbcl-static-dispatch")
     (version (git-version "0.3" revision commit))
     (source
      (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/alex-gutev/static-dispatch")
             (commit commit)))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1lli9ar1xbnhkgb5d01rlw4pvfylg2arrw68np2c07fpkkafimg7"))))
     (build-system asdf-build-system/sbcl)
     (native-inputs
      `(("prove" ,sbcl-prove)))
     (inputs
      `(("agutil" ,sbcl-agutil)
        ("alexandria" ,sbcl-alexandria)
        ("anaphora" ,sbcl-anaphora)
        ("arrows" ,sbcl-arrows)
        ("cl-environments" ,cl-environments)
        ("closer-mop" ,sbcl-closer-mop)
        ("iterate" ,sbcl-iterate)
        ("trivia" ,sbcl-trivia)))
     (home-page "https://github.com/alex-gutev/static-dispatch")
     (synopsis "Static generic function dispatch for Common Lisp")
     (description "Static dispatch is a Common Lisp library, inspired by
@code{inlined-generic-function}, which allows standard Common Lisp generic
function dispatch to be performed statically (at compile time) rather than
dynamically (runtime).  This is similar to what is known as \"overloading\" in
languages such as C++ and Java.

The purpose of static dispatch is to provide an optimization in cases where
the usual dynamic dispatch is too slow, and the dynamic features of generic
functions, such as adding/removing methods at runtime are not required.  An
example of such a case is a generic equality comparison function.  Currently
generic functions are considered far too slow to implement generic arithmetic
and comparison operations when used heavily in numeric code.")
    (license license:expat))))

sbcl-static-dispatch
