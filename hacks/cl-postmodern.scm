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
  (let ((commit "da01c15ab72b3dad38530f569aa096b01966b20c")
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
        (base32 "18rkqxrkavvf4ssshfd6iaa1i9bcfy4v8vksbl4ncphx8l7dnywi"))))
     (build-system asdf-build-system/sbcl)
     (native-inputs
      `(("hu.dwim.stefil" ,sbcl-hu.dwim.stefil)))
     (inputs
      `(("sbcl-cl-fad" ,sbcl-cl-fad)))
     (arguments
      `(#:asd-files '("local-time.asd"
                      "cl-postgres+local-time.asd")
        #:asd-systems '("local-time"
                        "cl-postgres+local-time")))
     (home-page "https://common-lisp.net/project/local-time/")
     (synopsis "Time manipulation library for Common Lisp")
     (description
      "The LOCAL-TIME library is a Common Lisp library for the manipulation of
dates and times.  It is based almost entirely upon Erik Naggum's paper \"The
Long Painful History of Time\".")
     (license license:expat))))

(define-public sbcl-postmodern
  (package
    (name "sbcl-postmodern")
    (version "1.32.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/marijnh/Postmodern")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0bfx0hcb9wv47qd334xs0fpmisl75dpvasq1zai210s5wqg0km6d"))))
    (build-system asdf-build-system/sbcl)
    (native-inputs
     `(("fiveam" ,sbcl-fiveam)
       ("local-time" ,sbcl-local-time)))
    (inputs
     `(("alexandria" ,sbcl-alexandria)
       ("bordeaux-threads" ,sbcl-bordeaux-threads)
       ("cl-base64" ,sbcl-cl-base64)
       ("cl-unicode" ,sbcl-cl-unicode)
       ("closer-mop" ,sbcl-closer-mop)
       ("global-vars" ,sbcl-global-vars)
       ("ironclad" ,sbcl-ironclad)
       ("md5" ,sbcl-md5)
       ("split-sequence" ,sbcl-split-sequence)
       ("uax-15" ,sbcl-uax-15)
       ("usocket" ,sbcl-usocket)))
    (arguments
     `(#:asd-systems '("postmodern"
                       "cl-postgres"
                       "s-sql"
                       "simple-date")))
    (synopsis "Common Lisp library for interacting with PostgreSQL")
    (description
     "@code{postmodern} is a Common Lisp library for interacting with
PostgreSQL databases.  It provides the following features:

@itemize
@item Efficient communication with the database server without need for
foreign libraries.
@item Support for UTF-8 on Unicode-aware Lisp implementations.
@item A syntax for mixing SQL and Lisp code.
@item Convenient support for prepared statements and stored procedures.
@item A metaclass for simple database-access objects.
@end itemize\n

This package produces 4 systems: postmodern, cl-postgres, s-sql, simple-date

@code{SIMPLE-DATE} is a very basic implementation of date and time objects, used
to support storing and retrieving time-related SQL types.  It is not loaded by
default and you can use local-time (which has support for timezones) instead.

@code{CL-POSTGRES} is the low-level library used for interfacing with a PostgreSQL
server over a socket.

@code{S-SQL} is used to compile s-expressions to strings of SQL code, escaping
any Lisp values inside, and doing as much as possible of the work at compile
time.

@code{Postmodern} itself is a wrapper around these packages and provides higher
level functions, a very simple data access object that can be mapped directly to
database tables and some convient utilities.  It then tries to put all these
things together into a convenient programming interface")
    (home-page "https://marijnhaverbeke.nl/postmodern/")
    (license license:zlib)))

(define-public cl-postmodern
  (sbcl-package->cl-source-package sbcl-postmodern))

(define-public ecl-postmodern
  (sbcl-package->ecl-package sbcl-postmodern))

sbcl-postmodern
