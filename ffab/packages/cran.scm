(define-module (ffab packages cran)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix build-system python)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (gnu packages haskell-xyz)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages protobuf)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages statistics)
  #:use-module (guix build-system gnu)
  #:use-module (guix build-system r)
  #:use-module (guix packages))

(define-public r-opencpu
  (package
   (name "r-opencpu")
   (version "2.2.2")
   (source
    (origin
     (method url-fetch)
     (uri (cran-uri "opencpu" version))
     (sha256
      (base32 "0dr3ga8vw10vllqjq6n53dwivvgvzrgrjcn17kmabp620533bj1k"))))
   (properties `((upstream-name . "opencpu")))
   (build-system r-build-system)
   (inputs
    `(("pandoc" ,pandoc)))
   (propagated-inputs
    `(("r-brew" ,r-brew)
      ("r-curl" ,r-curl)
      ("r-evaluate" ,r-evaluate)
      ("r-httpuv" ,r-httpuv)
      ("r-jsonlite" ,r-jsonlite)
      ("r-knitr" ,r-knitr)
      ("r-mime" ,r-mime)
      ("r-openssl" ,r-openssl)
      ("r-protolite" ,r-protolite)
      ("r-rappdirs" ,r-rappdirs)
      ("r-remotes" ,r-remotes)
      ("r-sys" ,r-sys)
      ("r-webutils" ,r-webutils)
      ("r-zip" ,r-zip)))
   (native-inputs
    `(("r-knitr" ,r-knitr)))
   (home-page "https://www.opencpu.org")
   (synopsis "API for embedded scientific computing producing reproducing results")
   (description
    "This package provides a system for embedded scientific computing and
reproducible research with R.  The OpenCPU server exposes a simple but powerful
HTTP api for RPC and data interchange with R.  This provides a reliable and
scalable foundation for statistical services or building R web applications.  The
OpenCPU server runs either as a single-user development server within the
interactive R session, or as a multi-user Linux stack based on Apache2.  The
entire system is fully open source and permissively licensed.  The OpenCPU
website has detailed documentation and example apps.")
   (license license:asl2.0)))

(define-public r-protolite
(package
  (name "r-protolite")
  (version "2.1")
  (source
    (origin
      (method url-fetch)
      (uri (cran-uri "protolite" version))
      (sha256
        (base32 "0mwpdlpxsxbj4s2s30d0w1h4dsg0j1jzzldh8kvxii9lpfkiv2gz"))))
  (properties `((upstream-name . "protolite")))
  (build-system r-build-system)
  (inputs
   `(("protobuf" ,protobuf)))
  (propagated-inputs
   `(("r-jsonlite" ,r-jsonlite)
     ("r-rcpp" ,r-rcpp)))
  (native-inputs
   `(("protobuf" ,protobuf)
     ("pkg-config" ,pkg-config)))
  (home-page "https://github.com/jeroen/protolite")
  (synopsis "Highly Optimized Protocol Buffer Serializers")
  (description
    "Pure C++ implementations for reading and writing several common data
formats based on Google protocol-buffers.  Currently supports @code{rexp.proto}
for serialized R objects, @code{geobuf.proto} for binary geojson, and
@code{mvt.proto} for vector tiles.  This package uses the auto-generated C++ code
by protobuf-compiler, hence the entire serialization is optimized at compile
time.  The @code{RProtoBuf} package on the other hand uses the protobuf runtime
library to provide a general- purpose toolkit for reading and writing arbitrary
protocol-buffer data in R.")
  (license license:expat)))

(define-public r-webutils
  (package
    (name "r-webutils")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "webutils" version))
       (sha256
        (base32 "16a6ds0fnb6y8i1r9ba1hf1ydb53am57s070b3hi5jmrs84b9qik"))))
    (properties `((upstream-name . "webutils")))
    (build-system r-build-system)
    (propagated-inputs
     `(("r-curl" ,r-curl)
       ("r-jsonlite" ,r-jsonlite)))
    (home-page "https://github.com/jeroen/webutils")
    (synopsis "Utility Functions for Developing Web Applications")
    (description
     "Parses http request data in application/json, multipart/form-data, or
application/x-www-form-urlencoded format.  Includes example of hosting and
parsing html form data in R using either @code{httpuv} or @code{Rhttpd}.")
    (license license:expat)))
