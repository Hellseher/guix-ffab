(define-public go-cloud-google-com-go
  (package
    (name "go-cloud-google-com-go")
    (version "0.121.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "00ky62g8jd4ksddg9k7wqh4ccp01h2jly81l3nj5h1isnr54gj22"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-api
                             go-golang-org-x-oauth2
                             go-go-opentelemetry-io-otel-trace
                             go-go-opentelemetry-io-otel-sdk
                             go-go-opentelemetry-io-otel
                             go-github-com-googleapis-gax-go-v2
                             go-github-com-google-martian-v3
                             go-github-com-google-go-cmp
                             go-cloud-google-com-go-storage))
    (home-page "https://cloud.google.com/go")
    (synopsis "Google Cloud Client Libraries for Go")
    (description
     "Package cloud is the root of the packages used to access Google Cloud Services.
See
@@url{https://pkg.go.dev/cloud.google.com/go#section-directories,https://pkg.go.dev/cloud.google.com/go#section-directories}
for a full list of sub-modules.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-accessapproval
  (package
    (name "go-cloud-google-com-go-accessapproval")
    (version "1.8.7")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "accessapproval"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1hydiwi5ilwcf52rkd627w7834cwai9zw9yqik4m3a6v263fx4dp"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/accessapproval"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2))
    (home-page "https://cloud.google.com/go")
    (synopsis "Access Approval API")
    (description "Go Client Library for Access Approval API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-accesscontextmanager
  (package
    (name "go-cloud-google-com-go-accesscontextmanager")
    (version "1.9.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "accesscontextmanager"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/accesscontextmanager"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go-iam))
    (home-page "https://cloud.google.com/go")
    (synopsis "Access Context Manager API")
    (description "Go Client Library for Access Context Manager API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-aiplatform
  (package
    (name "go-cloud-google-com-go-aiplatform")
    (version "1.99.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "aiplatform"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1p08nags7qkl298zshxblgk0jwn4sbbfc09mzxc87jdqh6is132h"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/aiplatform"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go-iam))
    (home-page "https://cloud.google.com/go")
    (synopsis "Vertex AI API")
    (description "Go Client Library for Vertex AI API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-analytics
  (package
    (name "go-cloud-google-com-go-analytics")
    (version "0.29.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "analytics"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0l71sgyzrjhjlh58hrnxqk3yillcszbfwq0rr3cid7zbv1zxdwzn"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/analytics"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2))
    (home-page "https://cloud.google.com/go")
    (synopsis "Analytics API")
    (description "Go Client Library for Analytics API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-apigateway
  (package
    (name "go-cloud-google-com-go-apigateway")
    (version "1.7.7")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "apigateway"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1hydiwi5ilwcf52rkd627w7834cwai9zw9yqik4m3a6v263fx4dp"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/apigateway"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "API Gateway API")
    (description "Go Client Library for API Gateway API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-apigeeconnect
  (package
    (name "go-cloud-google-com-go-apigeeconnect")
    (version "1.7.7")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "apigeeconnect"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1hydiwi5ilwcf52rkd627w7834cwai9zw9yqik4m3a6v263fx4dp"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/apigeeconnect"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2))
    (home-page "https://cloud.google.com/go")
    (synopsis "Apigee Connect API")
    (description "Go Client Library for Apigee Connect API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-apigeeregistry
  (package
    (name "go-cloud-google-com-go-apigeeregistry")
    (version "0.9.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "apigeeregistry"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/apigeeregistry"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go-iam))
    (home-page "https://cloud.google.com/go")
    (synopsis "Apigee Registry API")
    (description "Go Client Library for Apigee Registry API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-appengine
  (package
    (name "go-cloud-google-com-go-appengine")
    (version "1.9.7")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "appengine"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1hydiwi5ilwcf52rkd627w7834cwai9zw9yqik4m3a6v263fx4dp"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/appengine"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "App Engine Admin API")
    (description "Go Client Library for App Engine Admin API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-area120
  (package
    (name "go-cloud-google-com-go-area120")
    (version "0.9.7")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "area120"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1hydiwi5ilwcf52rkd627w7834cwai9zw9yqik4m3a6v263fx4dp"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/area120"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2))
    (home-page "https://cloud.google.com/go")
    (synopsis "Area120 API")
    (description "Go Client Library for Area120 API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-artifactregistry
  (package
    (name "go-cloud-google-com-go-artifactregistry")
    (version "1.17.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "artifactregistry"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/artifactregistry"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go-iam))
    (home-page "https://cloud.google.com/go")
    (synopsis "Artifact Registry API")
    (description "Go Client Library for Artifact Registry API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-asset
  (package
    (name "go-cloud-google-com-go-asset")
    (version "1.21.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "asset"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1ryq4ay3myk7w2wb7pzfk0pbvz6ymirxq91zm6rql7a1vb15x0n9"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/asset"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-osconfig
                             go-cloud-google-com-go-orgpolicy
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go-iam
                             go-cloud-google-com-go-accesscontextmanager))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud Asset API")
    (description "Go Client Library for Cloud Asset API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-assuredworkloads
  (package
    (name "go-cloud-google-com-go-assuredworkloads")
    (version "1.12.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "assuredworkloads"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/assuredworkloads"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Assured Workloads API")
    (description "Go Client Library for Assured Workloads API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-auth
  (package
    (name "go-cloud-google-com-go-auth")
    (version "0.16.5")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "auth"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0rklvrlnk7q12jdbhgagvaav6a3qvyghxzgf5jccvlcw03cvkpgk"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/auth"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                        go-google-golang-org-grpc
                        go-golang-org-x-time
                        go-golang-org-x-net
                        go-go-opentelemetry-io-contrib-instrumentation-net-http-otelhttp
                        go-go-opentelemetry-io-contrib-instrumentation-google-golang-org-grpc-otelgrpc
                        go-github-com-googleapis-gax-go-v2
                        go-github-com-googleapis-enterprise-certificate-proxy
                        go-github-com-google-s2a-go
                        go-github-com-google-go-cmp
                        go-cloud-google-com-go-compute-metadata))
    (home-page "https://cloud.google.com/go")
    (synopsis "Google Auth Library for Go")
    (description
     "Package auth provides utilities for managing Google Cloud credentials, including
functionality for creating, caching, and refreshing OAuth2 tokens.  It offers
customizable options for different OAuth2 flows, such as 2-legged (2LO) and
3-legged (3LO) OAuth, along with support for PKCE and automatic token
management.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-auth-oauth2adapt
  (package
    (name "go-cloud-google-com-go-auth-oauth2adapt")
    (version "0.2.8")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "auth/oauth2adapt"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "109szg097fn42qpsmrmd29iwsdh2yrjh9krq8mjm02fnm7l18lc4"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/auth/oauth2adapt"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-golang-org-x-oauth2
                             go-github-com-google-go-cmp
                             go-cloud-google-com-go-auth))
    (home-page "https://cloud.google.com/go")
    (synopsis #f)
    (description "Package oauth2adapt helps converts types used in
@@url{/cloud.google.com/go/auth,cloud.google.com/go/auth} and
@@url{/golang.org/x/oauth2,golang.org/x/oauth2}.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-automl
  (package
    (name "go-cloud-google-com-go-automl")
    (version "1.14.7")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "automl"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/automl"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud AutoML API")
    (description "Go Client Library for Cloud @code{AutoML} API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-baremetalsolution
  (package
    (name "go-cloud-google-com-go-baremetalsolution")
    (version "1.3.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "baremetalsolution"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/baremetalsolution"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Bare Metal Solution API")
    (description "Go Client Library for Bare Metal Solution API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-batch
  (package
    (name "go-cloud-google-com-go-batch")
    (version "1.12.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "batch"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/batch"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go-iam))
    (home-page "https://cloud.google.com/go")
    (synopsis "Batch API")
    (description "Go Client Library for Batch API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-beyondcorp
  (package
    (name "go-cloud-google-com-go-beyondcorp")
    (version "1.1.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "beyondcorp"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/beyondcorp"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go-iam))
    (home-page "https://cloud.google.com/go")
    (synopsis "BeyondCorp API")
    (description "Go Client Library for @code{BeyondCorp} API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-bigquery
  (package
    (name "go-cloud-google-com-go-bigquery")
    (version "1.69.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "bigquery"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "021dnqqs86va6gqnaa1p4wmsvphkzs36malbw23r913a26r77iqf"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/bigquery"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-golang-org-x-xerrors
                             go-golang-org-x-sync
                             go-go-opentelemetry-io-otel-sdk
                             go-go-opentelemetry-io-otel
                             go-go-opencensus-io
                             go-github-com-googleapis-gax-go-v2
                             go-github-com-google-uuid
                             go-github-com-google-go-cmp
                             go-github-com-apache-arrow-go-v15
                             go-cloud-google-com-go-storage
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go-iam
                             go-cloud-google-com-go-datacatalog
                             go-cloud-google-com-go))
    (home-page "https://cloud.google.com/go")
    (synopsis "BigQuery")
    (description
     "Package bigquery provides a client for the @code{BigQuery} service.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-bigtable
  (package
    (name "go-cloud-google-com-go-bigtable")
    (version "1.38.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "bigtable"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1cqlilzaj0z7rw0zzhammllwz38l56p612wjqrwlms292iryipc8"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/bigtable"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-rsc-io-binaryregexp
                        go-google-golang-org-protobuf
                        go-google-golang-org-grpc
                        go-google-golang-org-genproto-googleapis-rpc
                        go-google-golang-org-genproto-googleapis-api
                        go-google-golang-org-genproto
                        go-google-golang-org-api
                        go-go-opentelemetry-io-otel-sdk-metric
                        go-go-opentelemetry-io-otel-sdk
                        go-go-opentelemetry-io-otel-metric
                        go-go-opentelemetry-io-otel
                        go-github-com-googleapis-gax-go-v2
                        go-github-com-googleapis-cloud-bigtable-clients-test
                        go-github-com-google-uuid
                        go-github-com-google-go-cmp
                        go-github-com-google-btree
                        go-cloud-google-com-go-monitoring
                        go-cloud-google-com-go-longrunning
                        go-cloud-google-com-go-iam
                        go-cloud-google-com-go))
    (home-page "https://cloud.google.com/go")
    (synopsis #f)
    (description "Package bigtable is an API to Google Cloud Bigtable.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-billing
  (package
    (name "go-cloud-google-com-go-billing")
    (version "1.20.4")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "billing"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/billing"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-iam))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud Billing API")
    (description "Go Client Library for Cloud Billing API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-binaryauthorization
  (package
    (name "go-cloud-google-com-go-binaryauthorization")
    (version "1.9.5")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "binaryauthorization"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/binaryauthorization"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2))
    (home-page "https://cloud.google.com/go")
    (synopsis "Binary Authorization API")
    (description "Go Client Library for Binary Authorization API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-certificatemanager
  (package
    (name "go-cloud-google-com-go-certificatemanager")
    (version "1.9.5")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "certificatemanager"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/certificatemanager"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Certificate Manager API")
    (description "Go Client Library for Certificate Manager API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-channel
  (package
    (name "go-cloud-google-com-go-channel")
    (version "1.20.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "channel"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0l71sgyzrjhjlh58hrnxqk3yillcszbfwq0rr3cid7zbv1zxdwzn"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/channel"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud Channel API")
    (description "Go Client Library for Cloud Channel API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-cloudbuild
  (package
    (name "go-cloud-google-com-go-cloudbuild")
    (version "1.23.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "cloudbuild"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1lkp722w195kkzjy3crr0idlimxsjb1avwb95mibdyd1w3wq8i3r"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/cloudbuild"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go-iam))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud Build API")
    (description "Go Client Library for Cloud Build API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-clouddms
  (package
    (name "go-cloud-google-com-go-clouddms")
    (version "1.8.7")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "clouddms"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/clouddms"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go-iam))
    (home-page "https://cloud.google.com/go")
    (synopsis "Database Migration API")
    (description "Go Client Library for Database Migration API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-cloudtasks
  (package
    (name "go-cloud-google-com-go-cloudtasks")
    (version "1.13.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "cloudtasks"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/cloudtasks"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-iam))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud Tasks API")
    (description "Go Client Library for Cloud Tasks API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-compute
  (package
    (name "go-cloud-google-com-go-compute")
    (version "1.44.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "compute"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1lkp722w195kkzjy3crr0idlimxsjb1avwb95mibdyd1w3wq8i3r"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/compute"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go))
    (home-page "https://cloud.google.com/go")
    (synopsis "Compute API")
    (description "Go Client Library for Compute API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-contactcenterinsights
  (package
    (name "go-cloud-google-com-go-contactcenterinsights")
    (version "1.17.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "contactcenterinsights"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/contactcenterinsights"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Contact Center AI Insights API")
    (description "Go Client Library for Contact Center AI Insights API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-container
  (package
    (name "go-cloud-google-com-go-container")
    (version "1.44.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "container"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0d56iwahbcik9nmgpk31k853z9yalv97fwg0vnmia638anh0yxgg"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/container"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go))
    (home-page "https://cloud.google.com/go")
    (synopsis "Kubernetes Engine API")
    (description
     "Package container contains a deprecated Google Container Engine client.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-containeranalysis
  (package
    (name "go-cloud-google-com-go-containeranalysis")
    (version "0.14.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "containeranalysis"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/containeranalysis"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-iam
                             go-cloud-google-com-go-grafeas
                             go-cloud-google-com-go))
    (home-page "https://cloud.google.com/go")
    (synopsis "Container Analysis API")
    (description "Go Client Library for Container Analysis API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-datacatalog
  (package
    (name "go-cloud-google-com-go-datacatalog")
    (version "1.26.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "datacatalog"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "10xfkc3igsw95fs13k8w0qjig6fsfpd1j9kar43jx74wqlhs02rb"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/datacatalog"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go-iam))
    (home-page "https://cloud.google.com/go")
    (synopsis "Google Cloud Data Catalog API")
    (description "Go Client Library for Google Cloud Data Catalog API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-dataflow
  (package
    (name "go-cloud-google-com-go-dataflow")
    (version "0.11.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "dataflow"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0pgz76i9vliwsx10xc7k303352jm8h9pdfnjqlc5z9qqyqf8fc9w"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/dataflow"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2))
    (home-page "https://cloud.google.com/go")
    (synopsis "Dataflow API")
    (description "Go Client Library for Dataflow API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-dataform
  (package
    (name "go-cloud-google-com-go-dataform")
    (version "0.12.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "dataform"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1s2sncxbrxg0534b020b51wvkcajawp2f6z0pzy7qqfngkh9v5yb"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/dataform"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-iam))
    (home-page "https://cloud.google.com/go")
    (synopsis "Dataform API")
    (description "Go Client Library for Dataform API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-datafusion
  (package
    (name "go-cloud-google-com-go-datafusion")
    (version "1.8.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "datafusion"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/datafusion"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud Data Fusion API")
    (description "Go Client Library for Cloud Data Fusion API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-datalabeling
  (package
    (name "go-cloud-google-com-go-datalabeling")
    (version "0.9.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "datalabeling"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/datalabeling"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Data Labeling API")
    (description "Go Client Library for Data Labeling API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-dataplex
  (package
    (name "go-cloud-google-com-go-dataplex")
    (version "1.26.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "dataplex"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1z4y6friqrqk3k47hg2di1p31j3vzvsp5x37c4shhqygffmnx3rf"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/dataplex"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go-iam))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud Dataplex API")
    (description "Go Client Library for Cloud Dataplex API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-dataproc
  (package
    (name "go-cloud-google-com-go-dataproc")
    (version "2.14.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "dataproc"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1z4y6friqrqk3k47hg2di1p31j3vzvsp5x37c4shhqygffmnx3rf"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/dataproc/v2"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go-iam))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud Dataproc API")
    (description "Go Client Library for Cloud Dataproc API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-dataqna
  (package
    (name "go-cloud-google-com-go-dataqna")
    (version "0.9.7")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "dataqna"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0pgz76i9vliwsx10xc7k303352jm8h9pdfnjqlc5z9qqyqf8fc9w"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/dataqna"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2))
    (home-page "https://cloud.google.com/go")
    (synopsis "Data QnA API")
    (description "Go Client Library for Data @code{QnA} API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-datastore
  (package
    (name "go-cloud-google-com-go-datastore")
    (version "1.20.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "datastore"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0fj48fav12jrg3dzbbal8h5rv3xhgq0kc9vnihnxdj5nvbig9y8f"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/datastore"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-github-com-google-go-cmp
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud Datastore")
    (description
     "Package datastore provides a client for Google Cloud Datastore.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-datastream
  (package
    (name "go-cloud-google-com-go-datastream")
    (version "1.15.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "datastream"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0zdyf08fyzfwj94w3lxbkj7h3i50v2lw4m5brhc7z1k7dw7rwyq0"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/datastream"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go-iam))
    (home-page "https://cloud.google.com/go")
    (synopsis "Datastream API")
    (description "Go Client Library for Datastream API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-deploy
  (package
    (name "go-cloud-google-com-go-deploy")
    (version "1.27.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "deploy"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1ryq4ay3myk7w2wb7pzfk0pbvz6ymirxq91zm6rql7a1vb15x0n9"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/deploy"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go-iam))
    (home-page "https://cloud.google.com/go")
    (synopsis "Google Cloud Deploy API")
    (description "Go Client Library for Google Cloud Deploy API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-dialogflow
  (package
    (name "go-cloud-google-com-go-dialogflow")
    (version "1.69.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "dialogflow"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1z4y6friqrqk3k47hg2di1p31j3vzvsp5x37c4shhqygffmnx3rf"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/dialogflow"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Dialogflow API")
    (description "Go Client Library for Dialogflow API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-dlp
  (package
    (name "go-cloud-google-com-go-dlp")
    (version "1.24.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "dlp"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0n2vkw9iqqmwqn477qjxvwirs19ccrqx6kb80wbva6dhxf4xa5nh"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/dlp"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud Data Loss Prevention (DLP) API")
    (description "Go Client Library for Cloud Data Loss Prevention (DLP) API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-documentai
  (package
    (name "go-cloud-google-com-go-documentai")
    (version "1.38.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "documentai"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1lkp722w195kkzjy3crr0idlimxsjb1avwb95mibdyd1w3wq8i3r"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/documentai"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud Document AI API")
    (description "Go Client Library for Cloud Document AI API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-domains
  (package
    (name "go-cloud-google-com-go-domains")
    (version "0.10.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "domains"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/domains"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud Domains API")
    (description "Go Client Library for Cloud Domains API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-edgecontainer
  (package
    (name "go-cloud-google-com-go-edgecontainer")
    (version "1.4.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "edgecontainer"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/edgecontainer"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Distributed Cloud Edge Container API")
    (description "Go Client Library for Distributed Cloud Edge Container API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-errorreporting
  (package
    (name "go-cloud-google-com-go-errorreporting")
    (version "0.3.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "errorreporting"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "00bdhr81cr37vy0llh0sifhx0ya5izhdwy95y72ykhavvivlksyd"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/errorreporting"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go))
    (home-page "https://cloud.google.com/go")
    (synopsis "Error Reporting API")
    (description
     "Package errorreporting is a Google Cloud Error Reporting library.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-essentialcontacts
  (package
    (name "go-cloud-google-com-go-essentialcontacts")
    (version "1.7.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "essentialcontacts"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/essentialcontacts"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2))
    (home-page "https://cloud.google.com/go")
    (synopsis "Essential Contacts API")
    (description "Go Client Library for Essential Contacts API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-eventarc
  (package
    (name "go-cloud-google-com-go-eventarc")
    (version "1.15.5")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "eventarc"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/eventarc"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go-iam))
    (home-page "https://cloud.google.com/go")
    (synopsis "Eventarc API")
    (description "Go Client Library for Eventarc API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-filestore
  (package
    (name "go-cloud-google-com-go-filestore")
    (version "1.10.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "filestore"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/filestore"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud Filestore API")
    (description "Go Client Library for Cloud Filestore API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-firestore
  (package
    (name "go-cloud-google-com-go-firestore")
    (version "1.18.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "firestore"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1cm1yn7d26cqar9nf1yw9ml3kqdqbhy2rv9m441sqgwbm44b10da"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/firestore"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-golang-org-x-time
                             go-github-com-googleapis-gax-go-v2
                             go-github-com-google-go-cmp
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go))
    (home-page "https://cloud.google.com/go")
    (synopsis #f)
    (description
     "Package firestore provides a client for reading and writing to a Cloud Firestore
database.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-functions
  (package
    (name "go-cloud-google-com-go-functions")
    (version "1.19.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "functions"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/functions"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-github-com-google-go-cmp
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go-iam))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud Functions API")
    (description "Go Client Library for Cloud Functions API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-gkebackup
  (package
    (name "go-cloud-google-com-go-gkebackup")
    (version "1.8.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "gkebackup"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1s2sncxbrxg0534b020b51wvkcajawp2f6z0pzy7qqfngkh9v5yb"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/gkebackup"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go-iam))
    (home-page "https://cloud.google.com/go")
    (synopsis "Backup for GKE API")
    (description "Go Client Library for Backup for GKE API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-gkeconnect
  (package
    (name "go-cloud-google-com-go-gkeconnect")
    (version "0.12.4")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "gkeconnect"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/gkeconnect"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2))
    (home-page "https://cloud.google.com/go")
    (synopsis "GKE Connect APIs")
    (description "Go Client Library for GKE Connect APIs.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-gkehub
  (package
    (name "go-cloud-google-com-go-gkehub")
    (version "0.15.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "gkehub"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/gkehub"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go-iam))
    (home-page "https://cloud.google.com/go")
    (synopsis "GKE Hub")
    (description "Go Client Library for GKE Hub.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-gkemulticloud
  (package
    (name "go-cloud-google-com-go-gkemulticloud")
    (version "1.5.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "gkemulticloud"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/gkemulticloud"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Anthos Multi-Cloud API")
    (description "Go Client Library for Anthos Multi-Cloud API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-grafeas
  (package
    (name "go-cloud-google-com-go-grafeas")
    (version "0.3.16")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "grafeas"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/grafeas"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go))
    (home-page "https://cloud.google.com/go")
    (synopsis "Grafeas API")
    (description "Go Client Library for Grafeas API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-gsuiteaddons
  (package
    (name "go-cloud-google-com-go-gsuiteaddons")
    (version "1.7.7")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "gsuiteaddons"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/gsuiteaddons"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2))
    (home-page "https://cloud.google.com/go")
    (synopsis "Google Workspace Add-ons API")
    (description "Go Client Library for Google Workspace Add-ons API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-iam
  (package
    (name "go-cloud-google-com-go-iam")
    (version "1.5.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "iam"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/iam"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go))
    (home-page "https://cloud.google.com/go")
    (synopsis "IAM API")
    (description
     "Package iam supports the resource-specific operations of Google Cloud IAM
(Identity and Access Management) for the Google Cloud Libraries.  See
@@url{https://cloud.google.com/iam,https://cloud.google.com/iam} for more about
IAM.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-iap
  (package
    (name "go-cloud-google-com-go-iap")
    (version "1.11.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "iap"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "155qvn234bxz21p75zqxznz59g074l0diy0s1nxqkxwwfmn2vbpz"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/iap"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-iam))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud Identity-Aware Proxy API")
    (description "Go Client Library for Cloud Identity-Aware Proxy API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-ids
  (package
    (name "go-cloud-google-com-go-ids")
    (version "1.5.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "ids"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/ids"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud IDS API")
    (description "Go Client Library for Cloud IDS API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-iot
  (package
    (name "go-cloud-google-com-go-iot")
    (version "1.8.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "iot"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/iot"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-iam))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud IoT API")
    (description "Go Client Library for Cloud @code{IoT} API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-kms
  (package
    (name "go-cloud-google-com-go-kms")
    (version "1.22.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "kms"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1s2sncxbrxg0534b020b51wvkcajawp2f6z0pzy7qqfngkh9v5yb"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/kms"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go-iam))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud Key Management Service (KMS) API")
    (description
     "Go Client Library for Cloud Key Management Service (KMS) API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-language
  (package
    (name "go-cloud-google-com-go-language")
    (version "1.14.5")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "language"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/language"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud Natural Language API")
    (description "Go Client Library for Cloud Natural Language API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-lifesciences
  (package
    (name "go-cloud-google-com-go-lifesciences")
    (version "0.10.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "lifesciences"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/lifesciences"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud Life Sciences API")
    (description "Go Client Library for Cloud Life Sciences API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-logging
  (package
    (name "go-cloud-google-com-go-logging")
    (version "1.13.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "logging"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "18v0lcwn97i8amqd054i55xnx9gclcj9gwyrrqdwjrh5g8kmc19c"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/logging"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-golang-org-x-oauth2
                             go-go-opentelemetry-io-otel-trace
                             go-go-opentelemetry-io-otel-sdk
                             go-go-opencensus-io
                             go-github-com-googleapis-gax-go-v2
                             go-github-com-google-go-cmp
                             go-cloud-google-com-go-storage
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go-iam
                             go-cloud-google-com-go-compute-metadata
                             go-cloud-google-com-go))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud Logging")
    (description
     "Package logging contains a Cloud Logging client suitable for writing logs.  For
reading logs, and working with sinks, metrics and monitored resources, see
package cloud.google.com/go/logging/logadmin.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-longrunning
  (package
    (name "go-cloud-google-com-go-longrunning")
    (version "0.6.7")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "longrunning"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/longrunning"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go))
    (home-page "https://cloud.google.com/go")
    (synopsis "longrunning")
    (description
     "Package longrunning supports Long Running Operations for the Google Cloud
Libraries.  See google.golang.org/genproto/googleapis/longrunning for its
service definition.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-managedidentities
  (package
    (name "go-cloud-google-com-go-managedidentities")
    (version "1.7.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "managedidentities"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/managedidentities"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Managed Service for Microsoft Active Directory API")
    (description
     "Go Client Library for Managed Service for Microsoft Active Directory API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-maps
  (package
    (name "go-cloud-google-com-go-maps")
    (version "1.23.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "maps"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1lkp722w195kkzjy3crr0idlimxsjb1avwb95mibdyd1w3wq8i3r"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/maps"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Google Maps Platform APIs")
    (description "Go Client Library for Google Maps Platform APIs.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-mediatranslation
  (package
    (name "go-cloud-google-com-go-mediatranslation")
    (version "0.9.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "mediatranslation"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/mediatranslation"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2))
    (home-page "https://cloud.google.com/go")
    (synopsis "Media Translation API")
    (description "Go Client Library for Media Translation API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-memcache
  (package
    (name "go-cloud-google-com-go-memcache")
    (version "1.11.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "memcache"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/memcache"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud Memorystore for Memcached API")
    (description "Go Client Library for Cloud Memorystore for Memcached API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-metastore
  (package
    (name "go-cloud-google-com-go-metastore")
    (version "1.14.7")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "metastore"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0pgz76i9vliwsx10xc7k303352jm8h9pdfnjqlc5z9qqyqf8fc9w"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/metastore"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go-iam))
    (home-page "https://cloud.google.com/go")
    (synopsis "Dataproc Metastore API")
    (description "Go Client Library for Dataproc Metastore API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-monitoring
  (package
    (name "go-cloud-google-com-go-monitoring")
    (version "1.24.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "monitoring"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/monitoring"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud Monitoring API")
    (description "Go Client Library for Cloud Monitoring API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-networkconnectivity
  (package
    (name "go-cloud-google-com-go-networkconnectivity")
    (version "1.18.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "networkconnectivity"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "07zpgr8203bbgib1yhn86qnxs8j8mcr8yv9889pj6nnkzcm1hbc6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/networkconnectivity"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go-iam))
    (home-page "https://cloud.google.com/go")
    (synopsis "Network Connectivity API")
    (description "Go Client Library for Network Connectivity API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-networkmanagement
  (package
    (name "go-cloud-google-com-go-networkmanagement")
    (version "1.20.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "networkmanagement"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0zdyf08fyzfwj94w3lxbkj7h3i50v2lw4m5brhc7z1k7dw7rwyq0"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/networkmanagement"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go-iam))
    (home-page "https://cloud.google.com/go")
    (synopsis "Network Management API")
    (description "Go Client Library for Network Management API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-networksecurity
  (package
    (name "go-cloud-google-com-go-networksecurity")
    (version "0.10.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "networksecurity"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/networksecurity"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go-iam))
    (home-page "https://cloud.google.com/go")
    (synopsis "Network Security API")
    (description "Go Client Library for Network Security API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-notebooks
  (package
    (name "go-cloud-google-com-go-notebooks")
    (version "1.12.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "notebooks"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/notebooks"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go-iam))
    (home-page "https://cloud.google.com/go")
    (synopsis "Notebooks API")
    (description "Go Client Library for Notebooks API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-optimization
  (package
    (name "go-cloud-google-com-go-optimization")
    (version "1.7.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "optimization"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/optimization"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud Optimization API")
    (description "Go Client Library for Cloud Optimization API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-orchestration
  (package
    (name "go-cloud-google-com-go-orchestration")
    (version "1.11.9")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "orchestration"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0zvp47kv8wyhwhkgqy89h5kzf94rdk3dbsqm0hggl0b5mq6pc1iw"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/orchestration"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud Composer API")
    (description "Go Client Library for Cloud Composer API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-orgpolicy
  (package
    (name "go-cloud-google-com-go-orgpolicy")
    (version "1.15.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "orgpolicy"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0n1bmmsbyfljw4x4p0gfcgpqw17wca6r4dkz98xn41mbhpi6dhkk"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/orgpolicy"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2))
    (home-page "https://cloud.google.com/go")
    (synopsis "Organization Policy API")
    (description "Go Client Library for Organization Policy API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-osconfig
  (package
    (name "go-cloud-google-com-go-osconfig")
    (version "1.15.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "osconfig"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0zdyf08fyzfwj94w3lxbkj7h3i50v2lw4m5brhc7z1k7dw7rwyq0"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/osconfig"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "OS Config API")
    (description "Go Client Library for OS Config API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-oslogin
  (package
    (name "go-cloud-google-com-go-oslogin")
    (version "1.14.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "oslogin"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/oslogin"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud OS Login API")
    (description "Go Client Library for Cloud OS Login API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-phishingprotection
  (package
    (name "go-cloud-google-com-go-phishingprotection")
    (version "0.9.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "phishingprotection"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/phishingprotection"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2))
    (home-page "https://cloud.google.com/go")
    (synopsis "Phishing Protection API")
    (description "Go Client Library for Phishing Protection API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-policytroubleshooter
  (package
    (name "go-cloud-google-com-go-policytroubleshooter")
    (version "1.11.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "policytroubleshooter"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/policytroubleshooter"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-iam))
    (home-page "https://cloud.google.com/go")
    (synopsis "Policy Troubleshooter API")
    (description "Go Client Library for Policy Troubleshooter API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-privatecatalog
  (package
    (name "go-cloud-google-com-go-privatecatalog")
    (version "0.10.7")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "privatecatalog"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/privatecatalog"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud Private Catalog API")
    (description "Go Client Library for Cloud Private Catalog API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-profiler
  (package
    (name "go-cloud-google-com-go-profiler")
    (version "0.4.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "profiler"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1m0h8ys81haf7rl1brxcnf4iv8iird3h2vy17a535hdrsqjlzdvi"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/profiler"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-golang-org-x-oauth2
                             go-github-com-googleapis-gax-go-v2
                             go-github-com-google-pprof
                             go-github-com-golang-mock
                             go-cloud-google-com-go-storage
                             go-cloud-google-com-go-compute-metadata
                             go-cloud-google-com-go))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud Profiler")
    (description
     "Package profiler is a client for the Cloud Profiler service.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-pubsub
  (package
    (name "go-cloud-google-com-go-pubsub")
    (version "2.0.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "pubsub"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "187bkydsbiicxhs5ir2zfbdawkacqmzh3hik80fdj7y7q2nxhwn7"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/pubsub/v2"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-api
                             go-golang-org-x-sync
                             go-go-opentelemetry-io-otel-trace
                             go-go-opentelemetry-io-otel-sdk
                             go-go-opentelemetry-io-otel
                             go-go-opencensus-io
                             go-go-einride-tech-aip
                             go-github-com-googleapis-gax-go-v2
                             go-github-com-google-uuid
                             go-github-com-google-go-cmp
                             go-cloud-google-com-go-pubsub
                             go-cloud-google-com-go-iam
                             go-cloud-google-com-go))
    (home-page "https://cloud.google.com/go")
    (synopsis #f)
    (description
     "Package pubsub provides an easy way to publish and receive Google Cloud Pub/Sub
messages, hiding the details of the underlying server RPCs.  Pub/Sub is a
many-to-many, asynchronous messaging system that decouples senders and
receivers.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-pubsublite
  (package
    (name "go-cloud-google-com-go-pubsublite")
    (version "1.8.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "pubsublite"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0c7ycyzxbk6k4s63r0f8crb8i4jcc3lsk5n2wcnfdk6qkzs15572"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/pubsublite"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-golang-org-x-sync
                             go-golang-org-x-oauth2
                             go-github-com-googleapis-gax-go-v2
                             go-github-com-google-uuid
                             go-github-com-google-go-cmp
                             go-cloud-google-com-go-pubsub
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go))
    (home-page "https://cloud.google.com/go")
    (synopsis "Pub/Sub Lite")
    (description
     "Package pubsublite provides an easy way to publish and receive messages using
the Pub/Sub Lite service.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-recaptchaenterprise
  (package
    (name "go-cloud-google-com-go-recaptchaenterprise")
    (version "2.20.4")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "recaptchaenterprise"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0zvp47kv8wyhwhkgqy89h5kzf94rdk3dbsqm0hggl0b5mq6pc1iw"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/recaptchaenterprise/v2"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2))
    (home-page "https://cloud.google.com/go")
    (synopsis "reCAPTCHA Enterprise API")
    (description "Go Client Library for @code{reCAPTCHA} Enterprise API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-recommendationengine
  (package
    (name "go-cloud-google-com-go-recommendationengine")
    (version "0.9.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "recommendationengine"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/recommendationengine"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Recommendations AI")
    (description "Go Client Library for Recommendations AI.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-recommender
  (package
    (name "go-cloud-google-com-go-recommender")
    (version "1.13.5")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "recommender"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/recommender"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2))
    (home-page "https://cloud.google.com/go")
    (synopsis "Recommender API")
    (description "Go Client Library for Recommender API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-redis
  (package
    (name "go-cloud-google-com-go-redis")
    (version "1.18.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "redis"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/redis"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Google Cloud Memorystore for Redis API")
    (description
     "Go Client Library for Google Cloud Memorystore for Redis API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-resourcemanager
  (package
    (name "go-cloud-google-com-go-resourcemanager")
    (version "1.10.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "resourcemanager"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/resourcemanager"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go-iam))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud Resource Manager API")
    (description "Go Client Library for Cloud Resource Manager API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-resourcesettings
  (package
    (name "go-cloud-google-com-go-resourcesettings")
    (version "1.8.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "resourcesettings"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0w04dgxk0lx5k4s255ladf5w8n2nivvhp5vlyb2va96j5aa8j2q5"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/resourcesettings"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2))
    (home-page "https://cloud.google.com/go")
    (synopsis "Resource Settings API")
    (description "Go Client Library for Resource Settings API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-retail
  (package
    (name "go-cloud-google-com-go-retail")
    (version "1.24.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "retail"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1k8syxzs9y3sgi5l4viv436iiz6bz7g1x3iyi4awz1j7vwdd327z"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/retail"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Retail API")
    (description "Go Client Library for Retail API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-run
  (package
    (name "go-cloud-google-com-go-run")
    (version "1.12.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "run"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0zdyf08fyzfwj94w3lxbkj7h3i50v2lw4m5brhc7z1k7dw7rwyq0"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/run"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go-iam))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud Run Admin API")
    (description "Go Client Library for Cloud Run Admin API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-scheduler
  (package
    (name "go-cloud-google-com-go-scheduler")
    (version "1.11.7")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "scheduler"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/scheduler"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud Scheduler API")
    (description "Go Client Library for Cloud Scheduler API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-secretmanager
  (package
    (name "go-cloud-google-com-go-secretmanager")
    (version "1.15.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "secretmanager"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0l71sgyzrjhjlh58hrnxqk3yillcszbfwq0rr3cid7zbv1zxdwzn"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/secretmanager"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-iam))
    (home-page "https://cloud.google.com/go")
    (synopsis "Secret Manager API")
    (description "Go Client Library for Secret Manager API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-security
  (package
    (name "go-cloud-google-com-go-security")
    (version "1.19.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "security"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1z4y6friqrqk3k47hg2di1p31j3vzvsp5x37c4shhqygffmnx3rf"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/security"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go-iam))
    (home-page "https://cloud.google.com/go")
    (synopsis "Security APIs")
    (description "Go Client Library for Security APIs.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-securitycenter
  (package
    (name "go-cloud-google-com-go-securitycenter")
    (version "1.37.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "securitycenter"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1z4y6friqrqk3k47hg2di1p31j3vzvsp5x37c4shhqygffmnx3rf"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/securitycenter"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go-iam))
    (home-page "https://cloud.google.com/go")
    (synopsis "Security Command Center API")
    (description "Go Client Library for Security Command Center API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-servicedirectory
  (package
    (name "go-cloud-google-com-go-servicedirectory")
    (version "1.12.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "servicedirectory"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/servicedirectory"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-iam))
    (home-page "https://cloud.google.com/go")
    (synopsis "Service Directory API")
    (description "Go Client Library for Service Directory API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-shell
  (package
    (name "go-cloud-google-com-go-shell")
    (version "1.8.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "shell"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/shell"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud Shell API")
    (description "Go Client Library for Cloud Shell API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-spanner
  (package
    (name "go-cloud-google-com-go-spanner")
    (version "1.84.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "spanner"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1i4plyh9gl5045vv28ym38nyzcsznwfd58yxdc43szm38290ykz5"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/spanner"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                        go-google-golang-org-grpc
                        go-google-golang-org-genproto-googleapis-rpc
                        go-google-golang-org-genproto-googleapis-api
                        go-google-golang-org-genproto
                        go-google-golang-org-api
                        go-golang-org-x-sync
                        go-golang-org-x-oauth2
                        go-go-opentelemetry-io-otel-trace
                        go-go-opentelemetry-io-otel-sdk-metric
                        go-go-opentelemetry-io-otel-sdk
                        go-go-opentelemetry-io-otel-metric
                        go-go-opentelemetry-io-otel
                        go-go-opentelemetry-io-contrib-detectors-gcp
                        go-go-opencensus-io
                        go-github-com-googleapis-gax-go-v2
                        go-github-com-google-uuid
                        go-github-com-google-go-cmp
                        go-github-com-googlecloudplatform-grpc-gcp-go-grpcgcp
                        go-cloud-google-com-go-monitoring
                        go-cloud-google-com-go-longrunning
                        go-cloud-google-com-go-iam
                        go-cloud-google-com-go))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud Spanner")
    (description
     "Package spanner provides a client for reading and writing to Cloud Spanner
databases.  See the packages under admin for clients that operate on databases
and instances.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-speech
  (package
    (name "go-cloud-google-com-go-speech")
    (version "1.28.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "speech"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0l71sgyzrjhjlh58hrnxqk3yillcszbfwq0rr3cid7zbv1zxdwzn"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/speech"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud Speech-to-Text API")
    (description "Go Client Library for Cloud Speech-to-Text API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-storage
  (package
    (name "go-cloud-google-com-go-storage")
    (version "1.56.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "storage"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0bg80mfq2vp1rmrfn07jy0r3ka0mbd7frdhr910d9dl6gh0izrn6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/storage"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                        go-google-golang-org-grpc
                        go-google-golang-org-genproto-googleapis-rpc
                        go-google-golang-org-genproto-googleapis-api
                        go-google-golang-org-genproto
                        go-google-golang-org-api
                        go-golang-org-x-sync
                        go-golang-org-x-oauth2
                        go-go-opentelemetry-io-otel-trace
                        go-go-opentelemetry-io-otel-sdk-metric
                        go-go-opentelemetry-io-otel-sdk
                        go-go-opentelemetry-io-otel-exporters-stdout-stdoutmetric
                        go-go-opentelemetry-io-otel
                        go-go-opentelemetry-io-contrib-detectors-gcp
                        go-github-com-googleapis-gax-go-v2
                        go-github-com-google-uuid
                        go-github-com-google-go-cmp
                        go-github-com-googlecloudplatform-opentelemetry-operations-go-exporter-metric
                        go-cloud-google-com-go-longrunning
                        go-cloud-google-com-go-iam
                        go-cloud-google-com-go-compute-metadata
                        go-cloud-google-com-go-auth
                        go-cloud-google-com-go))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud Storage")
    (description
     "Package storage provides an easy way to work with Google Cloud Storage.  Google
Cloud Storage stores data in named objects, which are grouped into buckets.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-storagetransfer
  (package
    (name "go-cloud-google-com-go-storagetransfer")
    (version "1.13.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "storagetransfer"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "155qvn234bxz21p75zqxznz59g074l0diy0s1nxqkxwwfmn2vbpz"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/storagetransfer"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Storage Transfer API")
    (description "Go Client Library for Storage Transfer API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-talent
  (package
    (name "go-cloud-google-com-go-talent")
    (version "1.8.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "talent"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/talent"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud Talent Solution API")
    (description "Go Client Library for Cloud Talent Solution API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-texttospeech
  (package
    (name "go-cloud-google-com-go-texttospeech")
    (version "1.13.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "texttospeech"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0pgz76i9vliwsx10xc7k303352jm8h9pdfnjqlc5z9qqyqf8fc9w"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/texttospeech"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud Text-to-Speech API")
    (description "Go Client Library for Cloud Text-to-Speech API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-tpu
  (package
    (name "go-cloud-google-com-go-tpu")
    (version "1.8.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "tpu"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/tpu"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud TPU API")
    (description "Go Client Library for Cloud TPU API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-trace
  (package
    (name "go-cloud-google-com-go-trace")
    (version "1.11.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "trace"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/trace"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2))
    (home-page "https://cloud.google.com/go")
    (synopsis "Stackdriver Trace API")
    (description "Go Client Library for Stackdriver Trace API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-translate
  (package
    (name "go-cloud-google-com-go-translate")
    (version "1.12.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "translate"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0n2vkw9iqqmwqn477qjxvwirs19ccrqx6kb80wbva6dhxf4xa5nh"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/translate"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-golang-org-x-text
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud Translation API")
    (description
     "Package translate is the v2 client for the Google Translation API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-video
  (package
    (name "go-cloud-google-com-go-video")
    (version "1.25.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "video"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "07zpgr8203bbgib1yhn86qnxs8j8mcr8yv9889pj6nnkzcm1hbc6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/video"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Video APIs")
    (description "Go Client Library for Video APIs.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-videointelligence
  (package
    (name "go-cloud-google-com-go-videointelligence")
    (version "1.12.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "videointelligence"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/videointelligence"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Google Cloud Video Intelligence API")
    (description "Go Client Library for Google Cloud Video Intelligence API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-vision
  (package
    (name "go-cloud-google-com-go-vision")
    (version "2.9.5")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "vision"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/vision/v2"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud Vision API")
    (description "Go Client Library for Cloud Vision API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-vmmigration
  (package
    (name "go-cloud-google-com-go-vmmigration")
    (version "1.8.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "vmmigration"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/vmmigration"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go-iam))
    (home-page "https://cloud.google.com/go")
    (synopsis "VM Migration API")
    (description "Go Client Library for VM Migration API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-vmwareengine
  (package
    (name "go-cloud-google-com-go-vmwareengine")
    (version "1.3.5")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "vmwareengine"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/vmwareengine"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go-iam))
    (home-page "https://cloud.google.com/go")
    (synopsis "VMware Engine API")
    (description "Go Client Library for VMware Engine API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-vpcaccess
  (package
    (name "go-cloud-google-com-go-vpcaccess")
    (version "1.8.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "vpcaccess"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/vpcaccess"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Serverless VPC Access API")
    (description "Go Client Library for Serverless VPC Access API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-webrisk
  (package
    (name "go-cloud-google-com-go-webrisk")
    (version "1.11.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "webrisk"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/webrisk"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Web Risk API")
    (description "Go Client Library for Web Risk API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-websecurityscanner
  (package
    (name "go-cloud-google-com-go-websecurityscanner")
    (version "1.7.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "websecurityscanner"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/websecurityscanner"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2))
    (home-page "https://cloud.google.com/go")
    (synopsis "Web Security Scanner API")
    (description "Go Client Library for Web Security Scanner API.")
    (license license:asl2.0)))

(define-public go-cloud-google-com-go-workflows
  (package
    (name "go-cloud-google-com-go-workflows")
    (version "1.14.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "workflows"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "cloud.google.com/go/workflows"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-longrunning))
    (home-page "https://cloud.google.com/go")
    (synopsis "Workflows API")
    (description "Go Client Library for Workflows API.")
    (license license:asl2.0)))

(define-public go-contrib-go-opencensus-io-exporter-stackdriver
  (package
    (name "go-contrib-go-opencensus-io-exporter-stackdriver")
    (version "0.13.14")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url
              "https://github.com/census-ecosystem/opencensus-go-exporter-stackdriver")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0iap2j4sfzbf25xhc0fd6xgsh24mnwlwhqqdg9znxvs5jrsr3rgf"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "contrib.go.opencensus.io/exporter/stackdriver"))
    (propagated-inputs (list go-honnef-co-go-tools
                        go-google-golang-org-protobuf
                        go-google-golang-org-grpc
                        go-google-golang-org-genproto
                        go-google-golang-org-api
                        go-golang-org-x-tools
                        go-golang-org-x-oauth2
                        go-golang-org-x-net
                        go-golang-org-x-lint
                        go-go-opencensus-io
                        go-github-com-rakyll-embedmd
                        go-github-com-prometheus-prometheus
                        go-github-com-jstemmer-go-junit-report
                        go-github-com-google-go-cmp
                        go-github-com-golang-protobuf
                        go-github-com-census-instrumentation-opencensus-proto
                        go-github-com-aws-aws-sdk-go
                        go-cloud-google-com-go-trace
                        go-cloud-google-com-go-monitoring
                        go-cloud-google-com-go-compute))
    (home-page "https://contrib.go.opencensus.io/exporter/stackdriver")
    (synopsis "OpenCensus Go Stackdriver")
    (description
     "Package stackdriver contains the @code{OpenCensus} exporters for Stackdriver
Monitoring and Stackdriver Tracing.")
    (license license:asl2.0)))

(define-public go-github-com-antithesishq-antithesis-sdk-go
  (package
    (name "go-github-com-antithesishq-antithesis-sdk-go")
    (version "0.4.4")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/antithesishq/antithesis-sdk-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "10x1wpaqdnsk1ng1jal0fx4ln9wi3r20sx1757cvhkc3aiv31ahs"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/antithesishq/antithesis-sdk-go"))
    (propagated-inputs (list go-golang-org-x-mod go-golang-org-x-tools))
    (home-page "https://github.com/antithesishq/antithesis-sdk-go")
    (synopsis "Antithesis Go SDK")
    (description
     "This library provides methods for Go programs to configure the
@@url{https://antithesis.com,Antithesis} platform.  Functionality is grouped
into the packages
@@url{https://antithesis.com/docs/generated/sdk/golang/assert/,(code assert)}
for defining new test properties,
@@url{https://antithesis.com/docs/generated/sdk/golang/random/,(code random)}
for Antithesis input, and
@@url{https://antithesis.com/docs/generated/sdk/golang/lifecycle/,(code
lifecycle)} for controlling the Antithesis simulation.")
    (license license:expat)))

(define-public go-github-com-antlr4-go-antlr
  (package
    (name "go-github-com-antlr4-go-antlr")
    (version "4.13.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/antlr4-go/antlr")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1m5q00fvz28dgvv3ws924p6gamxm6gzqfm12f5ryhljifg22xq3d"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/antlr4-go/antlr/v4"
      #:unpack-path "github.com/antlr4-go/antlr"))
    (propagated-inputs (list go-golang-org-x-exp))
    (home-page "https://github.com/antlr4-go/antlr")
    (synopsis "ANTLR4 Go Runtime Module Repo")
    (description
     "Package antlr implements the Go version of the ANTLR 4 runtime.")
    (license license:bsd-3)))

(define-public go-github-com-apache-arrow-go
  (package
    (name "go-github-com-apache-arrow-go")
    (version "15.0.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/apache/arrow")
             (commit (go-version->git-ref version
                                          #:subdir "go"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1ckv1lk4mm9smp8z545yqz32vs8psqsd9crg038xfz9ifwzq9vcz"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/apache/arrow/go/v15"
      #:unpack-path "github.com/apache/arrow"))
    (propagated-inputs (list go-github-com-tidwall-sjson
                             go-github-com-substrait-io-substrait-go
                             go-github-com-hamba-avro-v2
                             go-github-com-google-uuid
                             go-modernc-org-sqlite
                             go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-gonum-org-v1-gonum
                             go-golang-org-x-xerrors
                             go-golang-org-x-tools
                             go-golang-org-x-sys
                             go-golang-org-x-sync
                             go-golang-org-x-exp
                             go-github-com-zeebo-xxh3
                             go-github-com-stretchr-testify
                             go-github-com-pierrec-lz4-v4
                             go-github-com-minio-c2goasm
                             go-github-com-minio-asm2plan9s
                             go-github-com-klauspost-cpuid-v2
                             go-github-com-klauspost-compress
                             go-github-com-klauspost-asmfmt
                             go-github-com-google-flatbuffers
                             go-github-com-golang-snappy
                             go-github-com-goccy-go-json
                             go-github-com-docopt-docopt-go
                             go-github-com-apache-thrift
                             go-github-com-andybalholm-brotli
                             go-github-com-johncgriffin-overflow))
    (home-page "https://github.com/apache/arrow")
    (synopsis "Apache Arrow for Go")
    (description
     "@@url{https://arrow.apache.org,Apache Arrow} is a cross-language development
platform for in-memory data.  It specifies a standardized language-independent
columnar memory format for flat and hierarchical data, organized for efficient
analytic operations on modern hardware.  It also provides computational
libraries and zero-copy streaming messaging and inter-process communication.")
    (license unknown-license!)))

(define-public go-github-com-apache-arrow-go-arrow
  (package
    (name "go-github-com-apache-arrow-go-arrow")
    (version "0.0.0-20211112161151-bc219186db40")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/apache/arrow")
             (commit (go-version->git-ref version
                                          #:subdir "go/arrow"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "03nh7c0i3y9rkkzw428knalkrlpb8syr459i00mwp072ijn8v4hx"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/apache/arrow/go/arrow"
      #:unpack-path "github.com/apache/arrow"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-gonum-org-v1-gonum
                             go-golang-org-x-xerrors
                             go-golang-org-x-exp
                             go-github-com-stretchr-testify
                             go-github-com-pierrec-lz4-v4
                             go-github-com-klauspost-compress
                             go-github-com-google-flatbuffers
                             go-github-com-golang-protobuf))
    (home-page "https://github.com/apache/arrow")
    (synopsis #f)
    (description "Package arrow provides an implementation of Apache Arrow.")
    (license unknown-license!)))

(define-public go-github-com-apache-beam-sdks
  (package
    (name "go-github-com-apache-beam-sdks")
    (version "2.67.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/apache/beam")
             (commit (go-version->git-ref version
                                          #:subdir "sdks"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1wjgscp5dw3aajaxqln67jxhgdrnnhnw9pgw9fbg641nqz8n5hnw"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/apache/beam/sdks/v2"
      #:unpack-path "github.com/apache/beam"))
    (propagated-inputs (list go-github-com-docker-docker
                        go-golang-org-x-exp
                        go-github-com-golang-cz-devslog
                        go-github-com-fsouza-fake-gcs-server
                        go-github-com-avast-retry-go-v4
                        go-gopkg-in-yaml-v3
                        go-gopkg-in-yaml-v2
                        go-google-golang-org-protobuf
                        go-google-golang-org-grpc
                        go-google-golang-org-genproto
                        go-google-golang-org-api
                        go-golang-org-x-text
                        go-golang-org-x-sys
                        go-golang-org-x-sync
                        go-golang-org-x-oauth2
                        go-golang-org-x-net
                        go-go-mongodb-org-mongo-driver
                        go-github-com-xitongsys-parquet-go-source
                        go-github-com-xitongsys-parquet-go
                        go-github-com-tetratelabs-wazero
                        go-github-com-testcontainers-testcontainers-go
                        go-github-com-spf13-cobra
                        go-github-com-proullon-ramsql
                        go-github-com-nats-io-nats-go
                        go-github-com-nats-io-nats-server-v2
                        go-github-com-linkedin-goavro-v2
                        go-github-com-lib-pq
                        go-github-com-johannesboyne-gofakes3
                        go-github-com-google-uuid
                        go-github-com-google-go-cmp
                        go-github-com-go-sql-driver-mysql
                        go-github-com-dustin-go-humanize
                        go-github-com-docker-go-connections
                        go-github-com-aws-smithy-go
                        go-github-com-aws-aws-sdk-go-v2-service-s3
                        go-github-com-aws-aws-sdk-go-v2-feature-s3-manager
                        go-github-com-aws-aws-sdk-go-v2-credentials
                        go-github-com-aws-aws-sdk-go-v2-config
                        go-github-com-aws-aws-sdk-go-v2
                        go-cloud-google-com-go-storage
                        go-cloud-google-com-go-spanner
                        go-cloud-google-com-go-pubsub
                        go-cloud-google-com-go-profiler
                        go-cloud-google-com-go-datastore
                        go-cloud-google-com-go-bigtable
                        go-cloud-google-com-go-bigquery))
    (home-page "https://github.com/apache/beam")
    (synopsis #f)
    (description #f)
    (license unknown-license!)))

(define-public go-github-com-apache-thrift
  (package
    (name "go-github-com-apache-thrift")
    (version "0.22.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/apache/thrift")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0vkmm7g87lmgsbflgnmrvjrj8lvk87s3mfn93hl13zh07pw0wq40"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/apache/thrift"))
    (home-page "https://github.com/apache/thrift")
    (synopsis "Apache Thrift")
    (description
     "Thrift is a lightweight, language-independent software stack for point-to-point
RPC implementation.  Thrift provides clean abstractions and implementations for
data transport, data serialization, and application level processing.  The code
generation system takes a simple definition language as input and generates code
across programming languages that uses the abstracted stack to build
interoperable RPC clients and servers.")
    (license unknown-license!)))

(define-public go-github-com-armon-go-metrics
  (package
    (name "go-github-com-armon-go-metrics")
    (version "0.5.4")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/hashicorp/go-metrics")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0rw8251w6lkpbm6qhbdi37jbjknmlw1ampqicfyk32mfq3grn0ar"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/armon/go-metrics"))
    (propagated-inputs (list go-github-com-prometheus-common
                             go-github-com-prometheus-client-model
                             go-github-com-prometheus-client-golang ; packaged

                             go-github-com-pascaldekloe-goe
                             go-github-com-hashicorp-go-immutable-radix
                             go-github-com-golang-protobuf
                             go-github-com-circonus-labs-circonus-gometrics
                             go-github-com-armon-go-metrics
                             go-github-com-datadog-datadog-go))
    (home-page "https://github.com/armon/go-metrics")
    (synopsis "go-metrics")
    (description
     "This library provides a @@code{metrics} package which can be used to instrument
code, expose application metrics, and profile runtime performance in a flexible
manner.")
    (license license:expat)))

(define-public go-github-com-aryann-difflib
  (package
    (name "go-github-com-aryann-difflib")
    (version "0.0.0-20210328193216-ff5ff6dc229b")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/aryann/difflib")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0z2m4pg5flwkvwgym4w6cynmklc9v8q5bwa6gag0wv1mx5srr8a1"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/aryann/difflib"))
    (home-page "https://github.com/aryann/difflib")
    (synopsis "difflib")
    (description
     "Package difflib provides functionality for computing the difference between two
sequences of strings.")
    (license license:expat)))

(define-public go-github-com-aws-aws-sdk-go-v2-feature-dynamodb-attributevalue
  (package
    (name "go-github-com-aws-aws-sdk-go-v2-feature-dynamodb-attributevalue")
    (version "1.20.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/aws/aws-sdk-go-v2")
             (commit (go-version->git-ref version
                                          #:subdir
                                          "feature/dynamodb/attributevalue"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1a8s6nz70c3y649bnzpk0as7bcz2wmq7zdsk2kx73b4ds660h67c"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path
      "github.com/aws/aws-sdk-go-v2/feature/dynamodb/attributevalue"
      #:unpack-path "github.com/aws/aws-sdk-go-v2"))
    (propagated-inputs (list go-github-com-aws-smithy-go))
    (home-page "https://github.com/aws/aws-sdk-go-v2")
    (synopsis #f)
    (description
     "Package attributevalue provides marshaling and unmarshaling utilities to convert
between Go types and Amazon @code{DynamoDB} @code{AttributeValues}.")
    (license license:asl2.0)))

(define-public go-github-com-aws-aws-sdk-go-v2-feature-dynamodb-expression
  (package
    (name "go-github-com-aws-aws-sdk-go-v2-feature-dynamodb-expression")
    (version "1.8.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/aws/aws-sdk-go-v2")
             (commit (go-version->git-ref version
                                          #:subdir
                                          "feature/dynamodb/expression"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1a8s6nz70c3y649bnzpk0as7bcz2wmq7zdsk2kx73b4ds660h67c"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/aws/aws-sdk-go-v2/feature/dynamodb/expression"
      #:unpack-path "github.com/aws/aws-sdk-go-v2"))
    (home-page "https://github.com/aws/aws-sdk-go-v2")
    (synopsis #f)
    (description
     "Package expression provides types and functions to create Amazon @code{DynamoDB}
Expression strings, @code{ExpressionAttributeNames} maps, and
@code{ExpressionAttributeValues} maps.")
    (license license:asl2.0)))

(define-public go-github-com-aws-aws-sdk-go-v2-service-dynamodb
  (package
    (name "go-github-com-aws-aws-sdk-go-v2-service-dynamodb")
    (version "1.49.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/aws/aws-sdk-go-v2")
             (commit (go-version->git-ref version
                                          #:subdir "service/dynamodb"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1a8s6nz70c3y649bnzpk0as7bcz2wmq7zdsk2kx73b4ds660h67c"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/aws/aws-sdk-go-v2/service/dynamodb"
      #:unpack-path "github.com/aws/aws-sdk-go-v2"))
    (propagated-inputs (list go-github-com-aws-smithy-go))
    (home-page "https://github.com/aws/aws-sdk-go-v2")
    (synopsis #f)
    (description
     "Package dynamodb provides the API client, operations, and parameter types for
Amazon @code{DynamoDB}.")
    (license license:asl2.0)))

(define-public go-github-com-aws-aws-sdk-go-v2-service-kms
  (package
    (name "go-github-com-aws-aws-sdk-go-v2-service-kms")
    (version "1.44.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/aws/aws-sdk-go-v2")
             (commit (go-version->git-ref version
                                          #:subdir "service/kms"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1a8s6nz70c3y649bnzpk0as7bcz2wmq7zdsk2kx73b4ds660h67c"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/aws/aws-sdk-go-v2/service/kms"
      #:unpack-path "github.com/aws/aws-sdk-go-v2"))
    (propagated-inputs (list go-github-com-aws-smithy-go))
    (home-page "https://github.com/aws/aws-sdk-go-v2")
    (synopsis #f)
    (description
     "Package kms provides the API client, operations, and parameter types for AWS Key
Management Service.")
    (license license:asl2.0)))

(define-public go-github-com-aws-aws-sdk-go-v2-service-sns
  (package
    (name "go-github-com-aws-aws-sdk-go-v2-service-sns")
    (version "1.37.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/aws/aws-sdk-go-v2")
             (commit (go-version->git-ref version
                                          #:subdir "service/sns"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1a8s6nz70c3y649bnzpk0as7bcz2wmq7zdsk2kx73b4ds660h67c"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/aws/aws-sdk-go-v2/service/sns"
      #:unpack-path "github.com/aws/aws-sdk-go-v2"))
    (propagated-inputs (list go-github-com-aws-smithy-go))
    (home-page "https://github.com/aws/aws-sdk-go-v2")
    (synopsis #f)
    (description
     "Package sns provides the API client, operations, and parameter types for Amazon
Simple Notification Service.")
    (license license:asl2.0)))

(define-public go-github-com-aws-aws-sdk-go-v2-service-ssm
  (package
    (name "go-github-com-aws-aws-sdk-go-v2-service-ssm")
    (version "1.63.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/aws/aws-sdk-go-v2")
             (commit (go-version->git-ref version
                                          #:subdir "service/ssm"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1a8s6nz70c3y649bnzpk0as7bcz2wmq7zdsk2kx73b4ds660h67c"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/aws/aws-sdk-go-v2/service/ssm"
      #:unpack-path "github.com/aws/aws-sdk-go-v2"))
    (propagated-inputs (list go-github-com-aws-smithy-go))
    (home-page "https://github.com/aws/aws-sdk-go-v2")
    (synopsis #f)
    (description
     "Package ssm provides the API client, operations, and parameter types for Amazon
Simple Systems Manager (SSM).")
    (license license:asl2.0)))

(define-public go-github-com-azure-azure-amqp-common-go
  (package
    (name "go-github-com-azure-azure-amqp-common-go")
    (version "3.2.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Azure/azure-amqp-common-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1xmsz4x3rlc56bh2z83fpcqhqqayh7pigz4k9qrzp1kqyxkl4lpl"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/Azure/azure-amqp-common-go/v3"
      #:unpack-path "github.com/Azure/azure-amqp-common-go"))
    (propagated-inputs (list go-golang-org-x-crypto
                             go-github-com-stretchr-testify
                             go-github-com-devigned-tab
                             go-github-com-azure-go-autorest-autorest-adal
                             go-github-com-azure-go-autorest-autorest
                             go-github-com-azure-go-amqp))
    (home-page "https://github.com/Azure/azure-amqp-common-go")
    (synopsis "Azure AMQP Common")
    (description
     "This project contains reusable components for AMQP based services like Event Hub
and Service Bus.  You will find abstractions over authentication, claims-based
security, connection string parsing and RPC for AMQP.")
    (license license:expat)))

(define-public go-github-com-azure-azure-sdk-for-go-sdk-azcore
  (package
    (name "go-github-com-azure-azure-sdk-for-go-sdk-azcore")
    (version "1.19.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Azure/azure-sdk-for-go")
             (commit (go-version->git-ref version
                                          #:subdir "sdk/azcore"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "07i17fvxxxg3c7yadd4zr93iwra7yjydxdb8q36w7z1h0fws5af1"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/Azure/azure-sdk-for-go/sdk/azcore"
      #:unpack-path "github.com/Azure/azure-sdk-for-go"))
    (propagated-inputs (list go-golang-org-x-net
                        go-github-com-stretchr-testify
                        go-github-com-azure-azure-sdk-for-go-sdk-internal))
    (home-page "https://github.com/Azure/azure-sdk-for-go")
    (synopsis "Azure Core Client Module for Go")
    (description
     "Package azcore implements an HTTP request/response middleware pipeline used by
Azure SDK clients.")
    (license license:expat)))

(define-public go-github-com-azure-azure-sdk-for-go-sdk-azidentity
  (package
    (name "go-github-com-azure-azure-sdk-for-go-sdk-azidentity")
    (version "1.11.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Azure/azure-sdk-for-go")
             (commit (go-version->git-ref version
                                          #:subdir "sdk/azidentity"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1z4q53gmvpc6kx9a7i2qsw4hc73g0wm2w6x78rrj43awlpwzy93i"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/Azure/azure-sdk-for-go/sdk/azidentity"
      #:unpack-path "github.com/Azure/azure-sdk-for-go"))
    (propagated-inputs (list go-golang-org-x-crypto
                        go-github-com-stretchr-testify
                        go-github-com-google-uuid
                        go-github-com-golang-jwt-jwt-v5 ;packaged

                        go-github-com-azuread-microsoft-authentication-library-for-go
                        go-github-com-azure-azure-sdk-for-go-sdk-internal
                        go-github-com-azure-azure-sdk-for-go-sdk-azidentity-cache
                        go-github-com-azure-azure-sdk-for-go-sdk-azcore))
    (home-page "https://github.com/Azure/azure-sdk-for-go")
    (synopsis "Azure Identity Client Module for Go")
    (description
     "The Azure Identity module provides Microsoft Entra ID
(@@url{https://learn.microsoft.com/entra/fundamentals/new-name,formerly Azure
Active Directory}) token authentication support across the Azure SDK. It
includes a set of @@code{@code{TokenCredential}} implementations, which can be
used with Azure SDK clients supporting token authentication.")
    (license license:expat)))

(define-public go-github-com-azure-azure-sdk-for-go-sdk-azidentity-cache
  (package
    (name "go-github-com-azure-azure-sdk-for-go-sdk-azidentity-cache")
    (version "0.3.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Azure/azure-sdk-for-go")
             (commit (go-version->git-ref version
                                          #:subdir "sdk/azidentity/cache"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0x4bb3bgy4pgz67nwjjxiil4q9cmnjhnl8zh7vcrxirbwprpchja"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/Azure/azure-sdk-for-go/sdk/azidentity/cache"
      #:unpack-path "github.com/Azure/azure-sdk-for-go"))
    (propagated-inputs (list go-golang-org-x-sys
                        go-github-com-stretchr-testify
                        go-github-com-google-uuid
                        go-github-com-azuread-microsoft-authentication-library-for-go
                        go-github-com-azuread-microsoft-authentication-extensions-for-go-cache
                        go-github-com-azure-azure-sdk-for-go-sdk-azidentity
                        go-github-com-azure-azure-sdk-for-go-sdk-azcore))
    (home-page "https://github.com/Azure/azure-sdk-for-go")
    (synopsis "Azure Identity Cache Module for Go")
    (description
     "This module implements a cross-platform persistent token cache for
@@url{https://pkg.go.dev/github.com/Azure/azure-sdk-for-go/sdk/azidentity,azidentity}
credentials.  See that module's
@@url{https://pkg.go.dev/github.com/Azure/azure-sdk-for-go/sdk/azidentity#pkg-examples,examples}
for sample code showing how to configure persistent caching for a credential,
and its @@url{https://aka.ms/azsdk/go/identity/caching,token caching document}
for more information about the implementation.")
    (license license:expat)))

(define-public go-github-com-azure-azure-sdk-for-go-sdk-internal
  (package
    (name "go-github-com-azure-azure-sdk-for-go-sdk-internal")
    (version "1.11.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Azure/azure-sdk-for-go")
             (commit (go-version->git-ref version
                                          #:subdir "sdk/internal"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0q0cbmh4vn2x1bi7bax2q6wpqndcyw7649w8lzl384k3rbn1q8yn"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/Azure/azure-sdk-for-go/sdk/internal"
      #:unpack-path "github.com/Azure/azure-sdk-for-go"))
    (propagated-inputs (list go-golang-org-x-text go-golang-org-x-net
                        go-github-com-stretchr-testify
                        go-github-com-azure-azure-sdk-for-go-sdk-azidentity
                        go-github-com-azure-azure-sdk-for-go-sdk-azcore))
    (home-page "https://github.com/Azure/azure-sdk-for-go")
    (synopsis "Azure.Core Internal Module for Go")
    (description "internal contains content for Azure SDK developers.")
    (license license:expat)))

(define-public go-github-com-azure-azure-sdk-for-go-sdk-messaging-azservicebus
  (package
    (name "go-github-com-azure-azure-sdk-for-go-sdk-messaging-azservicebus")
    (version "1.10.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Azure/azure-sdk-for-go")
             (commit (go-version->git-ref version
                                          #:subdir
                                          "sdk/messaging/azservicebus"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1517zdz2jaqn8kjgm41pr64ms0lvn1kssbzbmrpzmscwhlpdyvn3"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path
      "github.com/Azure/azure-sdk-for-go/sdk/messaging/azservicebus"
      #:unpack-path "github.com/Azure/azure-sdk-for-go"))
    (propagated-inputs (list go-github-com-golang-mock
                        go-github-com-coder-websocket
                        go-github-com-stretchr-testify
                        go-github-com-joho-godotenv
                        go-github-com-azure-go-amqp
                        go-github-com-azure-azure-sdk-for-go-sdk-internal
                        go-github-com-azure-azure-sdk-for-go-sdk-azidentity
                        go-github-com-azure-azure-sdk-for-go-sdk-azcore))
    (home-page "https://github.com/Azure/azure-sdk-for-go")
    (synopsis "Azure Service Bus client module for Go")
    (description
     "Package azservicebus provides clients for sending and receiving messages with
Azure Service Bus.  NOTE: for creating and managing entities, use the `Client`
in the `github.com/Azure/azure-sdk-for-go/sdk/messaging/azservicebus/admin`
package.")
    (license license:expat)))

(define-public go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-compute-armcompute
  (package
    (name
     "go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-compute-armcompute")
    (version "5.7.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Azure/azure-sdk-for-go")
             (commit (go-version->git-ref version
                      #:subdir "sdk/resourcemanager/compute/armcompute"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1dj61g9azlmfmkg649ggd8fz36hvlinvdprhgmj5q3njp4kv4gvv"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path
      "github.com/Azure/azure-sdk-for-go/sdk/resourcemanager/compute/armcompute/v5"
      #:unpack-path "github.com/Azure/azure-sdk-for-go"))
    (propagated-inputs (list go-github-com-stretchr-testify
                        go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-resources-armresources
                        go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-internal-v2
                        go-github-com-azure-azure-sdk-for-go-sdk-internal
                        go-github-com-azure-azure-sdk-for-go-sdk-azidentity
                        go-github-com-azure-azure-sdk-for-go-sdk-azcore))
    (home-page "https://github.com/Azure/azure-sdk-for-go")
    (synopsis "Azure Compute Module for Go")
    (description
     "The @@code{armcompute} module provides operations for working with Azure
Compute.")
    (license license:expat)))

(define-public go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-internal
  (package
    (name "go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-internal")
    (version "3.1.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Azure/azure-sdk-for-go")
             (commit (go-version->git-ref version
                                          #:subdir
                                          "sdk/resourcemanager/internal"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1q961bbvzkr1ya7avy5sr3gp8jbzngdlry7i8jmvgry8x6gk3x4z"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path
      "github.com/Azure/azure-sdk-for-go/sdk/resourcemanager/internal/v3"
      #:unpack-path "github.com/Azure/azure-sdk-for-go"))
    (propagated-inputs (list go-github-com-stretchr-testify
                        go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-resources-armresources
                        go-github-com-azure-azure-sdk-for-go-sdk-internal
                        go-github-com-azure-azure-sdk-for-go-sdk-azcore))
    (home-page "https://github.com/Azure/azure-sdk-for-go")
    (synopsis #f)
    (description #f)
    (license license:expat)))

(define-public go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-managementgroups-armmanagementgroups
  (package
    (name
     "go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-managementgroups-armmanagementgroups")
    (version "1.2.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Azure/azure-sdk-for-go")
             (commit (go-version->git-ref version
                      #:subdir
                      "sdk/resourcemanager/managementgroups/armmanagementgroups"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0l6jdkkgc2fhf43qd3d1s1llnv40skmql6zf9vjbyrc73qad44cj"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path
      "github.com/Azure/azure-sdk-for-go/sdk/resourcemanager/managementgroups/armmanagementgroups"
      #:unpack-path "github.com/Azure/azure-sdk-for-go"))
    (propagated-inputs (list go-github-com-stretchr-testify
                        go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-internal-v2
                        go-github-com-azure-azure-sdk-for-go-sdk-internal
                        go-github-com-azure-azure-sdk-for-go-sdk-azidentity
                        go-github-com-azure-azure-sdk-for-go-sdk-azcore))
    (home-page "https://github.com/Azure/azure-sdk-for-go")
    (synopsis "Azure Management Groups Module for Go")
    (description
     "The @@code{armmanagementgroups} module provides operations for working with
Azure Management Groups.")
    (license license:expat)))

(define-public go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-network-armnetwork
  (package
    (name
     "go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-network-armnetwork")
    (version "4.3.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Azure/azure-sdk-for-go")
             (commit (go-version->git-ref version
                      #:subdir "sdk/resourcemanager/network/armnetwork"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "16ffwdw8di79canc1v00gfpg6shn1wqd9fbfxyss16m5d8fsxlyy"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path
      "github.com/Azure/azure-sdk-for-go/sdk/resourcemanager/network/armnetwork/v4"
      #:unpack-path "github.com/Azure/azure-sdk-for-go"))
    (propagated-inputs (list go-github-com-stretchr-testify
                        go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-internal-v2
                        go-github-com-azure-azure-sdk-for-go-sdk-internal
                        go-github-com-azure-azure-sdk-for-go-sdk-azidentity
                        go-github-com-azure-azure-sdk-for-go-sdk-azcore))
    (home-page "https://github.com/Azure/azure-sdk-for-go")
    (synopsis "Azure Network Module for Go")
    (description
     "The @@code{armnetwork} module provides operations for working with Azure
Network.")
    (license license:expat)))

(define-public go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-resources-armresources
  (package
    (name
     "go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-resources-armresources")
    (version "1.2.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Azure/azure-sdk-for-go")
             (commit (go-version->git-ref version
                      #:subdir "sdk/resourcemanager/resources/armresources"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "01r351rl6w0gdpgpllq692yip5c761l8f8098hfnw4bgsk625qc7"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path
      "github.com/Azure/azure-sdk-for-go/sdk/resourcemanager/resources/armresources"
      #:unpack-path "github.com/Azure/azure-sdk-for-go"))
    (propagated-inputs (list go-github-com-stretchr-testify
                        go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-managementgroups-armmanagementgroups
                        go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-internal-v2
                        go-github-com-azure-azure-sdk-for-go-sdk-internal
                        go-github-com-azure-azure-sdk-for-go-sdk-azidentity
                        go-github-com-azure-azure-sdk-for-go-sdk-azcore))
    (home-page "https://github.com/Azure/azure-sdk-for-go")
    (synopsis "Azure Resources Module for Go")
    (description
     "The @@code{armresources} module provides operations for working with Azure
Resources.")
    (license license:expat)))

(define-public go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-storage-armstorage
  (package
    (name
     "go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-storage-armstorage")
    (version "1.8.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Azure/azure-sdk-for-go")
             (commit (go-version->git-ref version
                      #:subdir "sdk/resourcemanager/storage/armstorage"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0h3a8ajk0pn438f6322jvqaxm3qi1q07m94k09v2qbkf8dx5rlb8"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path
      "github.com/Azure/azure-sdk-for-go/sdk/resourcemanager/storage/armstorage"
      #:unpack-path "github.com/Azure/azure-sdk-for-go"))
    (propagated-inputs (list go-github-com-stretchr-testify
                        go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-resources-armresources
                        go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-internal-v3
                        go-github-com-azure-azure-sdk-for-go-sdk-internal
                        go-github-com-azure-azure-sdk-for-go-sdk-azidentity
                        go-github-com-azure-azure-sdk-for-go-sdk-azcore))
    (home-page "https://github.com/Azure/azure-sdk-for-go")
    (synopsis "Azure Storage Module for Go")
    (description
     "The @@code{armstorage} module provides operations for working with Azure
Storage.")
    (license license:expat)))

(define-public go-github-com-azure-azure-sdk-for-go-sdk-security-keyvault-azkeys
  (package
    (name "go-github-com-azure-azure-sdk-for-go-sdk-security-keyvault-azkeys")
    (version "1.4.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Azure/azure-sdk-for-go")
             (commit (go-version->git-ref version
                                          #:subdir
                                          "sdk/security/keyvault/azkeys"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0jxpzd6sg6fp2mim3sr7gg9y0lvlngf23mmij388ywz4zfvpcqhq"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path
      "github.com/Azure/azure-sdk-for-go/sdk/security/keyvault/azkeys"
      #:unpack-path "github.com/Azure/azure-sdk-for-go"))
    (propagated-inputs (list go-github-com-stretchr-testify
                        go-github-com-azure-azure-sdk-for-go-sdk-security-keyvault-internal
                        go-github-com-azure-azure-sdk-for-go-sdk-internal
                        go-github-com-azure-azure-sdk-for-go-sdk-azidentity
                        go-github-com-azure-azure-sdk-for-go-sdk-azcore))
    (home-page "https://github.com/Azure/azure-sdk-for-go")
    (synopsis "Azure Key Vault Keys client module for Go")
    (description
     "@@url{https://github.com/Azure/azure-sdk-for-go/tree/main/sdk/security/keyvault/azkeys/client.go,Source
code} | @@url{https://aka.ms/azsdk/go/keyvault-keys/docs,Package (pkg.go.dev)} |
@@url{https://learn.microsoft.com/azure/key-vault/,Product documentation} |
@@url{https://aka.ms/azsdk/go/keyvault-keys/docs#pkg-examples,Samples}.")
    (license license:expat)))

(define-public go-github-com-azure-azure-sdk-for-go-sdk-security-keyvault-internal
  (package
    (name
     "go-github-com-azure-azure-sdk-for-go-sdk-security-keyvault-internal")
    (version "1.2.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Azure/azure-sdk-for-go")
             (commit (go-version->git-ref version
                                          #:subdir
                                          "sdk/security/keyvault/internal"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "16xb2gyl48xcc1xc58l8c8qhraxsmar7655348ggi4r2jzyc6sik"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path
      "github.com/Azure/azure-sdk-for-go/sdk/security/keyvault/internal"
      #:unpack-path "github.com/Azure/azure-sdk-for-go"))
    (propagated-inputs (list go-github-com-stretchr-testify
                        go-github-com-azure-azure-sdk-for-go-sdk-internal
                        go-github-com-azure-azure-sdk-for-go-sdk-azcore))
    (home-page "https://github.com/Azure/azure-sdk-for-go")
    (synopsis "Key Vault Internal Module for Go")
    (description
     "This module contains shared code for all the Key Vault SDKs, mainly the
challenge authentication policy.")
    (license license:expat)))

(define-public go-github-com-azure-azure-sdk-for-go-sdk-storage-azblob
  (package
    (name "go-github-com-azure-azure-sdk-for-go-sdk-storage-azblob")
    (version "1.6.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Azure/azure-sdk-for-go")
             (commit (go-version->git-ref version
                                          #:subdir "sdk/storage/azblob"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1zw3yc7405z182mhn8zzs8pvcasqgys18ism25l2brkmr11mv5s5"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/Azure/azure-sdk-for-go/sdk/storage/azblob"
      #:unpack-path "github.com/Azure/azure-sdk-for-go"))
    (propagated-inputs (list go-github-com-stretchr-testify
                        go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-storage-armstorage
                        go-github-com-azure-azure-sdk-for-go-sdk-internal
                        go-github-com-azure-azure-sdk-for-go-sdk-azidentity
                        go-github-com-azure-azure-sdk-for-go-sdk-azcore))
    (home-page "https://github.com/Azure/azure-sdk-for-go")
    (synopsis "Azure Blob Storage module for Go")
    (description
     "Azure Blob Storage is Microsoft's object storage solution for the cloud.  Blob
Storage is optimized for storing massive amounts of unstructured data - data
that does not adhere to a particular data model or definition, such as text or
binary data.  For more information, see
@@url{https://learn.microsoft.com/azure/storage/blobs/storage-blobs-introduction,Introduction
to Azure Blob Storage}.")
    (license license:expat)))

(define-public go-github-com-azure-go-amqp
  (package
    (name "go-github-com-azure-go-amqp")
    (version "1.4.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Azure/go-amqp")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1x4magpj2fcywisml4x8vi8bzmmy273wsv4dxb0hnm1r6sminmnc"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/Azure/go-amqp"))
    (propagated-inputs (list go-github-com-stretchr-testify
                             go-github-com-google-go-cmp
                             go-github-com-fortytw2-leaktest))
    (home-page "https://github.com/Azure/go-amqp")
    (synopsis "AMQP 1.0 Client Module for Go")
    (description "Package amqp provides an AMQP 1.0 client implementation.")
    (license license:expat)))

(define-public go-github-com-azure-go-autorest
  (package
    (name "go-github-com-azure-go-autorest")
    (version "14.2.0+incompatible")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Azure/go-autorest")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0z3j6jj2f9r208vgrg4byaczxbygiw97k2cm83qd64bl82vhyjix"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/Azure/go-autorest"))
    (home-page "https://github.com/Azure/go-autorest")
    (synopsis "go-autorest")
    (description
     "Package go-autorest provides an HTTP request client for use with
Autorest-generated API client packages.")
    (license license:asl2.0)))

(define-public go-github-com-azure-go-autorest-autorest
  (package
    (name "go-github-com-azure-go-autorest-autorest")
    (version "0.11.30")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Azure/go-autorest")
             (commit (go-version->git-ref version
                                          #:subdir "autorest"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1cjrchpj51gjfrv0wy658lgw6yg7y1jviy69n308x1jbqb04cmv6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/Azure/go-autorest/autorest"
      #:unpack-path "github.com/Azure/go-autorest"))
    (propagated-inputs (list go-golang-org-x-crypto
                             go-github-com-azure-go-autorest-tracing
                             go-github-com-azure-go-autorest-logger
                             go-github-com-azure-go-autorest-autorest-mocks
                             go-github-com-azure-go-autorest-autorest-adal
                             go-github-com-azure-go-autorest))
    (home-page "https://github.com/Azure/go-autorest")
    (synopsis #f)
    (description
     "Package autorest implements an HTTP request pipeline suitable for use across
multiple go-routines and provides the shared routines relied on by
@code{AutoRest} (see
@@url{https://github.com/Azure/autorest/,https://github.com/Azure/autorest/})
generated Go code.")
    (license license:asl2.0)))

(define-public go-github-com-azure-go-autorest-autorest-adal
  (package
    (name "go-github-com-azure-go-autorest-autorest-adal")
    (version "0.9.24")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Azure/go-autorest")
             (commit (go-version->git-ref version
                                          #:subdir "autorest/adal"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1sb553g3j8aj4b7j1wvji59qj12yzz60qavrqn3zv67j4cd92ssm"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/Azure/go-autorest/autorest/adal"
      #:unpack-path "github.com/Azure/go-autorest"))
    (propagated-inputs (list go-golang-org-x-crypto
                             go-github-com-stretchr-testify
                             go-github-com-golang-jwt-jwt-v4
                             go-github-com-azure-go-autorest-tracing
                             go-github-com-azure-go-autorest-logger
                             go-github-com-azure-go-autorest-autorest-mocks
                             go-github-com-azure-go-autorest-autorest-date
                             go-github-com-azure-go-autorest))
    (home-page "https://github.com/Azure/go-autorest")
    (synopsis
     "NOTE: This module will go out of support by March 31, 2023.  For authenticating with Azure AD, use module")
    (description
     "This is a standalone package for authenticating with Azure Active Directory from
other Go libraries and applications, in particular the .")
    (license license:asl2.0)))

(define-public go-github-com-azure-go-autorest-autorest-date
  (package
    (name "go-github-com-azure-go-autorest-autorest-date")
    (version "0.3.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Azure/go-autorest")
             (commit (go-version->git-ref version
                                          #:subdir "autorest/date"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1cjrchpj51gjfrv0wy658lgw6yg7y1jviy69n308x1jbqb04cmv6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/Azure/go-autorest/autorest/date"
      #:unpack-path "github.com/Azure/go-autorest"))
    (propagated-inputs (list go-github-com-azure-go-autorest))
    (home-page "https://github.com/Azure/go-autorest")
    (synopsis #f)
    (description
     "Package date provides time.Time derivatives that conform to the Swagger.io
(@@url{https://swagger.io/,https://swagger.io/}) defined date formats: Date and
@code{DateTime}.  Both types may, in most cases, be used in lieu of time.Time
types.  And both convert to time.Time through a @code{ToTime} method.")
    (license license:asl2.0)))

(define-public go-github-com-azure-go-autorest-autorest-mocks
  (package
    (name "go-github-com-azure-go-autorest-autorest-mocks")
    (version "0.4.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Azure/go-autorest")
             (commit (go-version->git-ref version
                                          #:subdir "autorest/mocks"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1cjrchpj51gjfrv0wy658lgw6yg7y1jviy69n308x1jbqb04cmv6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/Azure/go-autorest/autorest/mocks"
      #:unpack-path "github.com/Azure/go-autorest"))
    (propagated-inputs (list go-github-com-azure-go-autorest))
    (home-page "https://github.com/Azure/go-autorest")
    (synopsis #f)
    (description "Package mocks provides mocks and helpers used in testing.")
    (license license:asl2.0)))

(define-public go-github-com-azure-go-autorest-autorest-to
  (package
    (name "go-github-com-azure-go-autorest-autorest-to")
    (version "0.4.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Azure/go-autorest")
             (commit (go-version->git-ref version
                                          #:subdir "autorest/to"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1cjrchpj51gjfrv0wy658lgw6yg7y1jviy69n308x1jbqb04cmv6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/Azure/go-autorest/autorest/to"
      #:unpack-path "github.com/Azure/go-autorest"))
    (propagated-inputs (list go-github-com-azure-go-autorest))
    (home-page "https://github.com/Azure/go-autorest")
    (synopsis #f)
    (description
     "Package to provides helpers to ease working with pointer values of marshalled
structures.")
    (license license:asl2.0)))

(define-public go-github-com-azure-go-autorest-logger
  (package
    (name "go-github-com-azure-go-autorest-logger")
    (version "0.2.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Azure/go-autorest")
             (commit (go-version->git-ref version
                                          #:subdir "logger"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1cjrchpj51gjfrv0wy658lgw6yg7y1jviy69n308x1jbqb04cmv6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/Azure/go-autorest/logger"
      #:unpack-path "github.com/Azure/go-autorest"))
    (propagated-inputs (list go-github-com-azure-go-autorest))
    (home-page "https://github.com/Azure/go-autorest")
    (synopsis #f)
    (description #f)
    (license license:asl2.0)))

(define-public go-github-com-azure-go-autorest-tracing
  (package
    (name "go-github-com-azure-go-autorest-tracing")
    (version "0.6.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Azure/go-autorest")
             (commit (go-version->git-ref version
                                          #:subdir "tracing"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1cjrchpj51gjfrv0wy658lgw6yg7y1jviy69n308x1jbqb04cmv6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/Azure/go-autorest/tracing"
      #:unpack-path "github.com/Azure/go-autorest"))
    (propagated-inputs (list go-github-com-azure-go-autorest))
    (home-page "https://github.com/Azure/go-autorest")
    (synopsis #f)
    (description #f)
    (license license:asl2.0)))

(define-public go-github-com-azuread-microsoft-authentication-extensions-for-go-cache
  (package
    (name
     "go-github-com-azuread-microsoft-authentication-extensions-for-go-cache")
    (version "0.1.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url
              "https://github.com/AzureAD/microsoft-authentication-extensions-for-go")
             (commit (go-version->git-ref version
                                          #:subdir "cache"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1jj7bjdns1dsxsk22p0xdph3j9hhysbwcbxwsqpxyyggzni9zijv"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path
      "github.com/AzureAD/microsoft-authentication-extensions-for-go/cache"
      #:unpack-path
      "github.com/AzureAD/microsoft-authentication-extensions-for-go"))
    (propagated-inputs (list go-gopkg-in-check-v1 go-golang-org-x-sys
                        go-github-com-stretchr-testify
                        go-github-com-keybase-go-keychain
                        go-github-com-azuread-microsoft-authentication-library-for-go))
    (home-page
     "https://github.com/AzureAD/microsoft-authentication-extensions-for-go")
    (synopsis "Microsoft Authentication Library (MSAL) Extensions for Go")
    (description
     "This module contains a persistent cache for
@@url{https://github.com/@code{AzureAD/microsoft-authentication-library-for-go,Microsoft}
Authentication Library (MSAL) for Go} public client applications such as CLI
tools.  It isn't recommended for web applications or RPC APIs, in which it can
cause scaling and performance problems.")
    (license license:expat)))

(define-public go-github-com-azuread-microsoft-authentication-library-for-go
  (package
    (name "go-github-com-azuread-microsoft-authentication-library-for-go")
    (version "1.4.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url
              "https://github.com/AzureAD/microsoft-authentication-library-for-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "17sc8d4xajp9ni1m5vbiwajvh0siay3lmssm24hydzmalljrc3pd"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path
      "github.com/AzureAD/microsoft-authentication-library-for-go"))
    (propagated-inputs (list go-github-com-pkg-browser
                             go-github-com-montanaflynn-stats
                             go-github-com-kylelemons-godebug
                             go-github-com-google-uuid
                             go-github-com-golang-jwt-jwt-v5 ;packaged
))
    (home-page
     "https://github.com/AzureAD/microsoft-authentication-library-for-go")
    (synopsis "Microsoft Authentication Library (MSAL) for Go")
    (description
     "The Microsoft Authentication Library (MSAL) for Go is part of the
@@url{https://aka.ms/aaddevv2,Microsoft identity platform for developers}
(formerly named Azure AD) v2.0.  It allows you to sign in users or apps with
Microsoft identities
(@@url{https://azure.microsoft.com/services/active-directory/,Azure AD} and
@@url{https://account.microsoft.com,Microsoft Accounts}) and obtain tokens to
call Microsoft APIs such as @@url{https://graph.microsoft.io/,Microsoft Graph}
or your own APIs registered with the Microsoft identity platform.  It is built
using industry standard OAuth2 and @code{OpenID} Connect protocols.")
    (license license:expat)))

(define-public go-github-com-bboreham-go-loser
  (package
    (name "go-github-com-bboreham-go-loser")
    (version "0.0.0-20230920113527-fcc2c21820a3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/bboreham/go-loser")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0vphqyyda0gbnf9glnfjvmkv7g1za0rqir8jv9lv40fhs3qr8bv3"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/bboreham/go-loser"))
    (propagated-inputs (list go-golang-org-x-exp))
    (home-page "https://github.com/bboreham/go-loser")
    (synopsis "go-loser")
    (description "Loser Tree data structure, for fast k-way merge.")
    (license license:asl2.0)))

(define-public go-github-com-bobg-gcsobj
  (package
    (name "go-github-com-bobg-gcsobj")
    (version "0.3.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/bobg/gcsobj")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0sgm9ps5kszf8jibz42z9v97pf5bb5raizvbjyc9z11qcij88rif"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/bobg/gcsobj"))
    (propagated-inputs (list go-cloud-google-com-go-storage))
    (home-page "https://github.com/bobg/gcsobj")
    (synopsis "Gcsobj - Seekable readers for Google Cloud Storage objects")
    (description
     "Package gcsobj supplies a seekable Reader type for Google Cloud Storage objects.")
    (license license:expat)))

(define-public go-github-com-bufbuild-protocompile
  (package
    (name "go-github-com-bufbuild-protocompile")
    (version "0.14.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/bufbuild/protocompile")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1bcyfkixa7lsgw3nr5kp2lycq2apw7a4jdjmj2fjwrrslm4i9ivw"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/bufbuild/protocompile"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-golang-org-x-sync
                             go-github-com-stretchr-testify
                             go-github-com-google-go-cmp))
    (home-page "https://github.com/bufbuild/protocompile")
    (synopsis "Protocompile")
    (description
     "Package protocompile provides the entry point for a high performance native Go
protobuf compiler. \"Compile\" in this case just means parsing and validating
source and generating fully-linked descriptors in the end.  Unlike the protoc
command-line tool, this package does not try to use the descriptors to perform
code generation.")
    (license license:asl2.0)))

(define-public go-github-com-caddyserver-caddy
  (package
    (name "go-github-com-caddyserver-caddy")
    (version "2.10.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/caddyserver/caddy")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1ygjbvz1ig62r63l6324728nbg6nwbc0vsi5qis5cg2qyils9y1a"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go go-1.25
      #:import-path "github.com/caddyserver/caddy/v2"
      #:unpack-path "github.com/caddyserver/caddy"))
    (propagated-inputs (list go-golang-org-x-sys
                        go-go-step-sm-crypto
                        go-go-opentelemetry-io-otel-trace
                        go-github-com-prometheus-client-model
                        go-github-com-pires-go-proxyproto
                        go-github-com-libdns-libdns
                        go-github-com-cespare-xxhash-v2
                        go-gopkg-in-yaml-v3
                        go-gopkg-in-natefinch-lumberjack-v2
                        go-golang-org-x-time
                        go-golang-org-x-term
                        go-golang-org-x-sync
                        go-golang-org-x-net
                        go-golang-org-x-crypto-x509roots-fallback
                        go-golang-org-x-crypto
                        go-go-uber-org-zap-exp
                        go-go-uber-org-zap
                        go-go-uber-org-automaxprocs
                        go-go-opentelemetry-io-otel-sdk
                        go-go-opentelemetry-io-otel-exporters-otlp-otlptrace-otlptracegrpc
                        go-go-opentelemetry-io-otel
                        go-go-opentelemetry-io-contrib-propagators-autoprop
                        go-go-opentelemetry-io-contrib-instrumentation-net-http-otelhttp
                        go-github-com-yuin-goldmark-highlighting-v2
                        go-github-com-yuin-goldmark
                        go-github-com-tailscale-tscert
                        go-github-com-stretchr-testify
                        go-github-com-spf13-pflag
                        go-github-com-spf13-cobra
                        go-github-com-smallstep-truststore
                        go-github-com-smallstep-nosql
                        go-github-com-smallstep-certificates
                        go-github-com-quic-go-quic-go
                        go-github-com-prometheus-client-golang ; packaged

                        go-github-com-mholt-acmez-v3
                        go-github-com-klauspost-cpuid-v2
                        go-github-com-klauspost-compress
                        go-github-com-google-uuid
                        go-github-com-google-cel-go ; packaged
                        go-github-com-go-chi-chi-v5
                        go-github-com-dustin-go-humanize
                        go-github-com-cloudflare-circl
                        go-github-com-caddyserver-zerossl
                        go-github-com-caddyserver-certmagic
                        go-github-com-aryann-difflib
                        go-github-com-alecthomas-chroma-v2
                        go-github-com-masterminds-sprig-v3
                        go-github-com-kimmachinegun-automemlimit
                        go-github-com-burntsushi-toml))
    (home-page "https://github.com/caddyserver/caddy")
    (synopsis "a")
    (description
     "Caddy is an extensible server platform that uses TLS by default.")
    (license license:asl2.0)))

(define-public go-github-com-ccoveille-go-safecast
  (package
    (name "go-github-com-ccoveille-go-safecast")
    (version "1.6.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/ccoVeille/go-safecast")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "02z4ams6zqazm2d9qfmc7xh4ck1s80c3lmjqmkla6h7lmmbad54m"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/ccoveille/go-safecast"))
    (home-page "https://github.com/ccoveille/go-safecast")
    (synopsis "🪄 go-safecast: safe numbers conversion")
    (description "Package safecast solves the type conversion issues in Go.")
    (license license:expat)))

(define-public go-github-com-census-instrumentation-opencensus-proto
  (package
    (name "go-github-com-census-instrumentation-opencensus-proto")
    (version "0.4.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/census-instrumentation/opencensus-proto")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0zda7v8fqbc2hamnwajdwr9742nznajxgcw636n570v8k5ahrymw"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/census-instrumentation/opencensus-proto"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-github-com-grpc-ecosystem-grpc-gateway-v2))
    (home-page "https://github.com/census-instrumentation/opencensus-proto")
    (synopsis
     "OpenCensus Proto - Language Independent Interface Types For OpenCensus")
    (description
     "Census provides a framework to define and collect stats against metrics and to
break those stats down across user-defined dimensions.")
    (license license:asl2.0)))

(define-public go-github-com-cevatbarisyilmaz-ara
  (package
    (name "go-github-com-cevatbarisyilmaz-ara")
    (version "0.0.5")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/cevatbarisyilmaz/ara")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0512nlqqv9bnsplphiw7q9s80icl63wgl88b7m6m4vsvn5ghphc8"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/cevatbarisyilmaz/ara"))
    (home-page "https://github.com/cevatbarisyilmaz/ara")
    (synopsis "ara")
    (description "Package ara provides a dialer with customizable resolver.")
    (license license:expat)))

(define-public go-github-com-cncf-xds-go
  (package
    (name "go-github-com-cncf-xds-go")
    (version "0.0.0-20250501225837-2ac532fd4443")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/cncf/xds")
             (commit (go-version->git-ref version
                                          #:subdir "go"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0snccl7rrx2f07131s0n8z3d1p5v2nvcg7v3dhq1a5sl46b1x78b"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/cncf/xds/go"
      #:unpack-path "github.com/cncf/xds"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-github-com-envoyproxy-protoc-gen-validate
                             go-cel-dev-expr ; packaged
                             ))
    (home-page "https://github.com/cncf/xds")
    (synopsis #f)
    (description #f)
    (license license:asl2.0)))

(define-public go-github-com-cockroachdb-cockroach-go
  (package
    (name "go-github-com-cockroachdb-cockroach-go")
    (version "2.4.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/cockroachdb/cockroach-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0pmgkz0sip6b35pka33r7ygp10wn4fzar5vpn1m3kpldci15x2xg"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/cockroachdb/cockroach-go/v2"
      #:unpack-path "github.com/cockroachdb/cockroach-go"))
    (propagated-inputs (list go-gorm-io-gorm
                             go-gorm-io-driver-postgres
                             go-gopkg-in-yaml-v3
                             go-github-com-stretchr-testify
                             go-github-com-lib-pq
                             go-github-com-jmoiron-sqlx
                             go-github-com-jackc-pgx-v5
                             go-github-com-jackc-pgx-v4
                             go-github-com-gofrs-flock))
    (home-page "https://github.com/cockroachdb/cockroach-go")
    (synopsis "CockroachDB Go Helpers")
    (description
     "This project contains helpers for @code{CockroachDB} users writing in Go:.")
    (license license:asl2.0)))

(define-public go-github-com-colinmarc-hdfs
  (package
    (name "go-github-com-colinmarc-hdfs")
    (version "2.4.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/colinmarc/hdfs")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "01ywhbnxgl2k0dy2ngwa3pci8px0z5ffkn7ar5pajhd6l8vg07w6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/colinmarc/hdfs/v2"
      #:unpack-path "github.com/colinmarc/hdfs"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-github-com-stretchr-testify
                             go-github-com-pborman-getopt
                             go-github-com-jcmturner-gokrb5-v8))
    (home-page "https://github.com/colinmarc/hdfs")
    (synopsis "HDFS for Go")
    (description
     "Package hdfs provides a native, idiomatic interface to HDFS. Where possible, it
mimics the functionality and signatures of the standard `os` package.")
    (license license:expat)))

(define-public go-github-com-cpuguy83-dockercfg
  (package
    (name "go-github-com-cpuguy83-dockercfg")
    (version "0.3.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/cpuguy83/dockercfg")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "055gxyq0wvyr9lap6rd49ijyg846mcpd1kwx9w69qj0pszvh2v96"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/cpuguy83/dockercfg"))
    (home-page "https://github.com/cpuguy83/dockercfg")
    (synopsis "github.com/cpuguy83/dockercfg")
    (description
     "Go library to load docker CLI configs, auths, etc.  with minimal deps.  So far
the only deps are on the stdlib.")
    (license license:expat)))

(define-public go-github-com-devigned-tab
  (package
    (name "go-github-com-devigned-tab")
    (version "0.1.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/devigned/tab")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "17r98k3bcyjkq5mz2k9i2sxbzgkq05h5pqg5mn7nyrvsf09x99g5"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/devigned/tab"))
    (home-page "https://github.com/devigned/tab")
    (synopsis "Trace Abstraction (tab)")
    (description
     "@code{OpenTracing} and @code{OpenCensus} abstraction for tracing and logging.")
    (license license:expat)))

(define-public go-github-com-dgraph-io-badger
  (package
    (name "go-github-com-dgraph-io-badger")
    (version "2.2007.4")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/hypermodeinc/badger")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "17jnw7rr59gbjs68z9v4vw251qxiv19xwq0cfzqaflppy3w9yfih"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/dgraph-io/badger/v2"
      #:unpack-path "github.com/dgraph-io/badger"))
    (propagated-inputs (list go-golang-org-x-sys
                             go-golang-org-x-net
                             go-github-com-stretchr-testify
                             go-github-com-spf13-cobra
                             go-github-com-pkg-errors
                             go-github-com-klauspost-compress
                             go-github-com-golang-snappy
                             go-github-com-golang-protobuf
                             go-github-com-dustin-go-humanize
                             go-github-com-dgryski-go-farm
                             go-github-com-dgraph-io-ristretto
                             go-github-com-cespare-xxhash))
    (home-page "https://github.com/dgraph-io/badger")
    (synopsis "BadgerDB")
    (description
     "Package badger implements an embeddable, simple and fast key-value database,
written in pure Go.  It is designed to be highly performant for both reads and
writes simultaneously.  Badger uses Multi-Version Concurrency Control (MVCC),
and supports transactions.  It runs transactions concurrently, with serializable
snapshot isolation guarantees.")
    (license license:asl2.0)))

(define-public go-github-com-dnaeon-go-vcr
  (package
    (name "go-github-com-dnaeon-go-vcr")
    (version "1.2.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/dnaeon/go-vcr")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1aw8s3aljhw9vpzcf8m64r5yv5g0j09dky30shzxvpjwpl5yxhir"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/dnaeon/go-vcr"))
    (propagated-inputs (list go-gopkg-in-yaml-v2 go-github-com-modocache-gover))
    (home-page "https://github.com/dnaeon/go-vcr")
    (synopsis "go-vcr")
    (description
     "@@code{go-vcr} simplifies testing by recording your HTTP interactions and
replaying them in future runs in order to provide fast, deterministic and
accurate testing of your code.")
    (license license:bsd-2)))

(define-public go-github-com-envoyproxy-go-control-plane
  (package
    (name "go-github-com-envoyproxy-go-control-plane")
    (version "0.13.4")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/envoyproxy/go-control-plane")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0adyhxmld7i33v1dla7zpyx0ciq3ik412nxp4yvkfvdzyvihizrf"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/envoyproxy/go-control-plane"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-go-uber-org-goleak
                             go-github-com-stretchr-testify
                             go-github-com-google-go-cmp))
    (home-page "https://github.com/envoyproxy/go-control-plane")
    (synopsis "control-plane")
    (description
     "This repository contains a Go-based implementation of an API server that
implements the discovery service APIs defined in
@@url{https://github.com/envoyproxy/data-plane-api,data-plane-api}.")
    (license license:asl2.0)))

(define-public go-github-com-envoyproxy-go-control-plane-envoy
  (package
    (name "go-github-com-envoyproxy-go-control-plane-envoy")
    (version "1.32.4")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/envoyproxy/go-control-plane")
             (commit (go-version->git-ref version
                                          #:subdir "envoy"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "08zijpn9bf3dm2arp3z8ssm6wd3vbyfc57vg8ayw7rfh8h8kdaw3"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/envoyproxy/go-control-plane/envoy"
      #:unpack-path "github.com/envoyproxy/go-control-plane"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-go-opentelemetry-io-proto-otlp
                             go-github-com-prometheus-client-model
                             go-github-com-planetscale-vtprotobuf
                             go-github-com-envoyproxy-protoc-gen-validate
                             go-github-com-envoyproxy-go-control-plane
                             go-github-com-cncf-xds-go))
    (home-page "https://github.com/envoyproxy/go-control-plane")
    (synopsis #f)
    (description #f)
    (license license:asl2.0)))

(define-public go-github-com-fortytw2-leaktest
  (package
    (name "go-github-com-fortytw2-leaktest")
    (version "1.3.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/fortytw2/leaktest")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0487zghyxqzk6zdbhd2j074pcc2l15l4sfg5clrjqwfbql7519wx"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/fortytw2/leaktest"))
    (home-page "https://github.com/fortytw2/leaktest")
    (synopsis "Leaktest")
    (description
     "Package leaktest provides tools to detect leaked goroutines in tests.  To use
it, call \"defer @code{leaktest.Check(t)()}\" at the beginning of each test that
may use goroutines.  copied out of the cockroachdb source tree with slight
modifications to be more re-useable.")
    (license license:bsd-3)))

(define-public go-github-com-fsouza-fake-gcs-server
  (package
    (name "go-github-com-fsouza-fake-gcs-server")
    (version "1.52.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/fsouza/fake-gcs-server")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0ap39f17z1w011b65vqf7v9p5vpd4y2i9clw338pcas0n84lq9xj"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/fsouza/fake-gcs-server"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto
                             go-github-com-google-renameio-v2
                             go-google-golang-org-api
                             go-golang-org-x-oauth2
                             go-github-com-stretchr-testify
                             go-github-com-pkg-xattr
                             go-github-com-minio-minio-go-v7
                             go-github-com-gorilla-mux
                             go-github-com-gorilla-handlers
                             go-github-com-google-go-cmp
                             go-github-com-fsouza-slognil
                             go-cloud-google-com-go-storage
                             go-cloud-google-com-go-pubsub))
    (home-page "https://github.com/fsouza/fake-gcs-server")
    (synopsis "fake-gcs-server")
    (description
     "fake-gcs-server provides an emulator for Google Cloud Storage API. It can be
used as a library in Go projects and/or as a standalone binary/Docker image.")
    (license license:bsd-2)))

(define-public go-github-com-fsouza-slognil
  (package
    (name "go-github-com-fsouza-slognil")
    (version "0.4.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/fsouza/slognil")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "16qpiqvdyhaaxpdk1zx6q2nwbb22bild6ybzx551hidf82xh5rib"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/fsouza/slognil"))
    (home-page "https://github.com/fsouza/slognil")
    (synopsis "slognil")
    (description
     "Discard handler for slog.  Want do discard all logs? Use this handler, without
bothering with levels (useful for tests):.")
    (license license:isc)))

(define-public go-github-com-fullstorydev-grpcurl
  (package
    (name "go-github-com-fullstorydev-grpcurl")
    (version "1.9.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/fullstorydev/grpcurl")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1y2d9xhx7csfbn5mivhj0gd9m9vdj2wv6h2qskrilkgcml4fa23f"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/fullstorydev/grpcurl"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-github-com-jhump-protoreflect
                             go-github-com-golang-protobuf))
    (home-page "https://github.com/fullstorydev/grpcurl")
    (synopsis "gRPCurl")
    (description
     "Package grpcurl provides the core functionality exposed by the grpcurl command,
for dynamically connecting to a server, using the reflection service to inspect
the server, and invoking RPCs.  The grpcurl command-line tool constructs a
@code{DescriptorSource}, based on the command-line parameters, and supplies an
@code{InvocationEventHandler} to supply request data (which can come from
command-line args or the process's stdin) and to log the events (to the
process's stdout).")
    (license license:expat)))

(define-public go-github-com-glebarez-go-sqlite
  (package
    (name "go-github-com-glebarez-go-sqlite")
    (version "1.22.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/glebarez/go-sqlite")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "11bnglrk8iwjlsgmw0cy4sy1k408qq6hwnsyl0gslwsdi9jvrngi"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/glebarez/go-sqlite"))
    (propagated-inputs (list go-modernc-org-sqlite go-modernc-org-mathutil
                             go-modernc-org-libc go-golang-org-x-sys
                             go-github-com-google-pprof))
    (home-page "https://github.com/glebarez/go-sqlite")
    (synopsis "go-sqlite")
    (description
     "This is a pure-Go SQLite driver for Golang's native
@@url{https://pkg.go.dev/database/sql,database/sql} package.  The driver has
@@url{https://gitlab.com/cznic/sqlite,Go-based implementation of SQLite}
embedded in itself (so, you don't need to install SQLite separately).")
    (license license:bsd-3)))

(define-public go-github-com-go-gorp-gorp
  (package
    (name "go-github-com-go-gorp-gorp")
    (version "2.2.0+incompatible")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/go-gorp/gorp")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1hanl3kzhx3piqqlclwfrzaghjblihh0ili35ma3q1y3lz6f9i5q"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/go-gorp/gorp"))
    (home-page "https://github.com/go-gorp/gorp")
    (synopsis "Go Relational Persistence")
    (description
     "Package gorp provides a simple way to marshal Go structs to and from SQL
databases.  It uses the database/sql package, and should work with any compliant
database/sql driver.")
    (license license:expat)))

(define-public go-github-com-go-ole-go-ole
  (package
    (name "go-github-com-go-ole-go-ole")
    (version "1.3.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/go-ole/go-ole")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1vr62wwjp206sxah2l79l007s7n187fjzkrnwb85ivqmazfjspxl"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/go-ole/go-ole"))
    (propagated-inputs (list go-golang-org-x-sys))
    (home-page "https://github.com/go-ole/go-ole")
    (synopsis "Go OLE")
    (description
     "Go bindings for Windows COM using shared libraries instead of cgo.")
    (license license:expat)))

(define-public go-github-com-go-piv-piv-go
  (package
    (name "go-github-com-go-piv-piv-go")
    (version "2.4.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/go-piv/piv-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1i2mvdqznwgvb927i6kmdf47dnw9pyybhzzqx5j5pgk4nigcx1sw"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/go-piv/piv-go/v2"
      #:unpack-path "github.com/go-piv/piv-go"))
    (home-page "https://github.com/go-piv/piv-go")
    (synopsis #f)
    (description #f)
    (license license:asl2.0)))

(define-public go-github-com-go-redis-redis
  (package
    (name "go-github-com-go-redis-redis")
    (version "6.15.9+incompatible")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/redis/go-redis")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1y13zhv4isf28bq249pz9dp08rb8amyfp2gdbfah09zcmlhjsaki"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/go-redis/redis"))
    (home-page "https://github.com/go-redis/redis")
    (synopsis "Redis client for Golang")
    (description "Package redis implements a Redis client.")
    (license license:bsd-2)))

(define-public go-github-com-go-resty-resty
  (package
    (name "go-github-com-go-resty-resty")
    (version "2.16.5")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/go-resty/resty")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1h2l5mdajmy9f3ghhsqbfhmrjm6mpkz9n4rsv98apr79daz0g0kc"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/go-resty/resty/v2"
      #:unpack-path "github.com/go-resty/resty"))
    (propagated-inputs (list go-golang-org-x-time go-golang-org-x-net))
    (home-page "https://github.com/go-resty/resty")
    (synopsis "News")
    (description
     "Package resty provides Simple HTTP and REST client library for Go.")
    (license license:expat)))

(define-public go-github-com-go-zookeeper-zk
  (package
    (name "go-github-com-go-zookeeper-zk")
    (version "1.0.4")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/go-zookeeper/zk")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1znpz4xl7bpp855sajabmqm98zv7ma0bj9s8icpvjw9s16fqfdg9"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/go-zookeeper/zk"))
    (home-page "https://github.com/go-zookeeper/zk")
    (synopsis "Native Go Zookeeper Client Library")
    (description
     "Package zk is a native Go client library for the @code{ZooKeeper} orchestration
service.")
    (license license:bsd-3)))

(define-public go-github-com-golang-cz-devslog
  (package
    (name "go-github-com-golang-cz-devslog")
    (version "0.0.15")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/golang-cz/devslog")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0pc2nf9wyganzr11mq6r6151yvpjpl3y035mrq2wxd8879rxlyci"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/golang-cz/devslog"))
    (home-page "https://github.com/golang-cz/devslog")
    (synopsis "🧻 devslog - Go")
    (description
     "@@code{devslog} is a zero dependency structured logging handler for Go's
@@url{https://pkg.go.dev/log/slog,(code log/slog)} package with pretty and
colorful output for developers.")
    (license license:expat)))

(define-public go-github-com-golang-sql-civil
  (package
    (name "go-github-com-golang-sql-civil")
    (version "0.0.0-20220223132316-b832511892a9")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/golang-sql/civil")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "152smf33psdad1222jrabpkl7yvkzw8k66hyypn5gj07943gsk10"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/golang-sql/civil"))
    (home-page "https://github.com/golang-sql/civil")
    (synopsis "Civil Date and Time")
    (description
     "Package civil implements types for civil time, a time-zone-independent
representation of time that follows the rules of the proleptic Gregorian
calendar with exactly 24-hour days, 60-minute hours, and 60-second minutes.")
    (license license:asl2.0)))

(define-public go-github-com-golang-sql-sqlexp
  (package
    (name "go-github-com-golang-sql-sqlexp")
    (version "0.1.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/golang-sql/sqlexp")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0g7apf8mfzrzh1dzkhskbiabb8xc6ghbnxnc4bdk9hzgvrv9c4hn"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/golang-sql/sqlexp"))
    (home-page "https://github.com/golang-sql/sqlexp")
    (synopsis "golang-sql exp")
    (description
     "Package sqlexp provides interfaces and functions that may be adopted into the
database/sql package in the future.  All features may change or be removed in
the future.")
    (license license:bsd-3)))

(define-public go-github-com-google-certificate-transparency-go
  (package
    (name "go-github-com-google-certificate-transparency-go")
    (version "1.3.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/google/certificate-transparency-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0c2ngmjjmnhcnfwjy0pqnx1hvxygsdc4lscqvnyqrms0zbc51c0m"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/google/certificate-transparency-go"))
    (propagated-inputs (list go-k8s-io-klog-v2
                             go-gopkg-in-yaml-v3
                             go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-golang-org-x-time
                             go-golang-org-x-crypto
                             go-go-etcd-io-etcd-v3
                             go-go-etcd-io-etcd-etcdctl-v3
                             go-go-etcd-io-etcd-client-v3
                             go-github-com-transparency-dev-merkle
                             go-github-com-tomasen-realip
                             go-github-com-spf13-pflag
                             go-github-com-spf13-cobra
                             go-github-com-sergi-go-diff
                             go-github-com-rs-cors
                             go-github-com-prometheus-client-golang ; packaged

                             go-github-com-mattn-go-sqlite3
                             go-github-com-kylelemons-godebug
                             go-github-com-jackc-pgx-v5
                             go-github-com-hashicorp-golang-lru-v2
                             go-github-com-gorilla-mux
                             go-github-com-google-trillian
                             go-github-com-google-go-cmp
                             go-github-com-golang-mock
                             go-github-com-go-sql-driver-mysql
                             go-github-com-fullstorydev-grpcurl
                             go-github-com-data-dog-go-sqlmock))
    (home-page "https://github.com/google/certificate-transparency-go")
    (synopsis "Certificate Transparency: Go Code")
    (description
     "Package ct holds core types and utilities for Certificate Transparency.")
    (license license:asl2.0)))

(define-public go-github-com-google-gce-tcb-verifier
  (package
    (name "go-github-com-google-gce-tcb-verifier")
    (version "0.3.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/google/gce-tcb-verifier")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "17z8ygzdyms37bdzv8fca17mwzkckzdilnhr9n4hyxgpq0d2q3d2"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/google/gce-tcb-verifier"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-golang-org-x-text
                             go-golang-org-x-exp
                             go-go-uber-org-multierr
                             go-github-com-spf13-cobra
                             go-github-com-pkg-errors
                             go-github-com-google-uuid
                             go-github-com-google-logger
                             go-github-com-google-go-tpm-tools
                             go-github-com-google-go-tdx-guest
                             go-github-com-google-go-sev-guest
                             go-github-com-google-go-configfs-tsm
                             go-github-com-google-go-cmp
                             go-github-com-cyphar-filepath-securejoin
                             go-cloud-google-com-go-kms
                             go-cloud-google-com-go-iam))
    (home-page "https://github.com/google/gce-tcb-verifier")
    (synopsis "gce-tcb-verifier")
    (description
     "This project provides tools for creating and verifying launch endorsements for
binaries included in Google Compute Engine Confidential Virtual Machines at
launch.")
    (license license:asl2.0)))

(define-public go-github-com-google-go-attestation
  (package
    (name "go-github-com-google-go-attestation")
    (version "0.5.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/google/go-attestation")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1kh5fv34h7n4mfrb541742fx264sviymg52ba6h896f6wiq5igan"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/google/go-attestation"))
    (propagated-inputs (list go-golang-org-x-sys go-github-com-google-go-tspi
                             go-github-com-google-go-tpm-tools
                             go-github-com-google-go-tpm
                             go-github-com-google-go-cmp))
    (home-page "https://github.com/google/go-attestation")
    (synopsis "Go-Attestation")
    (description
     "Go-Attestation abstracts remote attestation operations across a variety of
platforms and TPMs, enabling remote validation of machine identity and state.
This project attempts to provide high level primitives for both client and
server logic.")
    (license license:asl2.0)))

(define-public go-github-com-google-go-configfs-tsm
  (package
    (name "go-github-com-google-go-configfs-tsm")
    (version "0.3.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/google/go-configfs-tsm")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1c9xvmajrq80lfh1yi0irq5h6a0pqn5difr5vwjy2g0qbn0r2zrc"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/google/go-configfs-tsm"))
    (propagated-inputs (list go-go-uber-org-multierr go-github-com-google-uuid))
    (home-page "https://github.com/google/go-configfs-tsm")
    (synopsis "go-configfs-tsm")
    (description
     "This library wraps the configfs/tsm Linux subsystem for Trusted Security Module
operations.")
    (license license:asl2.0)))

(define-public go-github-com-google-go-eventlog
  (package
    (name "go-github-com-google-go-eventlog")
    (version "0.0.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/google/go-eventlog")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0vmhyqfzqr3si8hnpa51sgs4dvnfj98acmd9rmpkbvf1mb51l99p"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/google/go-eventlog"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-github-com-google-go-tpm
                             go-github-com-google-go-cmp))
    (home-page "https://github.com/google/go-eventlog")
    (synopsis "Go Event Log")
    (description
     "Go Event Log is a library for handling various event logs for use in Measured
Boot protocols.")
    (license license:asl2.0)))

(define-public go-github-com-google-go-licenses
  (package
    (name "go-github-com-google-go-licenses")
    (version "2.0.0-alpha.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/google/go-licenses")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0ckzvn0wyxivzqvmfmf1d3v8yzgs8bpa6kbf4id6sd5d7kxvg8cb"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/google/go-licenses/v2"
      #:unpack-path "github.com/google/go-licenses"))
    (propagated-inputs (list go-k8s-io-klog-v2
                             go-golang-org-x-tools
                             go-golang-org-x-text
                             go-golang-org-x-sync
                             go-golang-org-x-net
                             go-golang-org-x-mod
                             go-go-opencensus-io
                             go-github-com-spf13-cobra
                             go-github-com-otiai10-copy
                             go-github-com-google-licenseclassifier-v2
                             go-github-com-google-go-replayers-httpreplay
                             go-github-com-google-go-cmp))
    (home-page "https://github.com/google/go-licenses")
    (synopsis "Licenses tool")
    (description
     "@@code{go-licenses} analyzes the dependency tree of a Go package/binary.  It can
output a report on the libraries used and under what license they can be used.
It can also collect all of the license documents, copyright notices and source
code into a directory in order to comply with license terms on redistribution.")
    (license license:asl2.0)))

(define-public go-github-com-google-go-pkcs11
  (package
    (name "go-github-com-google-go-pkcs11")
    (version "0.3.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/google/go-pkcs11")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0d93v3c0gsrymwagjfp9nzf70yxvczc6kvrqz10w2a07ag5ym02g"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/google/go-pkcs11"))
    (home-page "https://github.com/google/go-pkcs11")
    (synopsis "Go PKCS #11")
    (description
     "This package provides a Go package for loading PKCS #11 modules.")
    (license license:asl2.0)))

(define-public go-github-com-google-go-replayers-grpcreplay
  (package
    (name "go-github-com-google-go-replayers-grpcreplay")
    (version "1.3.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/google/go-replayers")
             (commit (go-version->git-ref version
                                          #:subdir "grpcreplay"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0rbl3kaa656322fzlgj9g0wrw7433zykncyrfbdhqgba1lq94q9n"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/google/go-replayers/grpcreplay"
      #:unpack-path "github.com/google/go-replayers"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto
                             go-github-com-google-go-cmp))
    (home-page "https://github.com/google/go-replayers")
    (synopsis #f)
    (description
     "Package grpcreplay supports the capture and replay of @code{gRPC} calls.  Its
main goal is to improve testing.  Once you capture the calls of a test that runs
against a real service, you have an \"automatic mock\" that can be replayed
against the same test, yielding a unit test that is fast and flake-free.")
    (license license:asl2.0)))

(define-public go-github-com-google-go-replayers-httpreplay
  (package
    (name "go-github-com-google-go-replayers-httpreplay")
    (version "1.2.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/google/go-replayers")
             (commit (go-version->git-ref version
                                          #:subdir "httpreplay"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1m5584fq74c19nk7vslzr9cxys9vi8imgmfdimjpdqfk4dncjqr3"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/google/go-replayers/httpreplay"
      #:unpack-path "github.com/google/go-replayers"))
    (propagated-inputs (list go-google-golang-org-api go-golang-org-x-oauth2
                             go-github-com-google-martian-v3
                             go-github-com-google-go-cmp
                             go-cloud-google-com-go-storage))
    (home-page "https://github.com/google/go-replayers")
    (synopsis #f)
    (description
     "Package httpreplay provides an API for recording and replaying traffic from
HTTP-based clients.")
    (license license:asl2.0)))

(define-public go-github-com-google-go-sev-guest
  (package
    (name "go-github-com-google-go-sev-guest")
    (version "0.13.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/google/go-sev-guest")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0g27g5m68ihbzmb2ywj5f69qvb96p12ifv35grnmn98qz4jigsdz"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/google/go-sev-guest"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-golang-org-x-sys
                             go-golang-org-x-crypto
                             go-go-uber-org-multierr
                             go-github-com-google-uuid
                             go-github-com-google-logger
                             go-github-com-google-go-configfs-tsm
                             go-github-com-google-go-cmp
                             go-github-com-golang-protobuf))
    (home-page "https://github.com/google/go-sev-guest")
    (synopsis "SEV Guest")
    (description
     "This project offers libraries for a simple wrapper around the
@@code{/dev/sev-guest} device in Linux, as well as a library for attestation
verification of fundamental components of an attestation report.")
    (license license:asl2.0)))

(define-public go-github-com-google-go-tdx-guest
  (package
    (name "go-github-com-google-go-tdx-guest")
    (version "0.3.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/google/go-tdx-guest")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "03618kgaw1kria933prza8a0hvkjf25py7z466rd6xv70alyjjxv"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/google/go-tdx-guest"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-golang-org-x-sys
                             go-golang-org-x-crypto
                             go-go-uber-org-multierr
                             go-github-com-google-logger
                             go-github-com-google-go-sev-guest
                             go-github-com-google-go-configfs-tsm
                             go-github-com-google-go-cmp))
    (home-page "https://github.com/google/go-tdx-guest")
    (synopsis "TDX Guest")
    (description
     "This project offers libraries for a simple wrapper around quote providing tools
such as the @@code{go-configfs-tsm} library, or the @@code{/dev/tdx_guest}
device in Linux, as well as a library for attestation verification of
fundamental components of an attestation quote.")
    (license license:asl2.0)))

(define-public go-github-com-google-go-tpm-tools
  (package
    (name "go-github-com-google-go-tpm-tools")
    (version "0.4.5")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/google/go-tpm-tools")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "17hq2xh44sc8lm41q89vbp72941rhzwqi0icnxmzam4prar8mz6h"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/google/go-tpm-tools"))
    (propagated-inputs (list go-github-com-google-go-eventlog
                             go-google-golang-org-protobuf
                             go-github-com-google-logger
                             go-github-com-google-go-tpm
                             go-github-com-google-go-tdx-guest
                             go-github-com-google-go-sev-guest
                             go-github-com-google-go-configfs-tsm
                             go-github-com-google-go-cmp
                             go-github-com-google-go-attestation
                             go-github-com-google-gce-tcb-verifier))
    (home-page "https://github.com/google/go-tpm-tools")
    (synopsis "Go-TPM tools")
    (description
     "The @@code{go-tpm-tools} module is a
@@url{https://trustedcomputinggroup.org/resource/trusted-platform-module-2-0-a-brief-introduction/,TPM
2.0} support library designed to complement
@@url{https://github.com/google/go-tpm,Go-TPM}.")
    (license unknown-license!)))

(define-public go-github-com-google-go-tspi
  (package
    (name "go-github-com-google-go-tspi")
    (version "0.3.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/google/go-tspi")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0ql299zpkjrh7nffvasspf940b9gdi42acfzkwbkf0bsdciqs07r"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/google/go-tspi"))
    (propagated-inputs (list go-github-com-google-certificate-transparency-go))
    (home-page "https://github.com/google/go-tspi")
    (synopsis
     "go-tspi - Go bindings and support code for libtspi and tpm communication")
    (description
     "This is a library providing a set of bindings for communication between code
written in Go and libtspi, the library responsible for providing a TPM control
interface.  It consists of the following components:.")
    (license license:asl2.0)))

(define-public go-github-com-google-licenseclassifier
  (package
    (name "go-github-com-google-licenseclassifier")
    (version "2.0.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/google/licenseclassifier")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1sn2r0hd1j2pid96wy4jrxzzqx4wrsrvn9nlschksm5lqmgj3vwg"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/google/licenseclassifier/v2"
      #:unpack-path "github.com/google/licenseclassifier"))
    (propagated-inputs (list go-github-com-sergi-go-diff
                             go-github-com-google-go-cmp
                             go-github-com-davecgh-go-spew))
    (home-page "https://github.com/google/licenseclassifier")
    (synopsis "License Classifier v2")
    (description
     "Package classifier provides the implementation of the v2 license classifier.")
    (license license:asl2.0)))

(define-public go-github-com-google-logger
  (package
    (name "go-github-com-google-logger")
    (version "1.1.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/google/logger")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1x2dmpvykfnbr6bbs0zhzp8c2338n4alx76v5nhwccsw40p04qgp"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/google/logger"))
    (propagated-inputs (list go-golang-org-x-sys))
    (home-page "https://github.com/google/logger")
    (synopsis "logger")
    (description
     "Package logger offers simple cross platform logging for Windows and Linux.
Available logging endpoints are event log (Windows), syslog (Linux), and an
io.Writer.")
    (license license:asl2.0)))

(define-public go-github-com-google-martian
  (package
    (name "go-github-com-google-martian")
    (version "3.3.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/google/martian")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0js95rw72mklxx8dilqdc86a50yhvykyczck4ci3xx6090p3fj2q"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/google/martian/v3"
      #:unpack-path "github.com/google/martian"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc go-golang-org-x-net
                             go-github-com-golang-snappy))
    (home-page "https://github.com/google/martian")
    (synopsis "Martian Proxy")
    (description
     "Package martian provides an HTTP/1.1 proxy with an API for configurable request
and response modifiers.")
    (license license:asl2.0)))

(define-public go-github-com-google-s2a-go
  (package
    (name "go-github-com-google-s2a-go")
    (version "0.1.9")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/google/s2a-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "19d2n9w3lm08iiggj9nm4wh64czjbkis3kyvzsy6cqmlyjykch0v"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/google/s2a-go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-appengine
                             go-google-golang-org-api
                             go-golang-org-x-sync
                             go-golang-org-x-crypto
                             go-github-com-google-go-cmp
                             go-cloud-google-com-go-translate))
    (home-page "https://github.com/google/s2a-go")
    (synopsis "Secure Session Agent Client Libraries")
    (description
     "Package s2a provides the S2A transport credentials used by a @code{gRPC}
application.")
    (license license:asl2.0)))

(define-public go-github-com-google-trillian
  (package
    (name "go-github-com-google-trillian")
    (version "1.7.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/google/trillian")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "05cphh5jv9g3j46cqxxw8h7amfmlxp85n9gljv9nr90cngmqcm0c"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/google/trillian"))
    (propagated-inputs (list go-k8s-io-utils
                             go-k8s-io-klog-v2
                             go-k8s-io-client-go
                             go-k8s-io-apimachinery
                             go-k8s-io-api
                             go-gopkg-in-yaml-v2
                             go-google-golang-org-protobuf
                             go-google-golang-org-grpc-cmd-protoc-gen-go-grpc
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-golang-org-x-tools
                             go-golang-org-x-sys
                             go-golang-org-x-sync
                             go-golang-org-x-crypto
                             go-go-opencensus-io
                             go-go-etcd-io-etcd-v3
                             go-go-etcd-io-etcd-server-v3
                             go-go-etcd-io-etcd-etcdctl-v3
                             go-go-etcd-io-etcd-client-v3
                             go-github-com-transparency-dev-merkle
                             go-github-com-pseudomuto-protoc-gen-doc
                             go-github-com-prometheus-client-model
                             go-github-com-prometheus-client-golang ; packaged

                             go-github-com-lib-pq
                             go-github-com-letsencrypt-pkcs11key-v4
                             go-github-com-jackc-pgx-v5
                             go-github-com-jackc-pgerrcode
                             go-github-com-grpc-ecosystem-go-grpc-middleware
                             go-github-com-google-go-licenses-v2
                             go-github-com-google-go-cmp
                             go-github-com-google-btree
                             go-github-com-golang-mock
                             go-github-com-go-sql-driver-mysql
                             go-github-com-go-redis-redis
                             go-github-com-fullstorydev-grpcurl
                             go-github-com-cockroachdb-cockroach-go-v2
                             go-github-com-apache-beam-sdks-v2
                             go-contrib-go-opencensus-io-exporter-stackdriver
                             go-cloud-google-com-go-spanner
                             go-bitbucket-org-creachadair-shell))
    (home-page "https://github.com/google/trillian")
    (synopsis "Trillian: General Transparency")
    (description
     "Package trillian contains the generated protobuf code for the Trillian API.")
    (license license:asl2.0)))

(define-public go-github-com-google-wire
  (package
    (name "go-github-com-google-wire")
    (version "0.7.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/google/wire")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "121ykzzzz7xw22xa01c38cfpasy74xfs2cq13ffhajj2lkka59d4"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/google/wire"))
    (propagated-inputs (list go-golang-org-x-tools
                             go-github-com-pmezard-go-difflib
                             go-github-com-google-subcommands
                             go-github-com-google-go-cmp))
    (home-page "https://github.com/google/wire")
    (synopsis "Wire: Automated Initialization in Go")
    (description
     "Package wire contains directives for Wire code generation.  For an overview of
working with Wire, see the user guide at
@@url{https://github.com/google/wire/blob/master/docs/guide.md,https://github.com/google/wire/blob/master/docs/guide.md}.")
    (license license:asl2.0)))

(define-public go-github-com-googleapis-cloud-bigtable-clients-test
  (package
    (name "go-github-com-googleapis-cloud-bigtable-clients-test")
    (version "0.0.4")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/cloud-bigtable-clients-test")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1k3v4f6vk0x7rnnc2aarjadymbp47wg7dwygyiyh4gz642gghp7r"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/googleapis/cloud-bigtable-clients-test"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-stretchr-testify
                             go-github-com-google-go-cmp
                             go-cloud-google-com-go-bigtable))
    (home-page "https://github.com/googleapis/cloud-bigtable-clients-test")
    (synopsis "Test Framework for Cloud Bigtable Client Libraries")
    (description
     "This repository contains the test framework to validate the correctness of Cloud
Bigtable @@url{https://cloud.google.com/bigtable/docs/reference/libraries,client
libraries}.  Specifically, all of the client libraries should exhibit correct
and consistent behaviors when interacting with the server (e.g. retry on
transient error) However, writing test cases in every language would present
maintainability and scalability challenges.")
    (license license:asl2.0)))

(define-public go-github-com-googleapis-enterprise-certificate-proxy
  (package
    (name "go-github-com-googleapis-enterprise-certificate-proxy")
    (version "0.3.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/enterprise-certificate-proxy")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "01y66q708w2vp89gb10iy6vki86hssjwvhia2r0dvwdvbfb9rxi8"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/googleapis/enterprise-certificate-proxy"))
    (propagated-inputs (list go-golang-org-x-sys go-golang-org-x-crypto
                             go-github-com-google-go-pkcs11))
    (home-page "https://github.com/googleapis/enterprise-certificate-proxy")
    (synopsis "Google Proxies for Enterprise Certificates (GA)")
    (description
     "If you use
@@url{https://cloud.google.com/beyondcorp-enterprise/docs/securing-resources-with-certificate-based-access,certificate-based
access} to protect your Google Cloud resources, the end user
@@url{https://en.wikipedia.org/wiki/Client_certificate,device certificate} is
one of the credentials that is verified before access to a resource is granted.
You can configure Google Cloud to use the device certificates in your operating
system key store when verifying access to a resource from the gcloud CLI or
Terraform by using the enterprise certificates feature.")
    (license license:asl2.0)))

(define-public go-github-com-googleapis-gax-go
  (package
    (name "go-github-com-googleapis-gax-go")
    (version "2.15.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/gax-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0mp07716zjb7q9di6sfglscahrg053lsq3j5w68dknxn1fks5j6f"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/googleapis/gax-go/v2"
      #:unpack-path "github.com/googleapis/gax-go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-google-go-cmp))
    (home-page "https://github.com/googleapis/gax-go")
    (synopsis #f)
    (description
     "Package gax contains a set of modules which aid the development of APIs for
clients and servers based on @code{gRPC} and Google API conventions.")
    (license license:bsd-3)))

(define-public go-github-com-googlecloudplatform-cloudsql-proxy
  (package
    (name "go-github-com-googlecloudplatform-cloudsql-proxy")
    (version "1.37.8")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/GoogleCloudPlatform/cloud-sql-proxy")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "08qwv3qnlfdzfz1s10w4d7xg219hj5j1w3vxc21m5bdsyjhp61s2"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/GoogleCloudPlatform/cloudsql-proxy"))
    (propagated-inputs (list go-google-golang-org-api
                             go-golang-org-x-time
                             go-golang-org-x-sys
                             go-golang-org-x-oauth2
                             go-golang-org-x-net
                             go-go-uber-org-zap
                             go-github-com-microsoft-go-mssqldb
                             go-github-com-lib-pq
                             go-github-com-jackc-pgx-v4
                             go-github-com-hanwen-go-fuse-v2
                             go-github-com-go-sql-driver-mysql
                             go-github-com-coreos-go-systemd-v22
                             go-cloud-google-com-go-compute-metadata))
    (home-page "https://github.com/GoogleCloudPlatform/cloudsql-proxy")
    (synopsis "Cloud SQL Auth proxy")
    (description
     "The @@url{https://cloud.google.com/sql/docs/mysql/sql-proxy,Cloud SQL Auth
proxy} is a binary that provides IAM-based authorization and encryption when
connecting to a Cloud SQL instance.")
    (license license:asl2.0)))

(define-public go-github-com-googlecloudplatform-grpc-gcp-go-grpcgcp
  (package
    (name "go-github-com-googlecloudplatform-grpc-gcp-go-grpcgcp")
    (version "1.5.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/GoogleCloudPlatform/grpc-gcp-go")
             (commit (go-version->git-ref version
                                          #:subdir "grpcgcp"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1rhcs9fj78z6fsfbyzra1l0n4bwmn74rg4shqhx91jhg2hkhazd7"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/GoogleCloudPlatform/grpc-gcp-go/grpcgcp"
      #:unpack-path "github.com/GoogleCloudPlatform/grpc-gcp-go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-github-com-google-go-cmp
                             go-github-com-golang-mock))
    (home-page "https://github.com/GoogleCloudPlatform/grpc-gcp-go")
    (synopsis "How to test Spanner integration")
    (description
     "Package grpcgcp provides grpc supports for Google Cloud APIs.  For now it
provides connection management with affinity support.")
    (license license:asl2.0)))

(define-public go-github-com-googlecloudplatform-opentelemetry-operations-go-detectors-gcp
  (package
    (name
     "go-github-com-googlecloudplatform-opentelemetry-operations-go-detectors-gcp")
    (version "1.29.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url
              "https://github.com/GoogleCloudPlatform/opentelemetry-operations-go")
             (commit (go-version->git-ref version
                                          #:subdir "detectors/gcp"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "102cs2grnfxcf6m5zmpapfsq6xlg67yywrkzk9l66wk877mnx0h7"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path
      "github.com/GoogleCloudPlatform/opentelemetry-operations-go/detectors/gcp"
      #:unpack-path
      "github.com/GoogleCloudPlatform/opentelemetry-operations-go"))
    (propagated-inputs (list go-github-com-stretchr-testify
                             go-cloud-google-com-go-compute-metadata))
    (home-page
     "https://github.com/GoogleCloudPlatform/opentelemetry-operations-go")
    (synopsis "GCP Resource detection library")
    (description
     "This is a library intended to be used by Upstream @code{OpenTelemetry} resource
detectors.  It exists within this repository to allow for integration testing of
the detection functions in real GCP environments.")
    (license license:asl2.0)))

(define-public go-github-com-googlecloudplatform-opentelemetry-operations-go-exporter-metric
  (package
    (name
     "go-github-com-googlecloudplatform-opentelemetry-operations-go-exporter-metric")
    (version "0.53.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url
              "https://github.com/GoogleCloudPlatform/opentelemetry-operations-go")
             (commit (go-version->git-ref version
                                          #:subdir "exporter/metric"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "102cs2grnfxcf6m5zmpapfsq6xlg67yywrkzk9l66wk877mnx0h7"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path
      "github.com/GoogleCloudPlatform/opentelemetry-operations-go/exporter/metric"
      #:unpack-path
      "github.com/GoogleCloudPlatform/opentelemetry-operations-go"))
    (propagated-inputs (list go-google-golang-org-genproto-googleapis-api
                             go-go-opentelemetry-io-otel-trace
                             go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-api
                             go-golang-org-x-oauth2
                             go-go-opentelemetry-io-otel-sdk-metric
                             go-go-opentelemetry-io-otel-sdk
                             go-go-opentelemetry-io-otel-metric
                             go-go-opentelemetry-io-otel
                             go-github-com-stretchr-testify
                             go-github-com-googleapis-gax-go-v2
                             go-cloud-google-com-go-monitoring))
    (home-page
     "https://github.com/GoogleCloudPlatform/opentelemetry-operations-go")
    (synopsis "OpenTelemetry Google Cloud Monitoring Exporter")
    (description
     "@code{OpenTelemetry} Google Cloud Monitoring Exporter allows the user to send
collected metrics to Google Cloud.")
    (license license:asl2.0)))

(define-public go-github-com-googlecloudplatform-opentelemetry-operations-go-exporter-trace
  (package
    (name
     "go-github-com-googlecloudplatform-opentelemetry-operations-go-exporter-trace")
    (version "1.29.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url
              "https://github.com/GoogleCloudPlatform/opentelemetry-operations-go")
             (commit (go-version->git-ref version
                                          #:subdir "exporter/trace"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "102cs2grnfxcf6m5zmpapfsq6xlg67yywrkzk9l66wk877mnx0h7"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path
      "github.com/GoogleCloudPlatform/opentelemetry-operations-go/exporter/trace"
      #:unpack-path
      "github.com/GoogleCloudPlatform/opentelemetry-operations-go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-api
                             go-golang-org-x-oauth2
                             go-go-opentelemetry-io-otel-trace
                             go-go-opentelemetry-io-otel-sdk
                             go-go-opentelemetry-io-otel
                             go-github-com-stretchr-testify
                             go-cloud-google-com-go-trace))
    (home-page
     "https://github.com/GoogleCloudPlatform/opentelemetry-operations-go")
    (synopsis "OpenTelemetry Google Cloud Trace Exporter")
    (description
     "@code{OpenTelemetry} Google Cloud Trace Exporter allows the user to send
collected traces and spans to Google Cloud.")
    (license license:asl2.0)))

(define-public go-github-com-googlecloudplatform-opentelemetry-operations-go-propagator
  (package
    (name
     "go-github-com-googlecloudplatform-opentelemetry-operations-go-propagator")
    (version "0.53.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url
              "https://github.com/GoogleCloudPlatform/opentelemetry-operations-go")
             (commit (go-version->git-ref version
                                          #:subdir "propagator"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "102cs2grnfxcf6m5zmpapfsq6xlg67yywrkzk9l66wk877mnx0h7"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path
      "github.com/GoogleCloudPlatform/opentelemetry-operations-go/propagator"
      #:unpack-path
      "github.com/GoogleCloudPlatform/opentelemetry-operations-go"))
    (propagated-inputs (list go-go-opentelemetry-io-otel-trace
                             go-go-opentelemetry-io-otel
                             go-github-com-google-go-cmp))
    (home-page
     "https://github.com/GoogleCloudPlatform/opentelemetry-operations-go")
    (synopsis "OpenTelemetry Google Cloud Trace Propagators")
    (description
     "This package contains Trace Context Propagators for use with that make it
compatible with @@url{http://opentelemetry.io,@code{OpenTelemetry}}.")
    (license license:asl2.0)))

(define-public go-github-com-gophercloud-gophercloud
  (package
    (name "go-github-com-gophercloud-gophercloud")
    (version "2.8.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/gophercloud/gophercloud")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "09sx8svmv8asbxn71a0n48k2vk82r3w5i1k4gf447qixf4nk25sz"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/gophercloud/gophercloud/v2"
      #:unpack-path "github.com/gophercloud/gophercloud"))
    (propagated-inputs (list go-gopkg-in-yaml-v2 go-golang-org-x-crypto))
    (home-page "https://github.com/gophercloud/gophercloud")
    (synopsis "Gophercloud: an OpenStack SDK for Go")
    (description "Gophercloud is a Go SDK for @code{OpenStack}.")
    (license license:asl2.0)))

(define-public go-github-com-grafana-regexp
  (package
    (name "go-github-com-grafana-regexp")
    (version "0.0.0-20240518133315-a468a5bfb3bc")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/grafana/regexp")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0vhncrr5n8f150rg0q01i7yc58b0jpcci2h7zgiwv9wr5k0yaqs2"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/grafana/regexp"))
    (home-page "https://github.com/grafana/regexp")
    (synopsis "Grafana Go regexp package")
    (description "Package regexp implements regular expression search.")
    (license license:bsd-3)))

(define-public go-github-com-grpc-ecosystem-go-grpc-middleware
  (package
    (name "go-github-com-grpc-ecosystem-go-grpc-middleware")
    (version "1.4.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/grpc-ecosystem/go-grpc-middleware")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "04g3yw8ywfjcgg6rli0vij2z6b9dd5vpsh39l33ysnr6zdrb76np"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/grpc-ecosystem/go-grpc-middleware"))
    (propagated-inputs (list go-google-golang-org-grpc
                             go-golang-org-x-oauth2
                             go-golang-org-x-net
                             go-go-uber-org-zap
                             go-github-com-stretchr-testify
                             go-github-com-sirupsen-logrus
                             go-github-com-opentracing-opentracing-go
                             go-github-com-golang-protobuf
                             go-github-com-gogo-protobuf
                             go-github-com-go-kit-log))
    (home-page "https://github.com/grpc-ecosystem/go-grpc-middleware")
    (synopsis "Go gRPC Middleware")
    (description
     "`grpc_middleware` is a collection of @code{gRPC} middleware packages:
interceptors, helpers and tools.")
    (license license:asl2.0)))

(define-public go-github-com-hamba-avro
  (package
    (name "go-github-com-hamba-avro")
    (version "2.29.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/hamba/avro")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0hiv4aydi8x1s4vjasfrrnbj328l2g6g2x5smag1crl1zz57v115"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/hamba/avro/v2"
      #:unpack-path "github.com/hamba/avro"))
    (propagated-inputs (list go-golang-org-x-tools
                             go-github-com-stretchr-testify
                             go-github-com-modern-go-reflect2
                             go-github-com-klauspost-compress
                             go-github-com-json-iterator-go
                             go-github-com-golang-snappy
                             go-github-com-go-viper-mapstructure-v2
                             go-github-com-ettle-strcase))
    (home-page "https://github.com/hamba/avro")
    (synopsis "Overview")
    (description
     "Package avro implements encoding and decoding of Avro as defined by the Avro
specification.")
    (license license:expat)))

(define-public go-github-com-hashicorp-consul-api
  (package
    (name "go-github-com-hashicorp-consul-api")
    (version "1.32.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/hashicorp/consul")
             (commit (go-version->git-ref version
                                          #:subdir "api"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "02qlzqaz8pplgjpvi30cxjhwpfw7bjxv8c2ka6sbhjblv82caqyb"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/hashicorp/consul/api"
      #:unpack-path "github.com/hashicorp/consul"))
    (propagated-inputs (list go-golang-org-x-exp
                             go-github-com-stretchr-testify
                             go-github-com-mitchellh-mapstructure
                             go-github-com-hashicorp-serf
                             go-github-com-hashicorp-go-uuid
                             go-github-com-hashicorp-go-rootcerts
                             go-github-com-hashicorp-go-multierror
                             go-github-com-hashicorp-go-hclog
                             go-github-com-hashicorp-go-cleanhttp
                             go-github-com-google-go-cmp))
    (home-page "https://github.com/hashicorp/consul")
    (synopsis "Consul API Client")
    (description
     "This package provides the @@code{api} package which provides programmatic access
to the full Consul API.")
    (license license:mpl2.0)))

(define-public go-github-com-hashicorp-cronexpr
  (package
    (name "go-github-com-hashicorp-cronexpr")
    (version "1.1.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/hashicorp/cronexpr")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1isyxy5rh6g0v84mzs6aplq3nykh4l4jnfg5s5qp4vv3h7lccyap"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/hashicorp/cronexpr"))
    (home-page "https://github.com/hashicorp/cronexpr")
    (synopsis "Golang Cron expression parser")
    (description "Package cronexpr parses cron time expressions.")
    (license license:asl2.0)))

(define-public go-github-com-hashicorp-go-metrics
  (package
    (name "go-github-com-hashicorp-go-metrics")
    (version "0.5.4")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/hashicorp/go-metrics")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0rw8251w6lkpbm6qhbdi37jbjknmlw1ampqicfyk32mfq3grn0ar"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/hashicorp/go-metrics"))
    (propagated-inputs (list go-github-com-prometheus-common
                             go-github-com-prometheus-client-model
                             go-github-com-prometheus-client-golang ; packaged

                             go-github-com-pascaldekloe-goe
                             go-github-com-hashicorp-go-immutable-radix
                             go-github-com-golang-protobuf
                             go-github-com-circonus-labs-circonus-gometrics
                             go-github-com-armon-go-metrics
                             go-github-com-datadog-datadog-go))
    (home-page "https://github.com/hashicorp/go-metrics")
    (synopsis "go-metrics")
    (description
     "This library provides a @@code{metrics} package which can be used to instrument
code, expose application metrics, and profile runtime performance in a flexible
manner.")
    (license license:expat)))

(define-public go-github-com-hashicorp-go-msgpack
  (package
    (name "go-github-com-hashicorp-go-msgpack")
    (version "2.1.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/hashicorp/go-msgpack")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1a7h7j6bbna93amz59dq2d40m54z8bpc0qljm8zw99487vxak7y7"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/hashicorp/go-msgpack/v2"
      #:unpack-path "github.com/hashicorp/go-msgpack"))
    (propagated-inputs (list go-gopkg-in-vmihailenco-msgpack-v2
                             go-gopkg-in-mgo-v2
                             go-golang-org-x-tools
                             go-github-com-tinylib-msgp
                             go-github-com-pquerna-ffjson
                             go-github-com-mailru-easyjson
                             go-github-com-json-iterator-go
                             go-github-com-davecgh-go-xdr
                             go-github-com-sereal-sereal-go-sereal))
    (home-page "https://github.com/hashicorp/go-msgpack")
    (synopsis "go-msgpack")
    (description "This repository contains the @@code{go-msgpack} library.")
    (license license:expat)))

(define-public go-github-com-hashicorp-go-rootcerts
  (package
    (name "go-github-com-hashicorp-go-rootcerts")
    (version "1.0.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/hashicorp/go-rootcerts")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "06z1bxcnr0rma02b6r52m6y0q7niikqjs090vm1i8xi3scyaw1qa"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/hashicorp/go-rootcerts"))
    (propagated-inputs (list go-github-com-mitchellh-go-homedir))
    (home-page "https://github.com/hashicorp/go-rootcerts")
    (synopsis "rootcerts")
    (description
     "Package rootcerts contains functions to aid in loading CA certificates for TLS
connections.")
    (license license:mpl2.0)))

(define-public go-github-com-hashicorp-go-secure-stdlib-awsutil
  (package
    (name "go-github-com-hashicorp-go-secure-stdlib-awsutil")
    (version "0.3.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/hashicorp/go-secure-stdlib")
             (commit (go-version->git-ref version
                                          #:subdir "awsutil"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "04hpyprwdcz150avjlkg62hdqf6rq0l9a55b4892sr5jv81zxq3a"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/hashicorp/go-secure-stdlib/awsutil"
      #:unpack-path "github.com/hashicorp/go-secure-stdlib"))
    (propagated-inputs (list go-github-com-stretchr-testify
                             go-github-com-pkg-errors
                             go-github-com-hashicorp-go-multierror
                             go-github-com-hashicorp-go-hclog
                             go-github-com-hashicorp-go-cleanhttp
                             go-github-com-hashicorp-errwrap
                             go-github-com-aws-aws-sdk-go))
    (home-page "https://github.com/hashicorp/go-secure-stdlib")
    (synopsis #f)
    (description #f)
    (license license:mpl2.0)))

(define-public go-github-com-hashicorp-go-secure-stdlib-parseutil
  (package
    (name "go-github-com-hashicorp-go-secure-stdlib-parseutil")
    (version "0.2.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/hashicorp/go-secure-stdlib")
             (commit (go-version->git-ref version
                                          #:subdir "parseutil"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "08wp7cx0br7wz0rwz92v0c6jgbv735l04438k74wgqrghsxgl31m"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/hashicorp/go-secure-stdlib/parseutil"
      #:unpack-path "github.com/hashicorp/go-secure-stdlib"))
    (propagated-inputs (list go-github-com-stretchr-testify
                             go-github-com-mitchellh-mapstructure
                             go-github-com-hashicorp-go-sockaddr
                             go-github-com-hashicorp-go-secure-stdlib-strutil))
    (home-page "https://github.com/hashicorp/go-secure-stdlib")
    (synopsis #f)
    (description #f)
    (license license:mpl2.0)))

(define-public go-github-com-hashicorp-go-secure-stdlib-strutil
  (package
    (name "go-github-com-hashicorp-go-secure-stdlib-strutil")
    (version "0.1.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/hashicorp/go-secure-stdlib")
             (commit (go-version->git-ref version
                                          #:subdir "strutil"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "19jgdmw5snwfq4z8ifsqr917aj535x6fjkv7ma08qmibv1rrxs6s"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/hashicorp/go-secure-stdlib/strutil"
      #:unpack-path "github.com/hashicorp/go-secure-stdlib"))
    (propagated-inputs (list go-github-com-ryanuber-go-glob))
    (home-page "https://github.com/hashicorp/go-secure-stdlib")
    (synopsis #f)
    (description #f)
    (license license:mpl2.0)))

(define-public go-github-com-hashicorp-logutils
  (package
    (name "go-github-com-hashicorp-logutils")
    (version "1.0.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/hashicorp/logutils")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "076wf4sh5p3f953ndqk1cc0x7jhmlqrxak9953rz79rcdw77rjvv"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/hashicorp/logutils"))
    (home-page "https://github.com/hashicorp/logutils")
    (synopsis "logutils")
    (description
     "Package logutils augments the standard log package with levels.")
    (license license:mpl2.0)))

(define-public go-github-com-hashicorp-mdns
  (package
    (name "go-github-com-hashicorp-mdns")
    (version "1.0.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/hashicorp/mdns")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pl9b4h46vzkxsxg1sq9g01y4cmxwfcy07a4v3r5c5b125p57fg6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/hashicorp/mdns"))
    (propagated-inputs (list go-golang-org-x-net go-github-com-miekg-dns))
    (home-page "https://github.com/hashicorp/mdns")
    (synopsis "mdns")
    (description
     "Simple @code{mDNS} client/server library in Golang. @code{mDNS} or Multicast DNS
can be used to discover services on the local network without the use of an
authoritative DNS server.  This enables peer-to-peer discovery.  It is important
to note that many networks restrict the use of multicasting, which prevents
@code{mDNS} from functioning.  Notably, multicast cannot be used in any sort of
cloud, or shared infrastructure environment.  However it works well in most
office, home, or private infrastructure environments.")
    (license license:expat)))

(define-public go-github-com-hashicorp-memberlist
  (package
    (name "go-github-com-hashicorp-memberlist")
    (version "0.5.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/hashicorp/memberlist")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "09vb2zny0scsr65rp8ibj51diqiv818cwnfbn2xxyzssi5jcpgjv"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/hashicorp/memberlist"))
    (propagated-inputs (list go-github-com-stretchr-testify
                             go-github-com-sean--seed
                             go-github-com-miekg-dns
                             go-github-com-hashicorp-go-sockaddr
                             go-github-com-hashicorp-go-multierror
                             go-github-com-hashicorp-go-msgpack-v2
                             go-github-com-hashicorp-go-metrics
                             go-github-com-google-btree))
    (home-page "https://github.com/hashicorp/memberlist")
    (synopsis "memberlist")
    (description
     "memberlist is a library that manages cluster membership and member failure
detection using a gossip based protocol.")
    (license license:mpl2.0)))

(define-public go-github-com-hashicorp-nomad-api
  (package
    (name "go-github-com-hashicorp-nomad-api")
    (version "0.0.0-20250822210455-33a72c2d01eb")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/hashicorp/nomad")
             (commit (go-version->git-ref version
                                          #:subdir "api"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1ywwy0008yw4nrcfyic6w0c6in4hk1l3zgkrsa9cpscvim5m1f7c"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/hashicorp/nomad/api"
      #:unpack-path "github.com/hashicorp/nomad"))
    (propagated-inputs (list go-github-com-shoenig-test
                             go-github-com-mitchellh-mapstructure
                             go-github-com-hashicorp-go-rootcerts
                             go-github-com-hashicorp-go-multierror
                             go-github-com-hashicorp-go-cleanhttp
                             go-github-com-hashicorp-cronexpr
                             go-github-com-gorilla-websocket
                             go-github-com-felixge-httpsnoop
                             go-github-com-docker-go-units))
    (home-page "https://github.com/hashicorp/nomad")
    (synopsis #f)
    (description #f)
    (license license:mpl2.0)))

(define-public go-github-com-hashicorp-serf
  (package
    (name "go-github-com-hashicorp-serf")
    (version "0.10.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/hashicorp/serf")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0q9rismcpd5ci5zg6aq5b3y53x4j90fpdsvfc5jjh6hqfnxi0hzj"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/hashicorp/serf"))
    (propagated-inputs (list go-github-com-ryanuber-columnize
                             go-github-com-mitchellh-mapstructure
                             go-github-com-mitchellh-cli
                             go-github-com-hashicorp-memberlist
                             go-github-com-hashicorp-mdns
                             go-github-com-hashicorp-logutils
                             go-github-com-hashicorp-go-syslog
                             go-github-com-hashicorp-go-msgpack-v2
                             go-github-com-hashicorp-go-metrics
                             go-github-com-armon-circbuf))
    (home-page "https://github.com/hashicorp/serf")
    (synopsis "Serf")
    (description
     "Serf is a decentralized solution for service discovery and orchestration that is
lightweight, highly available, and fault tolerant.")
    (license license:mpl2.0)))

(define-public go-github-com-hashicorp-vault-api
  (package
    (name "go-github-com-hashicorp-vault-api")
    (version "1.20.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/hashicorp/vault")
             (commit (go-version->git-ref version
                                          #:subdir "api"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1apck7f4whc8nylrw7k9xdy328lvywplmm5v0q31p9k4ln638szs"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/hashicorp/vault/api"
      #:unpack-path "github.com/hashicorp/vault"))
    (propagated-inputs (list go-golang-org-x-time
                        go-golang-org-x-net
                        go-github-com-stretchr-testify
                        go-github-com-natefinch-atomic ; packaged
                        go-github-com-mitchellh-mapstructure
                        go-github-com-mitchellh-go-homedir
                        go-github-com-hashicorp-hcl
                        go-github-com-hashicorp-go-secure-stdlib-strutil
                        go-github-com-hashicorp-go-secure-stdlib-parseutil
                        go-github-com-hashicorp-go-rootcerts
                        go-github-com-hashicorp-go-retryablehttp
                        go-github-com-hashicorp-go-multierror
                        go-github-com-hashicorp-go-hclog
                        go-github-com-hashicorp-go-cleanhttp
                        go-github-com-hashicorp-errwrap
                        go-github-com-go-test-deep
                        go-github-com-go-jose-go-jose-v4
                        go-github-com-cenkalti-backoff-v4))
    (home-page "https://github.com/hashicorp/vault")
    (synopsis "Vault API")
    (description
     "This provides the @@code{github.com/hashicorp/vault/api} package which contains
code useful for interacting with a Vault server.")
    (license license:mpl2.0)))

(define-public go-github-com-hashicorp-vault-api-auth-approle
  (package
    (name "go-github-com-hashicorp-vault-api-auth-approle")
    (version "0.10.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/hashicorp/vault")
             (commit (go-version->git-ref version
                                          #:subdir "api/auth/approle"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1s9jhd6wwv721s7yi516k6wybysgh4w4h3ajaa5ynrm6p23z045m"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/hashicorp/vault/api/auth/approle"
      #:unpack-path "github.com/hashicorp/vault"))
    (propagated-inputs (list go-github-com-hashicorp-vault-api))
    (home-page "https://github.com/hashicorp/vault")
    (synopsis #f)
    (description #f)
    (license license:mpl2.0)))

(define-public go-github-com-hashicorp-vault-api-auth-aws
  (package
    (name "go-github-com-hashicorp-vault-api-auth-aws")
    (version "0.10.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/hashicorp/vault")
             (commit (go-version->git-ref version
                                          #:subdir "api/auth/aws"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1s9jhd6wwv721s7yi516k6wybysgh4w4h3ajaa5ynrm6p23z045m"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/hashicorp/vault/api/auth/aws"
      #:unpack-path "github.com/hashicorp/vault"))
    (propagated-inputs (list go-github-com-hashicorp-vault-api
                             go-github-com-hashicorp-go-uuid
                             go-github-com-hashicorp-go-secure-stdlib-awsutil
                             go-github-com-hashicorp-go-hclog
                             go-github-com-aws-aws-sdk-go))
    (home-page "https://github.com/hashicorp/vault")
    (synopsis #f)
    (description #f)
    (license license:mpl2.0)))

(define-public go-github-com-hashicorp-vault-api-auth-kubernetes
  (package
    (name "go-github-com-hashicorp-vault-api-auth-kubernetes")
    (version "0.10.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/hashicorp/vault")
             (commit (go-version->git-ref version
                                          #:subdir "api/auth/kubernetes"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1s9jhd6wwv721s7yi516k6wybysgh4w4h3ajaa5ynrm6p23z045m"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/hashicorp/vault/api/auth/kubernetes"
      #:unpack-path "github.com/hashicorp/vault"))
    (propagated-inputs (list go-github-com-hashicorp-vault-api))
    (home-page "https://github.com/hashicorp/vault")
    (synopsis #f)
    (description #f)
    (license license:mpl2.0)))

(define-public go-github-com-ionos-cloud-sdk-go
  (package
    (name "go-github-com-ionos-cloud-sdk-go")
    (version "6.3.4")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/ionos-cloud/sdk-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0glzpj84hhbjr8p5rx7pm9z20zp7wv4gqazfj2gdnz2nj85w6vqb"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/ionos-cloud/sdk-go/v6"
      #:unpack-path "github.com/ionos-cloud/sdk-go"))
    (propagated-inputs (list go-golang-org-x-oauth2))
    (home-page "https://github.com/ionos-cloud/sdk-go")
    (synopsis "Go API client for ionoscloud")
    (description
     "IONOS Enterprise-grade Infrastructure as a Service (@code{IaaS}) solutions can
be managed through the Cloud API, in addition or as an alternative to the \"Data
Center Designer\" (DCD) browser-based tool.")
    (license license:asl2.0)))

(define-public go-github-com-jhump-gopoet
  (package
    (name "go-github-com-jhump-gopoet")
    (version "0.1.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/jhump/gopoet")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0wb1ldpc9l8p29xhl9nkkq4vcp4rfrz72a4xlfn1qsjdg66b1rhq"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/jhump/gopoet"))
    (home-page "https://github.com/jhump/gopoet")
    (synopsis "Go Poet")
    (description
     "Package gopoet is a library to assist with generating Go code.  It includes a
model of the Go language that is simpler, and thus easier to work with, than
those provided by the \"go/ast\" and \"go/types\" packages.  It also provides
adapter methods to allow simple interoperability with elements from the
\"go/types\" and \"reflect\" packages.")
    (license license:asl2.0)))

(define-public go-github-com-jhump-goprotoc
  (package
    (name "go-github-com-jhump-goprotoc")
    (version "0.5.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/jhump/goprotoc")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0k2wy5as8h7zbmy151973g20lpyzjcgijh1pq28kn0vwqia34qjg"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/jhump/goprotoc"))
    (propagated-inputs (list go-gopkg-in-yaml-v2
                             go-google-golang-org-protobuf
                             go-golang-org-x-sync
                             go-github-com-jhump-protoreflect
                             go-github-com-jhump-gopoet
                             go-github-com-golang-protobuf))
    (home-page "https://github.com/jhump/goprotoc")
    (synopsis "Go-protoc")
    (description
     "This repo makes it easy to work in the protobuf tool chain using Go.")
    (license license:asl2.0)))

(define-public go-github-com-jhump-protoreflect
  (package
    (name "go-github-com-jhump-protoreflect")
    (version "1.17.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/jhump/protoreflect")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "135i22i93mzc4ms261alq62zbk8h387cyjjy5r5qldfswqpsz54c"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/jhump/protoreflect"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-github-com-jhump-goprotoc
                             go-github-com-jhump-gopoet
                             go-github-com-golang-protobuf
                             go-github-com-bufbuild-protocompile))
    (home-page "https://github.com/jhump/protoreflect")
    (synopsis "Protocol Buffer and gRPC Reflection")
    (description
     "This repo provides reflection APIs for
@@url{https://developers.google.com/protocol-buffers/,protocol buffers} (also
known as \"protobufs\" for short) and @@url{https://grpc.io/,@code{gRPC}}.  The
core of reflection in protobufs is the
@@url{https://github.com/google/protobuf/raw/199d82fde1734ab5bc931cd0de93309e50cd7ab9/src/google/protobuf/descriptor.proto,descriptor}.
 A descriptor is itself a protobuf message that describes a @@code{.proto}
source file or any element therein.  So a collection of descriptors can describe
an entire schema of protobuf types, including RPC services.")
    (license license:asl2.0)))

(define-public go-github-com-jinzhu-inflection
  (package
    (name "go-github-com-jinzhu-inflection")
    (version "1.0.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/jinzhu/inflection")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "165i20d11s03771gi43skl66salxj36212r25fbs0cgr4qgfj7fy"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/jinzhu/inflection"))
    (home-page "https://github.com/jinzhu/inflection")
    (synopsis "Inflection")
    (description
     "Package inflection pluralizes and singularizes English nouns.")
    (license license:expat)))

(define-public go-github-com-jinzhu-now
  (package
    (name "go-github-com-jinzhu-now")
    (version "1.1.5")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/jinzhu/now")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "10ywpaxs6d3y8gqlzx6rh3yw4ya83bnx0hrs0k0wq5bxbjhfmlil"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/jinzhu/now"))
    (home-page "https://github.com/jinzhu/now")
    (synopsis "Now")
    (description "Package now is a time toolkit for golang.")
    (license license:expat)))

(define-public go-github-com-johannesboyne-gofakes3
  (package
    (name "go-github-com-johannesboyne-gofakes3")
    (version "0.0.0-20250819190956-70603d73f06f")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/johannesboyne/gofakes3")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "181dl9z2a97qxgzklc7hhjqxv3xiy7azwkqhmgs39bxsv05sr9hl"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/johannesboyne/gofakes3"))
    (propagated-inputs (list go-gopkg-in-mgo-v2
                        go-golang-org-x-tools
                        go-go-shabbyrobe-org-gocovmerge
                        go-go-etcd-io-bbolt
                        go-github-com-stretchr-testify
                        go-github-com-spf13-afero
                        go-github-com-ryszard-goskiplist
                        go-github-com-cevatbarisyilmaz-ara
                        go-github-com-aws-smithy-go
                        go-github-com-aws-aws-sdk-go-v2-service-s3
                        go-github-com-aws-aws-sdk-go-v2-feature-s3-manager
                        go-github-com-aws-aws-sdk-go-v2-credentials
                        go-github-com-aws-aws-sdk-go-v2-config
                        go-github-com-aws-aws-sdk-go-v2
                        go-github-com-aws-aws-sdk-go))
    (home-page "https://github.com/johannesboyne/gofakes3")
    (synopsis "AWS (GOFAKE)S3")
    (description
     "AWS S3 fake server and testing library for comprehensive S3 integration testing.
 This tool can be used to run a test server, for example, to support testing AWS
Lambda functions that interact with S3.  It also serves as a straightforward and
convenient S3 mock and test server for various development needs.")
    (license license:expat)))

(define-public go-github-com-jstemmer-go-junit-report
  (package
    (name "go-github-com-jstemmer-go-junit-report")
    (version "1.0.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/jstemmer/go-junit-report")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1x5qaicf7840l0jws26072abl6hqfzjn2pn2im0l9b4q97s7si7w"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/jstemmer/go-junit-report"))
    (home-page "https://github.com/jstemmer/go-junit-report")
    (synopsis "go-junit-report")
    (description
     "go-junit-report is a tool that converts
@@url{https://pkg.go.dev/cmd/go#hdr-Test_packages,(code go test)} output to an
XML report, suitable for applications that expect JUnit-style XML reports (e.g.
@@url{http://jenkins-ci.org,Jenkins}).")
    (license license:expat)))

(define-public go-github-com-knadh-koanf
  (package
    (name "go-github-com-knadh-koanf")
    (version "2.2.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/knadh/koanf")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0l93n448ry556rb6rv9d4a0kjirxgmp01c7r04y0m47j4d5dvayi"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/knadh/koanf/v2"
      #:unpack-path "github.com/knadh/koanf"))
    (propagated-inputs (list go-github-com-mitchellh-copystructure
                             go-github-com-knadh-koanf-maps
                             go-github-com-go-viper-mapstructure-v2))
    (home-page "https://github.com/knadh/koanf")
    (synopsis "Installation")
    (description
     "@@strong{koanf} is a library for reading configuration from different sources in
different formats in Go applications.  It is a cleaner, lighter
@@url{#readme-alternative-to-viper,alternative to spf13/viper} with better
abstractions and extensibility and far fewer dependencies.")
    (license license:expat)))

(define-public go-github-com-knadh-koanf-maps
  (package
    (name "go-github-com-knadh-koanf-maps")
    (version "0.1.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/knadh/koanf")
             (commit (go-version->git-ref version
                                          #:subdir "maps"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "128gahbkxggchr914m9s270zqwcsi4qxkwjpdlppl70lx1igcwbm"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/knadh/koanf/maps"
      #:unpack-path "github.com/knadh/koanf"))
    (propagated-inputs (list go-github-com-mitchellh-copystructure))
    (home-page "https://github.com/knadh/koanf")
    (synopsis #f)
    (description
     "Package maps provides reusable functions for manipulating nested
map[string]interface{} maps are common unmarshal products from various
serializers such as json, yaml etc.")
    (license license:expat)))

(define-public go-github-com-knadh-koanf-providers-confmap
  (package
    (name "go-github-com-knadh-koanf-providers-confmap")
    (version "1.0.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/knadh/koanf")
             (commit (go-version->git-ref version
                                          #:subdir "providers/confmap"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0a5cd3rpby1ymzpfc2shd1c1jhkkm92pdizqqsn4gfabc61kyyb5"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/knadh/koanf/providers/confmap"
      #:unpack-path "github.com/knadh/koanf"))
    (propagated-inputs (list go-github-com-knadh-koanf-maps))
    (home-page "https://github.com/knadh/koanf")
    (synopsis #f)
    (description
     "Package confmap implements a koanf.Provider that takes nested and flat
map[string]interface{} config maps and provides them to koanf.")
    (license license:expat)))

(define-public go-github-com-letsencrypt-pkcs11key
  (package
    (name "go-github-com-letsencrypt-pkcs11key")
    (version "4.0.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/letsencrypt/pkcs11key")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1ynmw2zhsr1m880clc2hgmc53cx6b69wdcjddw9pz0sysddnpb81"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/letsencrypt/pkcs11key/v4"
      #:unpack-path "github.com/letsencrypt/pkcs11key"))
    (propagated-inputs (list go-github-com-miekg-pkcs11))
    (home-page "https://github.com/letsencrypt/pkcs11key")
    (synopsis #f)
    (description
     "Package pkcs11key implements crypto.Signer for PKCS #11 private keys.  See
@@url{https://docs.oasis-open.org/pkcs11/pkcs11-base/v2.40/pkcs11-base-v2.40.pdf,https://docs.oasis-open.org/pkcs11/pkcs11-base/v2.40/pkcs11-base-v2.40.pdf}
for details of the Cryptoki PKCS#11 API. See
@@url{https://github.com/letsencrypt/pkcs11key/blob/master/test.sh,https://github.com/letsencrypt/pkcs11key/blob/master/test.sh}
for examples of how to test and/or benchmark.")
    (license license:bsd-2)))

(define-public go-github-com-linkedin-goavro
  (package
    (name "go-github-com-linkedin-goavro")
    (version "2.14.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/linkedin/goavro")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1wpa1ygqa588hk9llz2cbd8pdlkcpxvsi30041hdsn6rl8k2pp5v"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/linkedin/goavro/v2"
      #:unpack-path "github.com/linkedin/goavro"))
    (propagated-inputs (list go-github-com-stretchr-testify
                             go-github-com-golang-snappy))
    (home-page "https://github.com/linkedin/goavro")
    (synopsis "goavro")
    (description
     "Package goavro is a library that encodes and decodes Avro data.")
    (license license:asl2.0)))

(define-public go-github-com-linode-linodego
  (package
    (name "go-github-com-linode-linodego")
    (version "1.55.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/linode/linodego")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0bmlmn6ci4jl2m76xxbgqhhjgxd5lcyh03mmz06knlvps8zgszxh"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/linode/linodego"))
    (propagated-inputs (list go-github-com-stretchr-testify
                             go-gopkg-in-ini-v1
                             go-golang-org-x-text
                             go-golang-org-x-oauth2
                             go-golang-org-x-net
                             go-github-com-jarcoal-httpmock
                             go-github-com-google-go-querystring
                             go-github-com-google-go-cmp
                             go-github-com-go-resty-resty-v2))
    (home-page "https://github.com/linode/linodego")
    (synopsis "linodego")
    (description
     "Go client for @@url{https://techdocs.akamai.com/linode-api/reference/api,Linode
REST v4 API}.")
    (license license:expat)))

(define-public go-github-com-lufia-plan9stats
  (package
    (name "go-github-com-lufia-plan9stats")
    (version "0.0.0-20250821153705-5981dea3221d")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/lufia/plan9stats")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1kkj3kyvp4fxz5l1g7zz4yrxh99ca828ha28ah60lwal27ni7bq1"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/lufia/plan9stats"))
    (propagated-inputs (list go-github-com-google-go-cmp))
    (home-page "https://github.com/lufia/plan9stats")
    (synopsis "plan9stats")
    (description "Package stats provides statistic utilities for Plan 9.")
    (license license:bsd-3)))

(define-public go-github-com-manifoldco-promptui
  (package
    (name "go-github-com-manifoldco-promptui")
    (version "0.9.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/manifoldco/promptui")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1nnlj1ahwq4ar5gbvxg8dqjl1wl5r8mhcm0bixg1c4wiihz8xv8m"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/manifoldco/promptui"))
    (propagated-inputs (list go-github-com-chzyer-readline))
    (home-page "https://github.com/manifoldco/promptui")
    (synopsis "promptui")
    (description
     "Package promptui is a library providing a simple interface to create
command-line prompts for go.  It can be easily integrated into spf13/cobra,
urfave/cli or any cli go application.")
    (license license:bsd-3)))

(define-public go-github-com-masterminds-sprig
  (package
    (name "go-github-com-masterminds-sprig")
    (version "2.22.0+incompatible")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Masterminds/sprig")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "09dzwhj4zh3p6f1jhyic16n4qdnvpamz7hyk9fycpm4b1jfq63gd"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/Masterminds/sprig"))
    (home-page "https://github.com/Masterminds/sprig")
    (synopsis "Sprig: Template functions for Go templates")
    (description "Sprig: Template functions for Go.")
    (license license:expat)))

(define-public go-github-com-matttproud-golang-protobuf-extensions
  (package
    (name "go-github-com-matttproud-golang-protobuf-extensions")
    (version "1.0.4")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/matttproud/golang_protobuf_extensions")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1xqsf9vpcrd4hp95rl6kgmjvkv1df4aicfw4l5vfcxcwxknfx2xs"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/matttproud/golang_protobuf_extensions"))
    (propagated-inputs (list go-github-com-golang-protobuf))
    (home-page "https://github.com/matttproud/golang_protobuf_extensions")
    (synopsis "Overview")
    (description
     "This repository provides various Protocol Buffer extensions for the Go language
(golang), namely support for record length-delimited message streaming.")
    (license license:asl2.0)))

(define-public go-github-com-microsoft-go-mssqldb
  (package
    (name "go-github-com-microsoft-go-mssqldb")
    (version "1.9.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/microsoft/go-mssqldb")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1bz0bpcmj1fcwwb31lbjjdzd0y3zivy5a5q26xfd24izbkxdvqnq"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/microsoft/go-mssqldb"))
    (propagated-inputs (list go-golang-org-x-text
                        go-golang-org-x-sys
                        go-golang-org-x-crypto
                        go-github-com-stretchr-testify
                        go-github-com-jcmturner-gokrb5-v8
                        go-github-com-google-uuid
                        go-github-com-golang-sql-sqlexp
                        go-github-com-golang-sql-civil
                        go-github-com-azure-azure-sdk-for-go-sdk-security-keyvault-azkeys
                        go-github-com-azure-azure-sdk-for-go-sdk-azidentity
                        go-github-com-azure-azure-sdk-for-go-sdk-azcore))
    (home-page "https://github.com/microsoft/go-mssqldb")
    (synopsis "Microsoft's official Go MSSQL driver")
    (description
     "package mssql implements the TDS protocol used to connect to MS SQL Server
(sqlserver) database servers.")
    (license license:bsd-3)))

(define-public go-github-com-microsoft-go-winio
  (package
    (name "go-github-com-microsoft-go-winio")
    (version "0.6.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/microsoft/go-winio")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "09dxp536m15d3l9aibpfgs9ag55n7gqrgp5app4rcb888c6mclxm"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/Microsoft/go-winio"))
    (propagated-inputs (list go-golang-org-x-tools go-golang-org-x-sys
                             go-github-com-sirupsen-logrus))
    (home-page "https://github.com/Microsoft/go-winio")
    (synopsis "go-winio")
    (description
     "This package provides utilities for efficiently performing Win32 IO operations
in Go.  Currently, this package is provides support for genreal IO and
management of.")
    (license license:expat)))

(define-public go-github-com-minio-asm2plan9s
  (package
    (name "go-github-com-minio-asm2plan9s")
    (version "0.0.0-20200509001527-cdd76441f9d8")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/minio/asm2plan9s")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0i635ipzfqy7cyj68sl3mmqbnjqgyrhjxpyp62z2dbm34i42pfbg"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/minio/asm2plan9s"))
    (home-page "https://github.com/minio/asm2plan9s")
    (synopsis "asm2plan9s")
    (description
     "Tool to generate BYTE sequences for Go assembly as generated by YASM/GAS (for
Intel) or GAS (for ARM).")
    (license license:asl2.0)))

(define-public go-github-com-minio-c2goasm
  (package
    (name "go-github-com-minio-c2goasm")
    (version "0.0.0-20190812172519-36a3d3bbc4f3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/minio/c2goasm")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1aw8g7455r7av7s4sdc57yyd2d5298linppx8m4cfhrgmd6rblzf"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/minio/c2goasm"))
    (home-page "https://github.com/minio/c2goasm")
    (synopsis "c2goasm: C to Go Assembly")
    (description
     "This is a tool to convert assembly as generated by a C/C++ compiler into Golang
assembly.  It is meant to be used in combination with
@@url{https://github.com/minio/asm2plan9s,asm2plan9s} in order to automatically
generate pure Go wrappers for C/C++ code (that may for instance take advantage
of compiler SIMD intrinsics or @@code{template<>} code).")
    (license license:asl2.0)))

(define-public go-github-com-moby-go-archive
  (package
    (name "go-github-com-moby-go-archive")
    (version "0.1.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/moby/go-archive")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1vyz6nxbs368wf4ndn0l6b190rb303frf1sbp5c5s09law14cs24"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/moby/go-archive"))
    (propagated-inputs (list go-gotest-tools-v3
                             go-golang-org-x-sys
                             go-github-com-moby-sys-userns
                             go-github-com-moby-sys-user
                             go-github-com-moby-sys-sequential
                             go-github-com-moby-sys-reexec
                             go-github-com-moby-sys-mountinfo
                             go-github-com-moby-sys-mount
                             go-github-com-moby-patternmatcher
                             go-github-com-klauspost-compress
                             go-github-com-google-go-cmp
                             go-github-com-containerd-log
                             go-github-com-adalogics-go-fuzz-headers))
    (home-page "https://github.com/moby/go-archive")
    (synopsis #f)
    (description
     "Package archive provides helper functions for dealing with archive files.")
    (license license:asl2.0)))

(define-public go-github-com-moby-sys-mount
  (package
    (name "go-github-com-moby-sys-mount")
    (version "0.3.4")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/moby/sys")
             (commit (go-version->git-ref version
                                          #:subdir "mount"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1nh1disclgydvq7k10awzks6k8kw9cjj3q19f83ksi4b76p5l475"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/moby/sys/mount"
      #:unpack-path "github.com/moby/sys"))
    (propagated-inputs (list go-golang-org-x-sys
                             go-github-com-moby-sys-mountinfo))
    (home-page "https://github.com/moby/sys")
    (synopsis #f)
    (description
     "Package mount provides a set of functions to mount and unmount mounts.")
    (license license:asl2.0)))

(define-public go-github-com-moby-sys-reexec
  (package
    (name "go-github-com-moby-sys-reexec")
    (version "0.1.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/moby/sys")
             (commit (go-version->git-ref version
                                          #:subdir "reexec"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1n2z0zqfdyw6rllqdljddczh758kq22k4ajrhv27shv7m3fnvm0p"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/moby/sys/reexec"
      #:unpack-path "github.com/moby/sys"))
    (home-page "https://github.com/moby/sys")
    (synopsis #f)
    (description
     "Package reexec facilitates the busybox style reexec of a binary.")
    (license license:asl2.0)))

(define-public go-github-com-modocache-gover
  (package
    (name "go-github-com-modocache-gover")
    (version "0.0.0-20171022184752-b58185e213c5")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/sozorogami/gover")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1w7pzqh8ljacpxhwq9f4s4ax908dgl22qfxyrx51mblylwzvm6va"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/modocache/gover"))
    (home-page "https://github.com/modocache/gover")
    (synopsis "gover")
    (description "Usage: gover [root] [out].")
    (license license:asl2.0)))

(define-public go-github-com-mwitkow-go-proto-validators
  (package
    (name "go-github-com-mwitkow-go-proto-validators")
    (version "0.3.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/mwitkow/go-proto-validators")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0flr9964jz4bgzhjpcc54niiy6zg1skf8f8x7bcp2qvbwshxwb44"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/mwitkow/go-proto-validators"))
    (propagated-inputs (list go-github-com-stretchr-testify
                             go-github-com-golang-protobuf
                             go-github-com-gogo-protobuf))
    (home-page "https://github.com/mwitkow/go-proto-validators")
    (synopsis "Golang ProtoBuf Validator Compiler")
    (description
     "This package provides a @@code{protoc} plugin that generates
@code{@@code{Validate()} error} functions on Go proto @@code{struct}s based on
field options inside @@code{.proto} files.  The validation functions are
code-generated and thus don't suffer on performance from tag-based reflection on
deeply-nested messages.")
    (license license:asl2.0)))

(define-public go-github-com-nats-io-nats-server
  (package
    (name "go-github-com-nats-io-nats-server")
    (version "2.11.8")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/nats-io/nats-server")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "13bspj7hjyr5bp2fzbjwahgn8r6pj8crishlny7yzq3q2p5n4k72"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/nats-io/nats-server/v2"
      #:unpack-path "github.com/nats-io/nats-server"))
    (propagated-inputs (list go-golang-org-x-time
                             go-golang-org-x-sys
                             go-golang-org-x-crypto
                             go-go-uber-org-automaxprocs
                             go-github-com-nats-io-nuid
                             go-github-com-nats-io-nkeys
                             go-github-com-nats-io-nats-go
                             go-github-com-nats-io-jwt-v2
                             go-github-com-minio-highwayhash
                             go-github-com-klauspost-compress
                             go-github-com-google-go-tpm
                             go-github-com-antithesishq-antithesis-sdk-go))
    (home-page "https://github.com/nats-io/nats-server")
    (synopsis "Documentation")
    (description
     "@@url{https://nats.io,NATS} is a simple, secure and performant communications
system for digital systems, services and devices.  NATS is part of the Cloud
Native Computing Foundation (@@url{https://cncf.io,CNCF}).  NATS has over
@@url{https://nats.io/download/,40 client language implementations}, and its
server can run on-premise, in the cloud, at the edge, and even on a Raspberry
Pi.  NATS can secure and simplify design and operation of modern distributed
systems.")
    (license license:asl2.0)))

(define-public go-github-com-ncw-swift
  (package
    (name "go-github-com-ncw-swift")
    (version "1.0.53")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/ncw/swift")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0xcyf8463h6420ajma6bf0h312fgyivppfzhplk8z3dynd98nsfn"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/ncw/swift"))
    (home-page "https://github.com/ncw/swift")
    (synopsis "Swift")
    (description
     "Package swift provides an easy to use interface to Swift / Openstack Object
Storage / Rackspace Cloud Files.")
    (license license:expat)))

(define-public go-github-com-newrelic-go-agent
  (package
    (name "go-github-com-newrelic-go-agent")
    (version "3.40.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/newrelic/go-agent")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "075csw1jca9fd8ym643pwpk3j54d4b1bbrkkr4haf228f6kyflbf"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/newrelic/go-agent/v3"
      #:unpack-path "github.com/newrelic/go-agent"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc))
    (home-page "https://github.com/newrelic/go-agent")
    (synopsis #f)
    (description #f)
    (license license:asl2.0)))

(define-public go-github-com-nsf-jsondiff
  (package
    (name "go-github-com-nsf-jsondiff")
    (version "0.0.0-20230430225905-43f6cf3098c1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/nsf/jsondiff")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1dv0h6hn6ycxwmwkz9rfjxi8a2nq48w88h5mdmyww7myf0m6dfyr"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/nsf/jsondiff"))
    (home-page "https://github.com/nsf/jsondiff")
    (synopsis "JsonDiff library")
    (description
     "The main purpose of the library is integration into tests which use json and
providing human-readable output of test results.")
    (license license:expat)))

(define-public go-github-com-open-telemetry-opentelemetry-collector-contrib-processor-deltatocumulativeprocessor
  (package
    (name
     "go-github-com-open-telemetry-opentelemetry-collector-contrib-processor-deltatocumulativeprocessor")
    (version "0.132.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url
              "https://github.com/open-telemetry/opentelemetry-collector-contrib")
             (commit (go-version->git-ref version
                      #:subdir "processor/deltatocumulativeprocessor"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1f2fxfcfmlqfzm9y9nr39a4nq1zimdhaypfrzbmgl6gkfxp3qyds"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path
      "github.com/open-telemetry/opentelemetry-collector-contrib/processor/deltatocumulativeprocessor"
      #:unpack-path
      "github.com/open-telemetry/opentelemetry-collector-contrib"))
    (propagated-inputs (list go-gopkg-in-yaml-v3
                        go-golang-org-x-tools
                        go-go-uber-org-goleak
                        go-go-opentelemetry-io-otel-trace
                        go-go-opentelemetry-io-otel-sdk-metric
                        go-go-opentelemetry-io-otel-metric
                        go-go-opentelemetry-io-otel
                        go-go-opentelemetry-io-collector-processor-processortest
                        go-go-opentelemetry-io-collector-processor
                        go-go-opentelemetry-io-collector-pdata
                        go-go-opentelemetry-io-collector-consumer-consumertest
                        go-go-opentelemetry-io-collector-consumer
                        go-go-opentelemetry-io-collector-confmap-xconfmap
                        go-go-opentelemetry-io-collector-confmap
                        go-go-opentelemetry-io-collector-component-componenttest
                        go-go-opentelemetry-io-collector-component
                        go-github-com-stretchr-testify
                        go-github-com-puzpuzpuz-xsync-v3
                        go-github-com-google-go-cmp))
    (home-page
     "https://github.com/open-telemetry/opentelemetry-collector-contrib")
    (synopsis "Delta to cumulative processor")
    (description
     "package deltatocumulativeprocessor implements a processor which converts metrics
from delta temporality to cumulative.")
    (license license:asl2.0)))

(define-public go-github-com-ovh-go-ovh
  (package
    (name "go-github-com-ovh-go-ovh")
    (version "1.9.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/ovh/go-ovh")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "00a1pr0zjs1q62zx3dvc28rkw00gj205g0r0k3vbj0pc5llspm20"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/ovh/go-ovh"))
    (propagated-inputs (list go-gopkg-in-ini-v1 go-golang-org-x-oauth2
                             go-github-com-maxatome-go-testdeep
                             go-github-com-jarcoal-httpmock))
    (home-page "https://github.com/ovh/go-ovh")
    (synopsis "go-ovh")
    (description
     "Lightweight Go wrapper around OVHcloud's APIs.  Handles all the hard work
including credential creation and requests signing.")
    (license license:bsd-3)))

(define-public go-github-com-peterbourgon-diskv
  (package
    (name "go-github-com-peterbourgon-diskv")
    (version "3.0.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/peterbourgon/diskv")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1158f22h2jvzx7fjk0lwg84avsrm1zijg7gdzaw7bbg1lb6xmj2g"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/peterbourgon/diskv/v3"
      #:unpack-path "github.com/peterbourgon/diskv"))
    (propagated-inputs (list go-github-com-google-btree))
    (home-page "https://github.com/peterbourgon/diskv")
    (synopsis "What is diskv?")
    (description
     "Diskv (disk-vee) is a simple, persistent key-value store written in the Go
language.  It starts with an incredibly simple API for storing arbitrary data on
a filesystem by key, and builds several layers of performance-enhancing
abstraction on top.  The end result is a conceptually simple, but highly
performant, disk-backed storage system.")
    (license license:expat)))

(define-public go-github-com-planetscale-vtprotobuf
  (package
    (name "go-github-com-planetscale-vtprotobuf")
    (version "0.6.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/planetscale/vtprotobuf")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0bms8rrg8wrm3x9mspqrzzix24vjgi3p5zzbw108ydr1rnarwblf"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/planetscale/vtprotobuf"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-github-com-stretchr-testify))
    (home-page "https://github.com/planetscale/vtprotobuf")
    (synopsis ", the Vitess Protocol Buffers compiler")
    (description
     "This repository provides the @@code{protoc-gen-go-vtproto} plug-in for
@@code{protoc}, which is used by Vitess to generate optimized marshall &
unmarshal code.")
    (license license:bsd-3)))

(define-public go-github-com-power-devops-perfstat
  (package
    (name "go-github-com-power-devops-perfstat")
    (version "0.0.0-20240221224432-82ca36839d55")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/power-devops/perfstat")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0lmsxb3wlf0088198mcljq6krqnvpy1qy8li833hhhkdbckywg5s"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/power-devops/perfstat"))
    (propagated-inputs (list go-golang-org-x-sys))
    (home-page "https://github.com/power-devops/perfstat")
    (synopsis #f)
    (description
     "Copyright 2020 Power-Devops.com.  All rights reserved.  Use of this source code
is governed by the license that can be found in the LICENSE file.")
    (license license:expat)))

(define-public go-github-com-prometheus-alertmanager
  (package
    (name "go-github-com-prometheus-alertmanager")
    (version "0.28.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/prometheus/alertmanager")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1zar5l92a0f3ghm7ndijadzjm6va1qpnxksrah7pxza95pnx0wfq"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/prometheus/alertmanager"))
    (propagated-inputs (list go-gopkg-in-yaml-v2
                        go-gopkg-in-telebot-v3
                        go-golang-org-x-tools
                        go-golang-org-x-text
                        go-golang-org-x-net
                        go-golang-org-x-mod
                        go-go-uber-org-automaxprocs
                        go-go-uber-org-atomic
                        go-github-com-xlab-treeprint
                        go-github-com-trivago-tgo
                        go-github-com-stretchr-testify
                        go-github-com-shurcool-vfsgen
                        go-github-com-shurcool-httpfs
                        go-github-com-rs-cors
                        go-github-com-prometheus-sigv4
                        go-github-com-prometheus-exporter-toolkit
                        go-github-com-prometheus-common-assets
                        go-github-com-prometheus-common
                        go-github-com-prometheus-client-golang ; packaged

                        go-github-com-oklog-ulid
                        go-github-com-oklog-run
                        go-github-com-matttproud-golang-protobuf-extensions
                        go-github-com-kylelemons-godebug
                        go-github-com-jessevdk-go-flags
                        go-github-com-hashicorp-memberlist
                        go-github-com-hashicorp-golang-lru-v2
                        go-github-com-hashicorp-go-sockaddr
                        go-github-com-gogo-protobuf
                        go-github-com-gofrs-uuid
                        go-github-com-go-openapi-validate
                        go-github-com-go-openapi-swag
                        go-github-com-go-openapi-strfmt
                        go-github-com-go-openapi-spec
                        go-github-com-go-openapi-runtime
                        go-github-com-go-openapi-loads
                        go-github-com-go-openapi-errors
                        go-github-com-go-openapi-analysis
                        go-github-com-emersion-go-smtp
                        go-github-com-coder-quartz
                        go-github-com-cespare-xxhash-v2
                        go-github-com-cenkalti-backoff-v4
                        go-github-com-aws-aws-sdk-go
                        go-github-com-alecthomas-units
                        go-github-com-alecthomas-kingpin-v2
                        go-github-com-kimmachinegun-automemlimit))
    (home-page "https://github.com/prometheus/alertmanager")
    (synopsis "Alertmanager")
    (description
     "The Alertmanager handles alerts sent by client applications such as the
Prometheus server.  It takes care of deduplicating, grouping, and routing them
to the correct
@@url{https://prometheus.io/docs/alerting/latest/configuration/#receiver,receiver
integrations} such as email, @code{PagerDuty}, @code{OpsGenie}, or many other
@@url{https://prometheus.io/docs/operating/integrations/#alertmanager-webhook-receiver,mechanisms}
thanks to the webhook receiver.  It also takes care of silencing and inhibition
of alerts.")
    (license license:asl2.0)))

(define-public go-github-com-prometheus-otlptranslator
  (package
    (name "go-github-com-prometheus-otlptranslator")
    (version "0.0.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/prometheus/otlptranslator")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0b8sw2xmy6vja3z8yy7h2gjv4l7xrfkj18mg6bhqad0dmadjll99"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/prometheus/otlptranslator"))
    (propagated-inputs (list go-github-com-grafana-regexp))
    (home-page "https://github.com/prometheus/otlptranslator")
    (synopsis "OTLP Prometheus Translator")
    (description
     "Copyright 2025 The Prometheus Authors Licensed under the Apache License, Version
2.0 (the \"License\"); you may not use this file except in compliance with the
License.  You may obtain a copy of the License at.")
    (license license:asl2.0)))

(define-public go-github-com-prometheus-prometheus
  (package
    (name "go-github-com-prometheus-prometheus")
    (version "0.305.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/prometheus/prometheus")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1jbi5gj27sy8lzmfx8lr8vljaygzzm1wgvcyghrh88w1x8kss6a0"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/prometheus/prometheus"))
    (propagated-inputs (list go-github-com-fsnotify-fsnotify
                        go-github-com-prometheus-otlptranslator
                        go-k8s-io-klog-v2
                        go-k8s-io-klog
                        go-k8s-io-client-go
                        go-k8s-io-apimachinery
                        go-k8s-io-api
                        go-gopkg-in-yaml-v3
                        go-gopkg-in-yaml-v2
                        go-google-golang-org-protobuf
                        go-google-golang-org-grpc
                        go-google-golang-org-genproto-googleapis-api
                        go-google-golang-org-api
                        go-golang-org-x-text
                        go-golang-org-x-sys
                        go-golang-org-x-sync
                        go-golang-org-x-oauth2
                        go-go-uber-org-multierr
                        go-go-uber-org-goleak
                        go-go-uber-org-automaxprocs
                        go-go-uber-org-atomic
                        go-go-opentelemetry-io-otel-trace
                        go-go-opentelemetry-io-otel-sdk
                        go-go-opentelemetry-io-otel-metric
                        go-go-opentelemetry-io-otel-exporters-otlp-otlptrace-otlptracehttp
                        go-go-opentelemetry-io-otel-exporters-otlp-otlptrace-otlptracegrpc
                        go-go-opentelemetry-io-otel-exporters-otlp-otlptrace
                        go-go-opentelemetry-io-otel
                        go-go-opentelemetry-io-contrib-instrumentation-net-http-otelhttp
                        go-go-opentelemetry-io-contrib-instrumentation-net-http-httptrace-otelhttptrace
                        go-go-opentelemetry-io-collector-semconv
                        go-go-opentelemetry-io-collector-processor
                        go-go-opentelemetry-io-collector-pdata
                        go-go-opentelemetry-io-collector-consumer
                        go-go-opentelemetry-io-collector-component
                        go-github-com-vultr-govultr-v2
                        go-github-com-stretchr-testify
                        go-github-com-stackitcloud-stackit-sdk-go-core
                        go-github-com-shurcool-httpfs
                        go-github-com-scaleway-scaleway-sdk-go
                        go-github-com-prometheus-sigv4
                        go-github-com-prometheus-exporter-toolkit
                        go-github-com-prometheus-common-assets
                        go-github-com-prometheus-common
                        go-github-com-prometheus-client-model
                        go-github-com-prometheus-client-golang ; packaged

                        go-github-com-prometheus-alertmanager
                        go-github-com-ovh-go-ovh
                        go-github-com-open-telemetry-opentelemetry-collector-contrib-processor-deltatocumulativeprocessor
                        go-github-com-oklog-ulid-v2
                        go-github-com-oklog-run
                        go-github-com-nsf-jsondiff
                        go-github-com-mwitkow-go-conntrack
                        go-github-com-munnerz-goautoneg
                        go-github-com-miekg-dns
                        go-github-com-linode-linodego
                        go-github-com-kolo-xmlrpc
                        go-github-com-klauspost-compress
                        go-github-com-json-iterator-go
                        go-github-com-ionos-cloud-sdk-go-v6
                        go-github-com-hetznercloud-hcloud-go-v2
                        go-github-com-hashicorp-nomad-api
                        go-github-com-hashicorp-consul-api
                        go-github-com-grafana-regexp
                        go-github-com-gophercloud-gophercloud-v2
                        go-github-com-google-uuid
                        go-github-com-google-pprof
                        go-github-com-google-go-cmp
                        go-github-com-golang-snappy
                        go-github-com-gogo-protobuf
                        go-github-com-go-zookeeper-zk
                        go-github-com-go-openapi-strfmt
                        go-github-com-facette-natsort
                        go-github-com-envoyproxy-protoc-gen-validate
                        go-github-com-envoyproxy-go-control-plane-envoy
                        go-github-com-edsrzf-mmap-go
                        go-github-com-docker-docker
                        go-github-com-digitalocean-godo
                        go-github-com-dennwc-varint
                        go-github-com-cespare-xxhash-v2
                        go-github-com-bboreham-go-loser
                        go-github-com-aws-aws-sdk-go
                        go-github-com-alecthomas-units
                        go-github-com-alecthomas-kingpin-v2
                        go-github-com-kimmachinegun-automemlimit
                        go-github-com-code-hex-go-generics-cache
                        go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-network-armnetwork-v4
                        go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-compute-armcompute-v5
                        go-github-com-azure-azure-sdk-for-go-sdk-azidentity
                        go-github-com-azure-azure-sdk-for-go-sdk-azcore))
    (home-page "https://github.com/prometheus/prometheus")
    (synopsis "Architecture overview")
    (description
     "Visit @@url{https://prometheus.io,prometheus.io} for the full documentation,
examples and guides.")
    (license license:asl2.0)))

(define-public go-github-com-proullon-ramsql
  (package
    (name "go-github-com-proullon-ramsql")
    (version "0.1.4")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/proullon/ramsql")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1ak5pcad18hig7scxqrx95hskk3fngf18zj48mm7d9k7yjgd0pcp"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/proullon/ramsql"))
    (propagated-inputs (list go-gorm-io-gorm go-gorm-io-driver-postgres
                             go-github-com-go-gorp-gorp
                             go-github-com-glebarez-go-sqlite))
    (home-page "https://github.com/proullon/ramsql")
    (synopsis "RamSQL")
    (description
     "@code{RamSQL} has been written to be used in your project's test suite.")
    (license license:bsd-3)))

(define-public go-github-com-pseudomuto-protoc-gen-doc
  (package
    (name "go-github-com-pseudomuto-protoc-gen-doc")
    (version "1.5.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/pseudomuto/protoc-gen-doc")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "15hgrw6966jhs65svx09mcn3w6v2jl593yb6wjm03a9hc3mqvl6p"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/pseudomuto/protoc-gen-doc"))
    (propagated-inputs (list go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-stretchr-testify
                             go-github-com-pseudomuto-protokit
                             go-github-com-mwitkow-go-proto-validators
                             go-github-com-golang-protobuf
                             go-github-com-envoyproxy-protoc-gen-validate
                             go-github-com-masterminds-sprig))
    (home-page "https://github.com/pseudomuto/protoc-gen-doc")
    (synopsis "protoc-gen-doc")
    (description
     "Package gendoc is a protoc plugin for generating documentation from your proto
files.")
    (license license:expat)))

(define-public go-github-com-pseudomuto-protokit
  (package
    (name "go-github-com-pseudomuto-protokit")
    (version "0.2.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/pseudomuto/protokit")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1lrd5h4hdy7sp9vpr272zk6z4fsrlsmqfwm3wx983k0ifnhgxgs6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/pseudomuto/protokit"))
    (propagated-inputs (list go-google-golang-org-genproto
                             go-github-com-stretchr-testify
                             go-github-com-golang-protobuf))
    (home-page "https://github.com/pseudomuto/protokit")
    (synopsis "protokit")
    (description
     "Package protokit is a library that makes it easy to create your own protoc
plugins.  It has excellent test coverage, and saves you so much time!")
    (license license:expat)))

(define-public go-github-com-puzpuzpuz-xsync
  (package
    (name "go-github-com-puzpuzpuz-xsync")
    (version "3.5.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/puzpuzpuz/xsync")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0k2ir8ixr5h0rwfd4i0nxlgmcrklld06jcbp5ghxk6hpxrhzs1y8"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/puzpuzpuz/xsync/v3"
      #:unpack-path "github.com/puzpuzpuz/xsync"))
    (home-page "https://github.com/puzpuzpuz/xsync")
    (synopsis "xsync")
    (description
     "Concurrent data structures for Go.  Aims to provide more scalable alternatives
for some of the data structures from the standard @@code{sync} package, but not
only.")
    (license license:asl2.0)))

(define-public go-github-com-rakyll-embedmd
  (package
    (name "go-github-com-rakyll-embedmd")
    (version "0.0.0-20171029212350-c8060a0752a2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/rakyll/embedmd")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "06fp14qv7z6axmmnygd6llmwfq36zspzr6rsbniziin2bpjlggf6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/rakyll/embedmd"))
    (home-page "https://github.com/rakyll/embedmd")
    (synopsis "embedmd")
    (description "embedmd.")
    (license license:asl2.0)))

(define-public go-github-com-ryanuber-go-glob
  (package
    (name "go-github-com-ryanuber-go-glob")
    (version "1.0.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/ryanuber/go-glob")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0mhrjy0iba3jr6bsgy7q50zjr42ar1njn1sb2fvihlkhxgb2ahv2"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/ryanuber/go-glob"))
    (home-page "https://github.com/ryanuber/go-glob")
    (synopsis "String globbing in golang")
    (description
     "@@code{go-glob} is a single-function library implementing basic string glob
support.")
    (license license:expat)))

(define-public go-github-com-ryszard-goskiplist
  (package
    (name "go-github-com-ryszard-goskiplist")
    (version "0.0.0-20150312221310-2dfbae5fcf46")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/ryszard/goskiplist")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1135gmvcwnmk36zryxq554fmikrmg5c6y5ml00arqpagn5xhnmnl"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/ryszard/goskiplist"))
    (home-page "https://github.com/ryszard/goskiplist")
    (synopsis "About")
    (description
     "This is a library implementing skip lists for the Go programming language
(@@url{http://golang.org/,http://golang.org/}).")
    (license license:asl2.0)))

(define-public go-github-com-scaleway-scaleway-sdk-go
  (package
    (name "go-github-com-scaleway-scaleway-sdk-go")
    (version "1.0.0-beta.34")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/scaleway/scaleway-sdk-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "189gc4808ss59nb1r0nfav3p0wbbfh700rjc6fk3zkz0dsxrrinz"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/scaleway/scaleway-sdk-go"))
    (propagated-inputs (list go-gopkg-in-yaml-v2 go-golang-org-x-text
                             go-github-com-dnaeon-go-vcr))
    (home-page "https://github.com/scaleway/scaleway-sdk-go")
    (synopsis "Scaleway GO SDK")
    (description "Package scalewaysdkgo is the Scaleway API SDK for Go.")
    (license license:asl2.0)))

(define-public go-github-com-schollz-jsonstore
  (package
    (name "go-github-com-schollz-jsonstore")
    (version "1.1.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/schollz/jsonstore")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "05k38xjyiqsx6wlqs675k27g9vliq2r2xhpwy1dfi450bq1xzng7"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/schollz/jsonstore"))
    (home-page "https://github.com/schollz/jsonstore")
    (synopsis "jsonstore  🏪")
    (description
     "is a Go-library for a simple thread-safe in-memory JSON key-store with
persistent backend.  It's made for those times where you don't need a RDBMS like
@@url{https://www.mysql.com/,@code{MySQL}}, or a @code{NoSQL} like
@@url{https://www.mongodb.com/,@code{MongoDB}} - basically when you just need a
simple keystore.  A really simple keystore.  is used in those times you don't
need a distributed keystore like
@@url{https://coreos.com/etcd/docs/latest/,etcd}, or a remote keystore
@@url{https://redis.io/,Redis} or a local keystore like
@@url{https://github.com/boltdb/bolt,Bolt}.  Its really for those times where
you just need a JSON file.")
    (license license:expat)))

(define-public go-github-com-shoenig-test
  (package
    (name "go-github-com-shoenig-test")
    (version "1.12.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/shoenig/test")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "070877qcxz8j97icr50hmvlninz0yq2dfvy8qyfv1ayh3lpw391g"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/shoenig/test"))
    (propagated-inputs (list go-github-com-google-go-cmp))
    (home-page "https://github.com/shoenig/test")
    (synopsis "test")
    (description
     "Package test provides a modern generic testing assertions library.")
    (license license:mpl2.0)))

(define-public go-github-com-slackhq-nebula
  (package
    (name "go-github-com-slackhq-nebula")
    (version "1.9.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/slackhq/nebula")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0mcyakwr0r5lw6qgzib54v73a1j6ccaxrz3jf6dsh8daqwp5nmcj"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/slackhq/nebula"))
    (propagated-inputs (list go-gvisor-dev-gvisor
                             go-gopkg-in-yaml-v2
                             go-google-golang-org-protobuf
                             go-golang-zx2c4-com-wireguard-windows
                             go-golang-zx2c4-com-wireguard
                             go-golang-zx2c4-com-wintun
                             go-golang-org-x-term
                             go-golang-org-x-sys
                             go-golang-org-x-sync
                             go-golang-org-x-net
                             go-golang-org-x-exp
                             go-golang-org-x-crypto
                             go-github-com-vishvananda-netlink
                             go-github-com-stretchr-testify
                             go-github-com-songgao-water
                             go-github-com-skip2-go-qrcode
                             go-github-com-sirupsen-logrus
                             go-github-com-rcrowley-go-metrics
                             go-github-com-prometheus-client-golang ; packaged

                             go-github-com-nbrownus-go-metrics-prometheus
                             go-github-com-miekg-dns
                             go-github-com-kardianos-service
                             go-github-com-google-gopacket
                             go-github-com-gogo-protobuf
                             go-github-com-gaissmai-bart ; packaged
                             go-github-com-flynn-noise
                             go-github-com-cyberdelia-go-metrics-graphite
                             go-github-com-armon-go-radix
                             go-github-com-anmitsu-go-shlex
                             go-dario-cat-mergo))
    (home-page "https://github.com/slackhq/nebula")
    (synopsis "What is Nebula?")
    (description
     "Nebula is a scalable overlay networking tool with a focus on performance,
simplicity and security.  It lets you seamlessly connect computers anywhere in
the world.  Nebula is portable, and runs on Linux, OSX, Windows, @code{iOS}, and
Android.  It can be used to connect a small number of computers, but is also
able to connect tens of thousands of computers.")
    (license license:expat)))

(define-public go-github-com-smallstep-assert
  (package
    (name "go-github-com-smallstep-assert")
    (version "0.0.0-20200723003110-82e2b9b3b262")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/smallstep/assert")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "05zxnirw8lmm314pxwplz391ly4wa4mmlqzjgpy0h8i395011caz"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/smallstep/assert"))
    (home-page "https://github.com/smallstep/assert")
    (synopsis "assert")
    (description "This package provides a simple assertion framework for
@@url{http://golang.org/,Go}.")
    (license license:expat)))

(define-public go-github-com-smallstep-certificates
  (package
    (name "go-github-com-smallstep-certificates")
    (version "0.28.4")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/smallstep/certificates")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "01k3nslszm2f02jmdypk9qfyi97jrm6izxwnlfjlfmjhsx46r2k4"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/smallstep/certificates"))
    (propagated-inputs (list go-google-golang-org-protobuf
                        go-google-golang-org-grpc
                        go-google-golang-org-api
                        go-golang-org-x-net
                        go-golang-org-x-exp
                        go-golang-org-x-crypto
                        go-go-uber-org-mock
                        go-go-step-sm-crypto
                        go-github-com-urfave-cli
                        go-github-com-stretchr-testify
                        go-github-com-smallstep-scep
                        go-github-com-smallstep-pkcs7
                        go-github-com-smallstep-nosql
                        go-github-com-smallstep-linkedca
                        go-github-com-smallstep-go-attestation
                        go-github-com-smallstep-cli-utils
                        go-github-com-smallstep-assert
                        go-github-com-slackhq-nebula
                        go-github-com-sirupsen-logrus
                        go-github-com-rs-xid
                        go-github-com-prometheus-client-golang ; packaged

                        go-github-com-pkg-errors
                        go-github-com-newrelic-go-agent-v3
                        go-github-com-hashicorp-vault-api-auth-kubernetes
                        go-github-com-hashicorp-vault-api-auth-aws
                        go-github-com-hashicorp-vault-api-auth-approle
                        go-github-com-hashicorp-vault-api
                        go-github-com-googleapis-gax-go-v2
                        go-github-com-google-uuid
                        go-github-com-google-go-tpm
                        go-github-com-google-go-cmp
                        go-github-com-go-jose-go-jose-v3
                        go-github-com-go-chi-chi-v5
                        go-github-com-fxamacker-cbor-v2
                        go-github-com-dgraph-io-badger-v2
                        go-github-com-dgraph-io-badger
                        go-github-com-coreos-go-oidc-v3
                        go-github-com-ccoveille-go-safecast
                        go-github-com-masterminds-sprig-v3
                        go-cloud-google-com-go-security
                        go-cloud-google-com-go-longrunning))
    (home-page "https://github.com/smallstep/certificates")
    (synopsis "step-ca")
    (description
     "@@code{step-ca} is an online certificate authority for secure, automated
certificate management for @code{DevOps}.  It's the server counterpart to the
for working with certificates and keys.  Both projects are maintained by
@@url{https://smallstep.com,Smallstep Labs}.")
    (license license:asl2.0)))

(define-public go-github-com-smallstep-cli-utils
  (package
    (name "go-github-com-smallstep-cli-utils")
    (version "0.12.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/smallstep/cli-utils")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1i27bv2sswydll6avclm2mbq4ya82g40fzh66b3zginkvygi3d1v"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/smallstep/cli-utils"))
    (propagated-inputs (list go-golang-org-x-sys
                             go-golang-org-x-net
                             go-go-step-sm-crypto
                             go-github-com-urfave-cli
                             go-github-com-stretchr-testify
                             go-github-com-smallstep-assert
                             go-github-com-shurcool-sanitized-anchor-name
                             go-github-com-pkg-errors
                             go-github-com-mgutz-ansi
                             go-github-com-manifoldco-promptui
                             go-github-com-chzyer-readline))
    (home-page "https://github.com/smallstep/cli-utils")
    (synopsis "cli-utils")
    (description "Cli-utils is a collection of packages used in
@@url{https://smallstep.com,Smallstep} products.  See:.")
    (license license:asl2.0)))

(define-public go-github-com-smallstep-go-attestation
  (package
    (name "go-github-com-smallstep-go-attestation")
    (version "0.4.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/smallstep/go-attestation")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "064n4xzs7p30cfkajnlwl5xmcxxwbz9fdlffyyj1fm2fcmdw9glp"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/smallstep/go-attestation"))
    (propagated-inputs (list go-golang-org-x-sys
                             go-github-com-google-go-tspi
                             go-github-com-google-go-tpm-tools
                             go-github-com-google-go-tpm
                             go-github-com-google-go-cmp
                             go-github-com-google-certificate-transparency-go))
    (home-page "https://github.com/smallstep/go-attestation")
    (synopsis "Go-Attestation")
    (description
     "Go-Attestation abstracts remote attestation operations across a variety of
platforms and TPMs, enabling remote validation of machine identity and state.
This project attempts to provide high level primitives for both client and
server logic.")
    (license license:asl2.0)))

(define-public go-github-com-smallstep-linkedca
  (package
    (name "go-github-com-smallstep-linkedca")
    (version "0.23.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/smallstep/linkedca")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "16hv9zgh9rcz7bh3dbj0ksr8vbss86902an61bmpabvd9bz2j0pg"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/smallstep/linkedca"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc-cmd-protoc-gen-go-grpc
                             go-google-golang-org-grpc
                             go-github-com-stretchr-testify))
    (home-page "https://github.com/smallstep/linkedca")
    (synopsis "linkedca")
    (description
     "Support for Linked CAs using protocol buffers and @code{gRPC}.")
    (license license:asl2.0)))

(define-public go-github-com-smallstep-nosql
  (package
    (name "go-github-com-smallstep-nosql")
    (version "0.7.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/smallstep/nosql")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1npwlpk6vn4nr45pcd9m2y59ny6cawa3726hkc47kh7248j90yqv"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/smallstep/nosql"))
    (propagated-inputs (list go-go-etcd-io-bbolt
                             go-github-com-smallstep-assert
                             go-github-com-pkg-errors
                             go-github-com-jackc-pgx-v5
                             go-github-com-go-sql-driver-mysql
                             go-github-com-dgraph-io-badger-v2
                             go-github-com-dgraph-io-badger))
    (home-page "https://github.com/smallstep/nosql")
    (synopsis "NoSQL")
    (description "@code{NoSQL} is an abstraction layer for data persistence.")
    (license license:asl2.0)))

(define-public go-github-com-smallstep-pkcs7
  (package
    (name "go-github-com-smallstep-pkcs7")
    (version "0.2.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/smallstep/pkcs7")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0h8l7aabaxmgzixz4wn0k9f0v4hld86kzis6dpjz2zgf61czk7ri"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/smallstep/pkcs7"))
    (propagated-inputs (list go-golang-org-x-crypto))
    (home-page "https://github.com/smallstep/pkcs7")
    (synopsis "pkcs7")
    (description
     "Package pkcs7 implements parsing and generation of some PKCS#7 structures.")
    (license license:expat)))

(define-public go-github-com-smallstep-scep
  (package
    (name "go-github-com-smallstep-scep")
    (version "0.0.0-20250318231241-a25cabb69492")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/smallstep/scep")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "02al3d74c63hijhhn3k6p7srjaidb5miwd1qlmy3x7wp1vcx0wqa"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/smallstep/scep"))
    (propagated-inputs (list go-github-com-smallstep-pkcs7))
    (home-page "https://github.com/smallstep/scep")
    (synopsis "scep")
    (description
     "Package scep provides common functionality for encoding and decoding Simple
Certificate Enrolment Protocol pki messages as defined by
@@url{https://tools.ietf.org/html/draft-gutmann-scep-02,https://tools.ietf.org/html/draft-gutmann-scep-02}.")
    (license license:expat)))

(define-public go-github-com-smallstep-truststore
  (package
    (name "go-github-com-smallstep-truststore")
    (version "0.13.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/smallstep/truststore")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0alnwgg360yhidzklg18l0q4qn3nfggq6kjadpayk92ynq00bkqy"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/smallstep/truststore"))
    (propagated-inputs (list go-howett-net-plist))
    (home-page "https://github.com/smallstep/truststore")
    (synopsis "truststore")
    (description "Package to locally install development certificates.")
    (license license:asl2.0)))

(define-public go-github-com-soheilhy-cmux
  (package
    (name "go-github-com-soheilhy-cmux")
    (version "0.1.5")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/soheilhy/cmux")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "17zpa45xvmk3jl1qqx3lkqdyxs6hdczpv7hwg4s7x0895jx3zl5y"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/soheilhy/cmux"))
    (propagated-inputs (list go-golang-org-x-net))
    (home-page "https://github.com/soheilhy/cmux")
    (synopsis "cmux: Connection Mux")
    (description
     "Package cmux is a library to multiplex network connections based on their
payload.  Using cmux, you can serve different protocols from the same listener.")
    (license license:asl2.0)))

(define-public go-github-com-stackitcloud-stackit-sdk-go-core
  (package
    (name "go-github-com-stackitcloud-stackit-sdk-go-core")
    (version "0.17.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/stackitcloud/stackit-sdk-go")
             (commit (go-version->git-ref version
                                          #:subdir "core"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pam0kgpadyhwgr0lw29q5qv9b4yhqc8cwf97zy11aalz0xg46l2"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/stackitcloud/stackit-sdk-go/core"
      #:unpack-path "github.com/stackitcloud/stackit-sdk-go"))
    (propagated-inputs (list go-github-com-google-uuid
                             go-github-com-google-go-cmp
                             go-github-com-golang-jwt-jwt-v5 ;packaged
))
    (home-page "https://github.com/stackitcloud/stackit-sdk-go")
    (synopsis #f)
    (description #f)
    (license license:asl2.0)))

(define-public go-github-com-substrait-io-substrait
  (package
    (name "go-github-com-substrait-io-substrait")
    (version "0.74.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/substrait-io/substrait")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1rlysifkpc5nhkw20mihyb6sa30cd8aisyvv7r1x5q1l0l3mwhwh"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/substrait-io/substrait"))
    (propagated-inputs (list go-github-com-stretchr-testify))
    (home-page "https://github.com/substrait-io/substrait")
    (synopsis "Substrait")
    (description
     "Package substrait provides access to Substrait artifacts via embed.FS. Use
@code{substrait.GetSubstraitFS()} to retrieve the embed.FS object.")
    (license license:asl2.0)))

(define-public go-github-com-substrait-io-substrait-go
  (package
    (name "go-github-com-substrait-io-substrait-go")
    (version "1.2.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/substrait-io/substrait-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "032d2d5dgapv5dypp3h6m0zzm20x79ypljwc02fw5gcpbli3x2m7"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/substrait-io/substrait-go"))
    (propagated-inputs (list go-gopkg-in-yaml-v3
                             go-google-golang-org-protobuf
                             go-golang-org-x-exp
                             go-github-com-substrait-io-substrait
                             go-github-com-stretchr-testify
                             go-github-com-google-uuid
                             go-github-com-google-go-cmp
                             go-github-com-goccy-go-yaml
                             go-github-com-creasty-defaults
                             go-github-com-cockroachdb-apd-v3
                             go-github-com-alecthomas-participle-v2))
    (home-page "https://github.com/substrait-io/substrait-go")
    (synopsis "substrait-go")
    (description
     "Package substraitgo contains the experimental go bindings for substrait
(@@url{https://substrait.io,https://substrait.io}).")
    (license license:asl2.0)))

(define-public go-github-com-tailscale-tscert
  (package
    (name "go-github-com-tailscale-tscert")
    (version "0.0.0-20240608151842-d3f834017e53")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/tailscale/tscert")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0vxp9i18xcikm28c0fjadjj0i3qd29sf2617q9gf5hdhvfm7kypf"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/tailscale/tscert"))
    (propagated-inputs (list go-golang-org-x-sys go-github-com-mitchellh-go-ps ; packaged
                             go-github-com-microsoft-go-winio))
    (home-page "https://github.com/tailscale/tscert")
    (synopsis "tscert")
    (description
     "Package tscert fetches HTTPS certs from the local machine's Tailscale daemon
(tailscaled).")
    (license license:bsd-3)))

(define-public go-github-com-testcontainers-testcontainers-go
  (package
    (name "go-github-com-testcontainers-testcontainers-go")
    (version "0.38.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/testcontainers/testcontainers-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0y0x7qa25k17r5pzbnhy27lc8slja1x1783rgnx83m5frrsizjjz"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/testcontainers/testcontainers-go"))
    (propagated-inputs (list go-golang-org-x-sys
                             go-golang-org-x-crypto
                             go-github-com-stretchr-testify
                             go-github-com-shirou-gopsutil-v4
                             go-github-com-opencontainers-image-spec
                             go-github-com-moby-term
                             go-github-com-moby-patternmatcher
                             go-github-com-moby-go-archive
                             go-github-com-magiconair-properties
                             go-github-com-google-uuid
                             go-github-com-docker-go-connections
                             go-github-com-docker-docker
                             go-github-com-cpuguy83-dockercfg
                             go-github-com-containerd-platforms
                             go-github-com-containerd-errdefs ; packaged
                             go-github-com-cenkalti-backoff-v4
                             go-dario-cat-mergo))
    (home-page "https://github.com/testcontainers/testcontainers-go")
    (synopsis "Testcontainers")
    (description
     "is a Go package that makes it simple to create and clean up container-based
dependencies for automated integration/smoke tests.  The clean, easy-to-use API
enables developers to programmatically define containers that should be run as
part of a test and clean up those resources when the test is done.")
    (license license:expat)))

(define-public go-github-com-thales-e-security-pool
  (package
    (name "go-github-com-thales-e-security-pool")
    (version "0.0.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/thales-e-security/pool")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0fx32ka3p594nq7iarlrlslayp9w90xi6zhr8wfh0zcv83c9rja4"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/thales-e-security/pool"))
    (home-page "https://github.com/thales-e-security/pool")
    (synopsis #f)
    (description
     "Package pools provides functionality to manage and reuse resources like
connections.")
    (license license:asl2.0)))

(define-public go-github-com-thalesignite-crypto11
  (package
    (name "go-github-com-thalesignite-crypto11")
    (version "1.4.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/ThalesGroup/crypto11")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "05j55g1rpbigsv91256hcdry22j50aplf0sm5bw7dhh3yzgxq35j"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/ThalesIgnite/crypto11"))
    (propagated-inputs (list go-github-com-thales-e-security-pool
                             go-github-com-stretchr-testify
                             go-github-com-pkg-errors
                             go-github-com-miekg-pkcs11))
    (home-page "https://github.com/ThalesIgnite/crypto11")
    (synopsis "Crypto11")
    (description
     "Package crypto11 enables access to cryptographic keys from PKCS#11 using Go
crypto API.")
    (license license:expat)))

(define-public go-github-com-tmc-grpc-websocket-proxy
  (package
    (name "go-github-com-tmc-grpc-websocket-proxy")
    (version "0.0.0-20220101234140-673ab2c3ae75")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/tmc/grpc-websocket-proxy")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0299q3njcs6smrac6734xfjslpvwvsc8jyh5fq5849cdlp5a8290"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/tmc/grpc-websocket-proxy"))
    (propagated-inputs (list go-golang-org-x-net go-github-com-sirupsen-logrus
                             go-github-com-gorilla-websocket))
    (home-page "https://github.com/tmc/grpc-websocket-proxy")
    (synopsis "grpc-websocket-proxy")
    (description
     "Wrap your grpc-gateway mux with this helper to expose streaming endpoints over
websockets.")
    (license license:expat)))

(define-public go-github-com-tomasen-realip
  (package
    (name "go-github-com-tomasen-realip")
    (version "0.0.0-20180522021738-f0c99a92ddce")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/tomasen/realip")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1iz2cwks2ywwvvnbfmw3pfyz4ql7z0f8s9sdj6pzirpp75zar9nn"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/tomasen/realip"))
    (home-page "https://github.com/tomasen/realip")
    (synopsis "RealIP")
    (description
     "Go package that can be used to get client's real public IP, which usually useful
for logging HTTP server.")
    (license license:expat)))

(define-public go-github-com-transparency-dev-merkle
  (package
    (name "go-github-com-transparency-dev-merkle")
    (version "0.0.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/transparency-dev/merkle")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "03yzjzc8rmvxy8vy6jwgjyir8lplw19xikl0bvbiy5g3gy2wi7qy"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/transparency-dev/merkle"))
    (propagated-inputs (list go-github-com-google-go-cmp))
    (home-page "https://github.com/transparency-dev/merkle")
    (synopsis "Merkle")
    (description
     "Package merkle provides Merkle tree interfaces and implementation.")
    (license license:asl2.0)))

(define-public go-github-com-trivago-tgo
  (package
    (name "go-github-com-trivago-tgo")
    (version "1.0.7")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/trivago/tgo")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "04m3652p65i1gj6lgj1h4wrfx2kzralzwav7baasbh7sjni9nc2p"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/trivago/tgo"))
    (home-page "https://github.com/trivago/tgo")
    (synopsis "tGo")
    (description
     "Trivago go extensions and utilities.  This package contains utility functions
and structs that aid trivago with golang development across different projects.")
    (license license:asl2.0)))

(define-public go-github-com-vultr-govultr
  (package
    (name "go-github-com-vultr-govultr")
    (version "2.17.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/vultr/govultr")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0crl56lx2djxwgp784hzis7invyxmw6xy32p713ch95qafrddi61"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/vultr/govultr/v2"
      #:unpack-path "github.com/vultr/govultr"))
    (propagated-inputs (list go-github-com-hashicorp-go-retryablehttp
                             go-github-com-google-go-querystring))
    (home-page "https://github.com/vultr/govultr")
    (synopsis "GoVultr")
    (description
     "The official Vultr Go client - @code{GoVultr} allows you to interact with the
Vultr V2 API.")
    (license license:expat)))

(define-public go-github-com-xiang90-probing
  (package
    (name "go-github-com-xiang90-probing")
    (version "0.0.0-20221125231312-a49e3df8f510")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/xiang90/probing")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1w0pwy8fzxfqnsjzl28jy08di58kwag48vlj4yj9hls77qgbr9ar"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/xiang90/probing"))
    (home-page "https://github.com/xiang90/probing")
    (synopsis "Getting Started")
    (description "We first need to serve the probing HTTP handler.")
    (license license:expat)))

(define-public go-github-com-xitongsys-parquet-go
  (package
    (name "go-github-com-xitongsys-parquet-go")
    (version "1.6.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/xitongsys/parquet-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1lx8r5jz18m7g9n07aqwbwn3m3y44h3g8ijams7cz5m2zp32sqr5"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/xitongsys/parquet-go"))
    (propagated-inputs (list go-github-com-xitongsys-parquet-go-source
                             go-github-com-stretchr-testify
                             go-github-com-pierrec-lz4-v4
                             go-github-com-klauspost-compress
                             go-github-com-golang-snappy
                             go-github-com-aws-aws-sdk-go
                             go-github-com-apache-thrift
                             go-github-com-apache-arrow-go-arrow))
    (home-page "https://github.com/xitongsys/parquet-go")
    (synopsis "parquet-go")
    (description
     "parquet-go is a pure-go implementation of reading and writing the parquet format
file.")
    (license license:asl2.0)))

(define-public go-github-com-xitongsys-parquet-go-source
  (package
    (name "go-github-com-xitongsys-parquet-go-source")
    (version "0.0.0-20241021075129-b732d2ac9c9b")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/xitongsys/parquet-go-source")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "12f0gabhalxaz19fb3pkap6y6b592h6cwf3amz0bcy39ifc3w9il"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/xitongsys/parquet-go-source"))
    (propagated-inputs (list go-gocloud-dev
                        go-github-com-xitongsys-parquet-go
                        go-github-com-stretchr-testify
                        go-github-com-spf13-afero
                        go-github-com-pkg-errors
                        go-github-com-ncw-swift
                        go-github-com-minio-minio-go-v7
                        go-github-com-golang-mock
                        go-github-com-colinmarc-hdfs-v2
                        go-github-com-bobg-gcsobj
                        go-github-com-aws-aws-sdk-go-v2-service-s3
                        go-github-com-aws-aws-sdk-go-v2-feature-s3-manager
                        go-github-com-aws-aws-sdk-go-v2-config
                        go-github-com-aws-aws-sdk-go-v2
                        go-github-com-aws-aws-sdk-go
                        go-github-com-azure-azure-sdk-for-go-sdk-storage-azblob
                        go-github-com-azure-azure-sdk-for-go-sdk-azcore
                        go-cloud-google-com-go-storage))
    (home-page "https://github.com/xitongsys/parquet-go-source")
    (synopsis "parquet-go-source")
    (description
     "parquet-go-source is a source provider for parquet-go.  Your source must
implement @code{ParquetFile} interface:.")
    (license license:asl2.0)))

(define-public go-github-com-xsam-otelsql
  (package
    (name "go-github-com-xsam-otelsql")
    (version "0.39.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/XSAM/otelsql")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0gdl563p9z6n6zmg4am7bpyqzpraskfklnqcb179hsjyj873wqrj"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/XSAM/otelsql"))
    (propagated-inputs (list go-go-opentelemetry-io-otel-trace
                             go-go-opentelemetry-io-otel-sdk-metric
                             go-go-opentelemetry-io-otel-sdk
                             go-go-opentelemetry-io-otel-metric
                             go-go-opentelemetry-io-otel
                             go-github-com-stretchr-testify))
    (home-page "https://github.com/XSAM/otelsql")
    (synopsis "otelsql")
    (description "Package otelsql instruments the database/sql package.")
    (license license:asl2.0)))

(define-public go-github-com-yuin-goldmark-highlighting
  (package
    (name "go-github-com-yuin-goldmark-highlighting")
    (version "2.0.0-20230729083705-37449abec8cc")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/yuin/goldmark-highlighting")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "163jbi8si9qxcabzni39qypj495y48rabkkchc03ay68p19v160y"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/yuin/goldmark-highlighting/v2"
      #:unpack-path "github.com/yuin/goldmark-highlighting"))
    (propagated-inputs (list go-github-com-yuin-goldmark
                             go-github-com-alecthomas-chroma-v2))
    (home-page "https://github.com/yuin/goldmark-highlighting")
    (synopsis "goldmark-highlighting")
    (description
     "package highlighting is a extension for the
goldmark(@@url{http://github.com/yuin/goldmark,http://github.com/yuin/goldmark}).")
    (license license:expat)))

(define-public go-github-com-zeebo-xxh3
  (package
    (name "go-github-com-zeebo-xxh3")
    (version "1.0.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/zeebo/xxh3")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1gy666r5v1d1n2cfig9plhyp7z09f06k6mr5lrf0mk6psk6bnwgi"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/zeebo/xxh3"))
    (propagated-inputs (list go-github-com-zeebo-assert
                             go-github-com-klauspost-cpuid-v2))
    (home-page "https://github.com/zeebo/xxh3")
    (synopsis "XXH3")
    (description
     "This package is a port of the
@@url{https://github.com/Cyan4973/@code{xxHash,xxh3}} library to Go.")
    (license license:bsd-2)))

(define-public go-go-einride-tech-aip
  (package
    (name "go-go-einride-tech-aip")
    (version "0.73.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/einride/aip-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1y7mr1nv9crg70v1fa5r6qcmabzxz1d7n6f7jzc3ppns2v6ddan9"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "go.einride.tech/aip"))
    (propagated-inputs (list go-gotest-tools-v3
                             go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-github-com-stoewer-go-strcase
                             go-github-com-google-uuid))
    (home-page "https://go.einride.tech/aip")
    (synopsis "AIP Go")
    (description
     "Package aip provides primitives for implementing API Improvement Proposals
(AIP).")
    (license license:expat)))

(define-public go-go-etcd-io-etcd
  (package
    (name "go-go-etcd-io-etcd")
    (version "3.6.4")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/etcd-io/etcd")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1snfkli587r6frpbf3g7jxwqrpqqfn3jhmn6khan63qflz9zxp52"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "go.etcd.io/etcd/v3"
      #:unpack-path "go.etcd.io/etcd"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-golang-org-x-time
                             go-go-uber-org-zap
                             go-go-etcd-io-raft-v3
                             go-go-etcd-io-bbolt
                             go-github-com-stretchr-testify
                             go-github-com-spf13-cobra
                             go-github-com-dustin-go-humanize
                             go-github-com-coreos-go-semver
                             go-github-com-cheggaaa-pb-v3
                             go-github-com-bgentry-speakeasy))
    (home-page "https://go.etcd.io/etcd")
    (synopsis "etcd")
    (description
     "@@strong{Note}: The @@code{main} branch may be in an during development.  For
stable versions, see @@url{https://github.com/etcd-io/etcd/releases,releases}.")
    (license license:asl2.0)))

(define-public go-go-etcd-io-etcd-client
  (package
    (name "go-go-etcd-io-etcd-client")
    (version "3.6.4")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/etcd-io/etcd")
             (commit (go-version->git-ref version
                                          #:subdir "client"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1snfkli587r6frpbf3g7jxwqrpqqfn3jhmn6khan63qflz9zxp52"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "go.etcd.io/etcd/client/v3"
      #:unpack-path "go.etcd.io/etcd"))
    (propagated-inputs (list go-sigs-k8s-io-yaml
                        go-google-golang-org-grpc
                        go-go-uber-org-zap
                        go-github-com-stretchr-testify
                        go-github-com-prometheus-client-golang ; packaged

                        go-github-com-grpc-ecosystem-go-grpc-middleware-providers-prometheus
                        go-github-com-dustin-go-humanize
                        go-github-com-coreos-go-semver))
    (home-page "https://go.etcd.io/etcd")
    (synopsis "etcd/client/v3")
    (description
     "Package clientv3 implements the official Go etcd client for v3.")
    (license license:asl2.0)))

(define-public go-go-etcd-io-etcd-etcdctl
  (package
    (name "go-go-etcd-io-etcd-etcdctl")
    (version "3.6.4")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/etcd-io/etcd")
             (commit (go-version->git-ref version
                                          #:subdir "etcdctl"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1snfkli587r6frpbf3g7jxwqrpqqfn3jhmn6khan63qflz9zxp52"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "go.etcd.io/etcd/etcdctl/v3"
      #:unpack-path "go.etcd.io/etcd"))
    (propagated-inputs (list go-google-golang-org-grpc
                             go-golang-org-x-time
                             go-go-uber-org-zap
                             go-github-com-stretchr-testify
                             go-github-com-spf13-pflag
                             go-github-com-spf13-cobra
                             go-github-com-olekukonko-tablewriter
                             go-github-com-dustin-go-humanize
                             go-github-com-cheggaaa-pb-v3
                             go-github-com-bgentry-speakeasy))
    (home-page "https://go.etcd.io/etcd")
    (synopsis "etcdctl")
    (description "etcdctl is a command line application that controls etcd.")
    (license license:asl2.0)))

(define-public go-go-etcd-io-etcd-server
  (package
    (name "go-go-etcd-io-etcd-server")
    (version "3.6.4")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/etcd-io/etcd")
             (commit (go-version->git-ref version
                                          #:subdir "server"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1snfkli587r6frpbf3g7jxwqrpqqfn3jhmn6khan63qflz9zxp52"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "go.etcd.io/etcd/server/v3"
      #:unpack-path "go.etcd.io/etcd"))
    (propagated-inputs (list go-sigs-k8s-io-yaml
                        go-sigs-k8s-io-json
                        go-gopkg-in-natefinch-lumberjack-v2
                        go-google-golang-org-protobuf
                        go-google-golang-org-grpc
                        go-google-golang-org-genproto-googleapis-api
                        go-golang-org-x-time
                        go-golang-org-x-net
                        go-golang-org-x-crypto
                        go-go-uber-org-zap
                        go-go-opentelemetry-io-otel-sdk
                        go-go-opentelemetry-io-otel-exporters-otlp-otlptrace-otlptracegrpc
                        go-go-opentelemetry-io-otel
                        go-go-opentelemetry-io-contrib-instrumentation-google-golang-org-grpc-otelgrpc
                        go-go-etcd-io-raft-v3
                        go-go-etcd-io-bbolt
                        go-github-com-xiang90-probing
                        go-github-com-tmc-grpc-websocket-proxy
                        go-github-com-stretchr-testify
                        go-github-com-spf13-cobra
                        go-github-com-soheilhy-cmux
                        go-github-com-prometheus-client-model
                        go-github-com-prometheus-client-golang ; packaged

                        go-github-com-jonboulle-clockwork
                        go-github-com-grpc-ecosystem-grpc-gateway-v2
                        go-github-com-grpc-ecosystem-go-grpc-middleware-providers-prometheus
                        go-github-com-grpc-ecosystem-go-grpc-middleware
                        go-github-com-google-go-cmp
                        go-github-com-google-btree
                        go-github-com-golang-protobuf
                        go-github-com-golang-groupcache
                        go-github-com-golang-jwt-jwt-v5 ;packaged

                        go-github-com-gogo-protobuf
                        go-github-com-dustin-go-humanize
                        go-github-com-coreos-go-systemd-v22
                        go-github-com-coreos-go-semver))
    (home-page "https://go.etcd.io/etcd")
    (synopsis #f)
    (description
     "Package main is a simple wrapper of the real etcd entrypoint package (located at
go.etcd.io/etcd/etcdmain) to ensure that etcd is still \"go getable\"; e.g. `go
get go.etcd.io/etcd` works as expected and builds a binary in $GOBIN/etcd.")
    (license license:asl2.0)))

(define-public go-go-etcd-io-raft
  (package
    (name "go-go-etcd-io-raft")
    (version "3.6.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/etcd-io/raft")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "18d9l8739irzgl0860qrrmdn3aqhc92lhc9brv8lkq7n59gxqd6i"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "go.etcd.io/raft/v3"
      #:unpack-path "go.etcd.io/raft"))
    (propagated-inputs (list go-github-com-stretchr-testify
                             go-github-com-golang-protobuf
                             go-github-com-gogo-protobuf
                             go-github-com-cockroachdb-datadriven))
    (home-page "https://go.etcd.io/raft")
    (synopsis "Raft library")
    (description
     "Package raft sends and receives messages in the Protocol Buffer format defined
in the raftpb package.")
    (license license:asl2.0)))

(define-public go-go-opentelemetry-io-collector-component
  (package
    (name "go-go-opentelemetry-io-collector-component")
    (version "1.38.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/open-telemetry/opentelemetry-collector")
             (commit (go-version->git-ref version
                                          #:subdir "component"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1wc2lxyis1y683yfdgaajmz2mzhnxyxbcvypc9il18d7zfp0rk5a"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "go.opentelemetry.io/collector/component"
      #:unpack-path "go.opentelemetry.io/collector"))
    (propagated-inputs (list go-go-uber-org-goleak
                             go-github-com-stretchr-testify))
    (home-page "https://go.opentelemetry.io/collector")
    (synopsis #f)
    (description
     "Package component outlines the abstraction of components within the
@code{OpenTelemetry} Collector.  It provides details on the component lifecycle
as well as defining the interface that components must fulfill.")
    (license license:asl2.0)))

(define-public go-go-opentelemetry-io-collector-component-componenttest
  (package
    (name "go-go-opentelemetry-io-collector-component-componenttest")
    (version "0.132.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/open-telemetry/opentelemetry-collector")
             (commit (go-version->git-ref version
                                          #:subdir "component/componenttest"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1wc2lxyis1y683yfdgaajmz2mzhnxyxbcvypc9il18d7zfp0rk5a"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "go.opentelemetry.io/collector/component/componenttest"
      #:unpack-path "go.opentelemetry.io/collector"))
    (propagated-inputs (list go-go-uber-org-zap
                             go-go-uber-org-multierr
                             go-go-uber-org-goleak
                             go-go-opentelemetry-io-otel-trace
                             go-go-opentelemetry-io-otel-sdk-metric
                             go-go-opentelemetry-io-otel-sdk
                             go-go-opentelemetry-io-otel-metric
                             go-github-com-stretchr-testify))
    (home-page "https://go.opentelemetry.io/collector")
    (synopsis #f)
    (description
     "Package componenttest define types and functions used to help test packages
implementing the component package interfaces.")
    (license license:asl2.0)))

(define-public go-go-opentelemetry-io-collector-confmap
  (package
    (name "go-go-opentelemetry-io-collector-confmap")
    (version "1.38.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/open-telemetry/opentelemetry-collector")
             (commit (go-version->git-ref version
                                          #:subdir "confmap"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1wc2lxyis1y683yfdgaajmz2mzhnxyxbcvypc9il18d7zfp0rk5a"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "go.opentelemetry.io/collector/confmap"
      #:unpack-path "go.opentelemetry.io/collector"))
    (propagated-inputs (list go-go-yaml-in-yaml-v3 ; packaged
                             go-go-uber-org-zap
                             go-go-uber-org-multierr
                             go-go-uber-org-goleak
                             go-github-com-stretchr-testify
                             go-github-com-knadh-koanf-v2
                             go-github-com-knadh-koanf-providers-confmap
                             go-github-com-knadh-koanf-maps
                             go-github-com-gobwas-glob
                             go-github-com-go-viper-mapstructure-v2))
    (home-page "https://go.opentelemetry.io/collector")
    (synopsis "Confmap")
    (description
     "The
@@url{https://github.com/open-telemetry/opentelemetry-collector/blob/confmap/v1.38.0/confmap/confmap.go,Conf}
represents the raw configuration for a service (e.g. @code{OpenTelemetry}
Collector).")
    (license license:asl2.0)))

(define-public go-go-opentelemetry-io-collector-confmap-xconfmap
  (package
    (name "go-go-opentelemetry-io-collector-confmap-xconfmap")
    (version "0.132.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/open-telemetry/opentelemetry-collector")
             (commit (go-version->git-ref version
                                          #:subdir "confmap/xconfmap"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1wc2lxyis1y683yfdgaajmz2mzhnxyxbcvypc9il18d7zfp0rk5a"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "go.opentelemetry.io/collector/confmap/xconfmap"
      #:unpack-path "go.opentelemetry.io/collector"))
    (propagated-inputs (list go-github-com-stretchr-testify))
    (home-page "https://go.opentelemetry.io/collector")
    (synopsis #f)
    (description #f)
    (license license:asl2.0)))

(define-public go-go-opentelemetry-io-collector-consumer
  (package
    (name "go-go-opentelemetry-io-collector-consumer")
    (version "1.38.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/open-telemetry/opentelemetry-collector")
             (commit (go-version->git-ref version
                                          #:subdir "consumer"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1wc2lxyis1y683yfdgaajmz2mzhnxyxbcvypc9il18d7zfp0rk5a"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "go.opentelemetry.io/collector/consumer"
      #:unpack-path "go.opentelemetry.io/collector"))
    (propagated-inputs (list go-go-uber-org-goleak
                             go-github-com-stretchr-testify))
    (home-page "https://go.opentelemetry.io/collector")
    (synopsis #f)
    (description
     "Package consumer contains interfaces that receive and process data.")
    (license license:asl2.0)))

(define-public go-go-opentelemetry-io-collector-consumer-consumertest
  (package
    (name "go-go-opentelemetry-io-collector-consumer-consumertest")
    (version "0.132.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/open-telemetry/opentelemetry-collector")
             (commit (go-version->git-ref version
                                          #:subdir "consumer/consumertest"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1wc2lxyis1y683yfdgaajmz2mzhnxyxbcvypc9il18d7zfp0rk5a"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "go.opentelemetry.io/collector/consumer/consumertest"
      #:unpack-path "go.opentelemetry.io/collector"))
    (propagated-inputs (list go-go-uber-org-goleak
                             go-github-com-stretchr-testify))
    (home-page "https://go.opentelemetry.io/collector")
    (synopsis #f)
    (description
     "Package consumertest defines types and functions used to help test packages
implementing the consumer package interfaces.")
    (license license:asl2.0)))

(define-public go-go-opentelemetry-io-collector-pdata
  (package
    (name "go-go-opentelemetry-io-collector-pdata")
    (version "1.38.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/open-telemetry/opentelemetry-collector")
             (commit (go-version->git-ref version
                                          #:subdir "pdata"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1wc2lxyis1y683yfdgaajmz2mzhnxyxbcvypc9il18d7zfp0rk5a"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "go.opentelemetry.io/collector/pdata"
      #:unpack-path "go.opentelemetry.io/collector"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-go-uber-org-multierr
                             go-go-uber-org-goleak
                             go-github-com-stretchr-testify
                             go-github-com-json-iterator-go
                             go-github-com-gogo-protobuf))
    (home-page "https://go.opentelemetry.io/collector")
    (synopsis "Pipeline data (pdata)")
    (description
     "Package pdata provides the data model definitions for all supported pipeline
data.")
    (license license:asl2.0)))

(define-public go-go-opentelemetry-io-collector-processor
  (package
    (name "go-go-opentelemetry-io-collector-processor")
    (version "1.38.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/open-telemetry/opentelemetry-collector")
             (commit (go-version->git-ref version
                                          #:subdir "processor"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1wc2lxyis1y683yfdgaajmz2mzhnxyxbcvypc9il18d7zfp0rk5a"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "go.opentelemetry.io/collector/processor"
      #:unpack-path "go.opentelemetry.io/collector"))
    (propagated-inputs (list go-go-uber-org-goleak
                             go-github-com-stretchr-testify))
    (home-page "https://go.opentelemetry.io/collector")
    (synopsis "General Information")
    (description
     "Processors are used at various stages of a pipeline.  Generally, a processor
pre-processes data before it is exported (e.g. modify attributes or sample).")
    (license license:asl2.0)))

(define-public go-go-opentelemetry-io-collector-processor-processortest
  (package
    (name "go-go-opentelemetry-io-collector-processor-processortest")
    (version "0.132.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/open-telemetry/opentelemetry-collector")
             (commit (go-version->git-ref version
                                          #:subdir "processor/processortest"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1wc2lxyis1y683yfdgaajmz2mzhnxyxbcvypc9il18d7zfp0rk5a"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "go.opentelemetry.io/collector/processor/processortest"
      #:unpack-path "go.opentelemetry.io/collector"))
    (propagated-inputs (list go-go-uber-org-goleak
                             go-github-com-stretchr-testify))
    (home-page "https://go.opentelemetry.io/collector")
    (synopsis #f)
    (description #f)
    (license license:asl2.0)))

(define-public go-go-opentelemetry-io-collector-semconv
  (package
    (name "go-go-opentelemetry-io-collector-semconv")
    (version "0.128.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/open-telemetry/opentelemetry-collector")
             (commit (go-version->git-ref version
                                          #:subdir "semconv"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1p06k1lvxz6llgkdbpsrbdivzmxyh5cs9k2vm227isfbgp3j2k40"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "go.opentelemetry.io/collector/semconv"
      #:unpack-path "go.opentelemetry.io/collector"))
    (propagated-inputs (list go-go-uber-org-goleak
                             go-github-com-stretchr-testify
                             go-github-com-hashicorp-go-version))
    (home-page "https://go.opentelemetry.io/collector")
    (synopsis "Semantic Convention Constants")
    (description
     "This package contains constants representing the @code{OpenTelemetry} semantic
conventions.  They are automatically generated from definitions in the
specification.")
    (license license:asl2.0)))

(define-public go-go-opentelemetry-io-contrib-detectors-aws-ec2
  (package
    (name "go-go-opentelemetry-io-contrib-detectors-aws-ec2")
    (version "1.37.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/open-telemetry/opentelemetry-go-contrib")
             (commit (go-version->git-ref version
                                          #:subdir "detectors/aws/ec2"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "06h5rvvji92dj25vb37s9vmvp5fignbp7zbigbdhbql16gfhp225"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "go.opentelemetry.io/contrib/detectors/aws/ec2"
      #:unpack-path "go.opentelemetry.io/contrib"))
    (propagated-inputs (list go-go-opentelemetry-io-otel-sdk
                             go-go-opentelemetry-io-otel
                             go-github-com-stretchr-testify
                             go-github-com-aws-aws-sdk-go))
    (home-page "https://go.opentelemetry.io/contrib")
    (synopsis #f)
    (description "Package ec2 provides a resource detector for EC2 instances.")
    (license license:asl2.0)))

(define-public go-go-opentelemetry-io-contrib-detectors-gcp
  (package
    (name "go-go-opentelemetry-io-contrib-detectors-gcp")
    (version "1.37.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/open-telemetry/opentelemetry-go-contrib")
             (commit (go-version->git-ref version
                                          #:subdir "detectors/gcp"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "06h5rvvji92dj25vb37s9vmvp5fignbp7zbigbdhbql16gfhp225"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "go.opentelemetry.io/contrib/detectors/gcp"
      #:unpack-path "go.opentelemetry.io/contrib"))
    (propagated-inputs (list go-go-opentelemetry-io-otel-sdk
                        go-go-opentelemetry-io-otel
                        go-github-com-stretchr-testify
                        go-github-com-google-go-cmp
                        go-github-com-googlecloudplatform-opentelemetry-operations-go-detectors-gcp
                        go-cloud-google-com-go-compute-metadata))
    (home-page "https://go.opentelemetry.io/contrib")
    (synopsis "GCP Resource detector")
    (description
     "Package gcp provides a resource detector for GCP Cloud Function.")
    (license license:asl2.0)))

(define-public go-go-opentelemetry-io-contrib-instrumentation-google-golang-org-grpc-otelgrpc
  (package
    (name
     "go-go-opentelemetry-io-contrib-instrumentation-google-golang-org-grpc-otelgrpc")
    (version "0.62.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/open-telemetry/opentelemetry-go-contrib")
             (commit (go-version->git-ref version
                      #:subdir
                      "instrumentation/google.golang.org/grpc/otelgrpc"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "06h5rvvji92dj25vb37s9vmvp5fignbp7zbigbdhbql16gfhp225"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path
      "go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc"
      #:unpack-path "go.opentelemetry.io/contrib"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-go-uber-org-goleak
                             go-go-opentelemetry-io-otel-trace
                             go-go-opentelemetry-io-otel-sdk-metric
                             go-go-opentelemetry-io-otel-sdk
                             go-go-opentelemetry-io-otel-metric
                             go-go-opentelemetry-io-otel
                             go-github-com-stretchr-testify))
    (home-page "https://go.opentelemetry.io/contrib")
    (synopsis #f)
    (description "Package otelgrpc is the instrumentation library for
@@url{/google.golang.org/grpc,google.golang.org/grpc}.")
    (license license:asl2.0)))

(define-public go-go-opentelemetry-io-contrib-instrumentation-net-http-httptrace-otelhttptrace
  (package
    (name
     "go-go-opentelemetry-io-contrib-instrumentation-net-http-httptrace-otelhttptrace")
    (version "0.62.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/open-telemetry/opentelemetry-go-contrib")
             (commit (go-version->git-ref version
                      #:subdir
                      "instrumentation/net/http/httptrace/otelhttptrace"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "06h5rvvji92dj25vb37s9vmvp5fignbp7zbigbdhbql16gfhp225"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path
      "go.opentelemetry.io/contrib/instrumentation/net/http/httptrace/otelhttptrace"
      #:unpack-path "go.opentelemetry.io/contrib"))
    (propagated-inputs (list go-go-opentelemetry-io-otel-trace
                             go-go-opentelemetry-io-otel-sdk-metric
                             go-go-opentelemetry-io-otel-sdk
                             go-go-opentelemetry-io-otel-metric
                             go-go-opentelemetry-io-otel
                             go-github-com-stretchr-testify
                             go-github-com-google-go-cmp))
    (home-page "https://go.opentelemetry.io/contrib")
    (synopsis #f)
    (description "Package otelhttptrace provides instrumentation for the
@@url{/net/http/httptrace,net/http/httptrace} package.")
    (license license:asl2.0)))

(define-public go-go-opentelemetry-io-otel-exporters-otlp-otlpmetric-otlpmetricgrpc
  (package
    (name
     "go-go-opentelemetry-io-otel-exporters-otlp-otlpmetric-otlpmetricgrpc")
    (version "1.37.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/open-telemetry/opentelemetry-go")
             (commit (go-version->git-ref version
                      #:subdir "exporters/otlp/otlpmetric/otlpmetricgrpc"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1a0hrsln80i4x8x3mq2w79ivc3j446wwm0486ag7mpzzzya7bzh4"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path
      "go.opentelemetry.io/otel/exporters/otlp/otlpmetric/otlpmetricgrpc"
      #:unpack-path "go.opentelemetry.io/otel"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-go-opentelemetry-io-proto-otlp
                             go-github-com-stretchr-testify
                             go-github-com-google-go-cmp
                             go-github-com-cenkalti-backoff-v5))
    (home-page "https://go.opentelemetry.io/otel")
    (synopsis "OTLP Metric gRPC Exporter")
    (description
     "Package otlpmetricgrpc provides an OTLP metrics exporter using @code{gRPC}.  By
default the telemetry is sent to
@@url{https://localhost:4317,https://localhost:4317}.")
    (license license:asl2.0)))

(define-public go-go-opentelemetry-io-otel-exporters-stdout-stdoutmetric
  (package
    (name "go-go-opentelemetry-io-otel-exporters-stdout-stdoutmetric")
    (version "1.37.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/open-telemetry/opentelemetry-go")
             (commit (go-version->git-ref version
                                          #:subdir
                                          "exporters/stdout/stdoutmetric"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1a0hrsln80i4x8x3mq2w79ivc3j446wwm0486ag7mpzzzya7bzh4"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "go.opentelemetry.io/otel/exporters/stdout/stdoutmetric"
      #:unpack-path "go.opentelemetry.io/otel"))
    (propagated-inputs (list go-github-com-stretchr-testify))
    (home-page "https://go.opentelemetry.io/otel")
    (synopsis "STDOUT Metric Exporter")
    (description
     "Package stdoutmetric provides an exporter for @code{OpenTelemetry} metric
telemetry.")
    (license license:asl2.0)))

(define-public go-go-shabbyrobe-org-gocovmerge
  (package
    (name "go-go-shabbyrobe-org-gocovmerge")
    (version "0.0.0-20230507111327-fa4f82cfbf4d")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://git.sr.ht/~shabbyrobe/gocovmerge")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0sbr6i1m5hjbnlfad8cl8w30949r02c66l85hcmyyd9ka30mqr23"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "go.shabbyrobe.org/gocovmerge"))
    (propagated-inputs (list go-golang-org-x-tools))
    (home-page "https://go.shabbyrobe.org/gocovmerge")
    (synopsis "gocovmerge")
    (description
     "Package gocovmerge takes the results from multiple `go test -coverprofile` runs
and merges them into one profile.")
    (license license:bsd-2)))

(define-public go-go-step-sm-crypto
  (package
    (name "go-go-step-sm-crypto")
    (version "0.70.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/smallstep/crypto")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1dqr4brda3wmzanx8cvyidqwhdrn2kxxfccbsvdz9l5bz6c275vv"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "go.step.sm/crypto"))
    (propagated-inputs (list go-modernc-org-sqlite
                        go-google-golang-org-protobuf
                        go-google-golang-org-grpc
                        go-google-golang-org-api
                        go-golang-org-x-term
                        go-golang-org-x-sys
                        go-golang-org-x-net
                        go-golang-org-x-crypto
                        go-go-uber-org-mock
                        go-github-com-stretchr-testify
                        go-github-com-smallstep-go-attestation
                        go-github-com-schollz-jsonstore
                        go-github-com-pkg-errors
                        go-github-com-peterbourgon-diskv-v3
                        go-github-com-googleapis-gax-go-v2
                        go-github-com-google-go-tpm-tools
                        go-github-com-google-go-tpm
                        go-github-com-go-piv-piv-go-v2
                        go-github-com-go-jose-go-jose-v3
                        go-github-com-aws-aws-sdk-go-v2-service-kms
                        go-github-com-aws-aws-sdk-go-v2-config
                        go-github-com-thalesignite-crypto11
                        go-github-com-masterminds-sprig-v3
                        go-github-com-azure-azure-sdk-for-go-sdk-security-keyvault-azkeys
                        go-github-com-azure-azure-sdk-for-go-sdk-azidentity
                        go-github-com-azure-azure-sdk-for-go-sdk-azcore
                        go-filippo-io-edwards25519
                        go-cloud-google-com-go-kms))
    (home-page "https://go.step.sm/crypto")
    (synopsis "crypto")
    (description "Crypto is a collection of packages used in
@@url{https://smallstep.com,smallstep} products.  See:.")
    (license license:asl2.0)))

(define-public go-gocloud-dev
  (package
    (name "go-gocloud-dev")
    (version "0.43.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/google/go-cloud")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "03sf1ih9q2xs45hrh5mff517ylcgzgah2q4ki3w7pbymfwgwr0cm"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "gocloud.dev"))
    (propagated-inputs (list go-google-golang-org-protobuf
                        go-google-golang-org-grpc
                        go-google-golang-org-genproto
                        go-google-golang-org-api
                        go-golang-org-x-xerrors
                        go-golang-org-x-sync
                        go-golang-org-x-oauth2
                        go-golang-org-x-net
                        go-golang-org-x-crypto
                        go-go-opentelemetry-io-otel-trace
                        go-go-opentelemetry-io-otel-sdk-metric
                        go-go-opentelemetry-io-otel-sdk
                        go-go-opentelemetry-io-otel-metric
                        go-go-opentelemetry-io-otel-exporters-otlp-otlptrace-otlptracegrpc
                        go-go-opentelemetry-io-otel-exporters-otlp-otlpmetric-otlpmetricgrpc
                        go-go-opentelemetry-io-otel
                        go-go-opentelemetry-io-contrib-propagators-aws
                        go-go-opentelemetry-io-contrib-instrumentation-net-http-otelhttp
                        go-go-opentelemetry-io-contrib-detectors-gcp
                        go-go-opentelemetry-io-contrib-detectors-aws-ec2
                        go-github-com-lib-pq
                        go-github-com-googleapis-gax-go-v2
                        go-github-com-google-wire
                        go-github-com-google-uuid
                        go-github-com-google-go-replayers-httpreplay
                        go-github-com-google-go-replayers-grpcreplay
                        go-github-com-google-go-cmp
                        go-github-com-go-sql-driver-mysql
                        go-github-com-fsnotify-fsnotify
                        go-github-com-aws-smithy-go
                        go-github-com-aws-aws-sdk-go-v2-service-ssm
                        go-github-com-aws-aws-sdk-go-v2-service-sqs
                        go-github-com-aws-aws-sdk-go-v2-service-sns
                        go-github-com-aws-aws-sdk-go-v2-service-secretsmanager
                        go-github-com-aws-aws-sdk-go-v2-service-s3
                        go-github-com-aws-aws-sdk-go-v2-service-kms
                        go-github-com-aws-aws-sdk-go-v2-service-dynamodb
                        go-github-com-aws-aws-sdk-go-v2-feature-s3-manager
                        go-github-com-aws-aws-sdk-go-v2-feature-dynamodb-expression
                        go-github-com-aws-aws-sdk-go-v2-feature-dynamodb-attributevalue
                        go-github-com-aws-aws-sdk-go-v2-credentials
                        go-github-com-aws-aws-sdk-go-v2-config
                        go-github-com-aws-aws-sdk-go-v2
                        go-github-com-aws-aws-sdk-go
                        go-github-com-xsam-otelsql
                        go-github-com-googlecloudplatform-opentelemetry-operations-go-propagator
                        go-github-com-googlecloudplatform-opentelemetry-operations-go-exporter-trace
                        go-github-com-googlecloudplatform-opentelemetry-operations-go-exporter-metric
                        go-github-com-googlecloudplatform-cloudsql-proxy
                        go-github-com-azure-go-autorest-autorest-to
                        go-github-com-azure-go-amqp
                        go-github-com-azure-azure-sdk-for-go-sdk-storage-azblob
                        go-github-com-azure-azure-sdk-for-go-sdk-messaging-azservicebus
                        go-github-com-azure-azure-sdk-for-go-sdk-keyvault-azkeys
                        go-github-com-azure-azure-sdk-for-go-sdk-azidentity
                        go-github-com-azure-azure-sdk-for-go-sdk-azcore
                        go-github-com-azure-azure-amqp-common-go-v3
                        go-cloud-google-com-go-storage
                        go-cloud-google-com-go-secretmanager
                        go-cloud-google-com-go-pubsub
                        go-cloud-google-com-go-kms
                        go-cloud-google-com-go-iam
                        go-cloud-google-com-go-firestore
                        go-cloud-google-com-go-compute-metadata))
    (home-page "https://gocloud.dev")
    (synopsis "The Go Cloud Development Kit (Go CDK)")
    (description
     "Package cloud contains a library and tools for open cloud development in Go.")
    (license license:asl2.0)))

(define-public go-golang-org-x-crypto-x509roots-fallback
  (package
    (name "go-golang-org-x-crypto-x509roots-fallback")
    (version "0.0.0-20250819201203-a4d1237429d6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://go.googlesource.com/crypto")
             (commit (go-version->git-ref version
                                          #:subdir "x509roots/fallback"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "02205b8wza60njc565g8p7ppdwmd4id3wr4nxv7k0knjx8952yaa"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "golang.org/x/crypto/x509roots/fallback"
      #:unpack-path "golang.org/x/crypto"))
    (home-page "https://golang.org/x/crypto")
    (synopsis #f)
    (description
     "Package fallback embeds a set of fallback X.509 trusted roots in the application
by automatically invoking
@@url{/crypto/x509#@code{SetFallbackRoots,x509.SetFallbackRoots}}.  This allows
the application to work correctly even if the operating system does not provide
a verifier or system roots pool.")
    (license license:bsd-3)))

(define-public go-golang-zx2c4-com-wintun
  (package
    (name "go-golang-zx2c4-com-wintun")
    (version "0.0.0-20230126152724-0fa3db229ce2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://git.zx2c4.com/wintun-go")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "16ha3dpwq1bpbxrqfyb2pw09wn25iq27i9p58iaym7m768v0ncvj"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "golang.zx2c4.com/wintun"))
    (propagated-inputs (list go-golang-org-x-sys))
    (home-page "https://golang.zx2c4.com/wintun")
    (synopsis "wintun-go")
    (description
     "This contains bindings to use @@url{https://www.wintun.net,Wintun} from Go.")
    (license license:expat)))

(define-public go-golang-zx2c4-com-wireguard-windows
  (package
    (name "go-golang-zx2c4-com-wireguard-windows")
    (version "0.5.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://git.zx2c4.com/wireguard-windows")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0grhhgmnllgznk3zjma88kmcsm22fs7rag9xa24kskh1axj24jh3"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "golang.zx2c4.com/wireguard/windows"))
    (propagated-inputs (list go-golang-zx2c4-com-wireguard-windows
                             go-golang-zx2c4-com-wireguard-windows
                             go-golang-org-x-text
                             go-golang-org-x-sys
                             go-golang-org-x-net
                             go-golang-org-x-crypto))
    (home-page "https://golang.zx2c4.com/wireguard/windows")
    (synopsis "for Windows")
    (description
     "This is a fully-featured @code{WireGuard} client for Windows that uses
@@url{https://git.zx2c4.com/wireguard-nt/about/,@code{WireGuardNT}}.  It is the
only official and recommended way of using @code{WireGuard} on Windows.")
    (license license:expat)))

(define-public go-google-golang-org-api
  (package
    (name "go-google-golang-org-api")
    (version "0.248.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-api-go-client")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0ywnb5dz6slvv9n7xhsvcchinprba7alh7wzrhgcj7j851731b8l"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "google.golang.org/api"))
    (propagated-inputs (list go-google-golang-org-protobuf
                        go-google-golang-org-grpc
                        go-google-golang-org-genproto-googleapis-rpc
                        go-google-golang-org-genproto-googleapis-bytestream
                        go-golang-org-x-time
                        go-golang-org-x-sync
                        go-golang-org-x-oauth2
                        go-golang-org-x-net
                        go-go-opentelemetry-io-contrib-instrumentation-net-http-otelhttp
                        go-go-opentelemetry-io-contrib-instrumentation-google-golang-org-grpc-otelgrpc
                        go-github-com-googleapis-gax-go-v2
                        go-github-com-googleapis-enterprise-certificate-proxy
                        go-github-com-google-uuid
                        go-github-com-google-s2a-go
                        go-github-com-google-go-cmp
                        go-cloud-google-com-go-compute-metadata
                        go-cloud-google-com-go-auth-oauth2adapt
                        go-cloud-google-com-go-auth))
    (home-page "https://google.golang.org/api")
    (synopsis "Google APIs Client Library for Go")
    (description
     "Package api is the root of the packages used to access Google Cloud Services.
See
@@url{https://godoc.org/google.golang.org/api,https://godoc.org/google.golang.org/api}
for a full list of sub-packages.")
    (license license:bsd-3)))

(define-public go-google-golang-org-genproto
  (package
    (name "go-google-golang-org-genproto")
    (version "0.0.0-20250818200422-3122310a409c")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/go-genproto")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1kfgsjkazvxfxqz487dnnc9vbw72s54x1cv1gkc2491qgybsal8x"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "google.golang.org/genproto"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-github-com-golang-protobuf
                             go-cloud-google-com-go-workflows
                             go-cloud-google-com-go-websecurityscanner
                             go-cloud-google-com-go-webrisk
                             go-cloud-google-com-go-vpcaccess
                             go-cloud-google-com-go-vmwareengine
                             go-cloud-google-com-go-vmmigration
                             go-cloud-google-com-go-vision-v2
                             go-cloud-google-com-go-videointelligence
                             go-cloud-google-com-go-video
                             go-cloud-google-com-go-translate
                             go-cloud-google-com-go-trace
                             go-cloud-google-com-go-tpu
                             go-cloud-google-com-go-texttospeech
                             go-cloud-google-com-go-talent
                             go-cloud-google-com-go-storagetransfer
                             go-cloud-google-com-go-speech
                             go-cloud-google-com-go-spanner
                             go-cloud-google-com-go-shell
                             go-cloud-google-com-go-servicedirectory
                             go-cloud-google-com-go-securitycenter
                             go-cloud-google-com-go-security
                             go-cloud-google-com-go-secretmanager
                             go-cloud-google-com-go-scheduler
                             go-cloud-google-com-go-run
                             go-cloud-google-com-go-retail
                             go-cloud-google-com-go-resourcesettings
                             go-cloud-google-com-go-resourcemanager
                             go-cloud-google-com-go-redis
                             go-cloud-google-com-go-recommender
                             go-cloud-google-com-go-recommendationengine
                             go-cloud-google-com-go-recaptchaenterprise-v2
                             go-cloud-google-com-go-pubsublite
                             go-cloud-google-com-go-pubsub
                             go-cloud-google-com-go-privatecatalog
                             go-cloud-google-com-go-policytroubleshooter
                             go-cloud-google-com-go-phishingprotection
                             go-cloud-google-com-go-oslogin
                             go-cloud-google-com-go-osconfig
                             go-cloud-google-com-go-orgpolicy
                             go-cloud-google-com-go-orchestration
                             go-cloud-google-com-go-optimization
                             go-cloud-google-com-go-notebooks
                             go-cloud-google-com-go-networksecurity
                             go-cloud-google-com-go-networkmanagement
                             go-cloud-google-com-go-networkconnectivity
                             go-cloud-google-com-go-monitoring
                             go-cloud-google-com-go-metastore
                             go-cloud-google-com-go-memcache
                             go-cloud-google-com-go-mediatranslation
                             go-cloud-google-com-go-maps
                             go-cloud-google-com-go-managedidentities
                             go-cloud-google-com-go-longrunning
                             go-cloud-google-com-go-logging
                             go-cloud-google-com-go-lifesciences
                             go-cloud-google-com-go-language
                             go-cloud-google-com-go-kms
                             go-cloud-google-com-go-iot
                             go-cloud-google-com-go-ids
                             go-cloud-google-com-go-iap
                             go-cloud-google-com-go-iam
                             go-cloud-google-com-go-gsuiteaddons
                             go-cloud-google-com-go-gkemulticloud
                             go-cloud-google-com-go-gkehub
                             go-cloud-google-com-go-gkeconnect
                             go-cloud-google-com-go-gkebackup
                             go-cloud-google-com-go-functions
                             go-cloud-google-com-go-firestore
                             go-cloud-google-com-go-filestore
                             go-cloud-google-com-go-eventarc
                             go-cloud-google-com-go-essentialcontacts
                             go-cloud-google-com-go-errorreporting
                             go-cloud-google-com-go-edgecontainer
                             go-cloud-google-com-go-domains
                             go-cloud-google-com-go-documentai
                             go-cloud-google-com-go-dlp
                             go-cloud-google-com-go-dialogflow
                             go-cloud-google-com-go-deploy
                             go-cloud-google-com-go-datastream
                             go-cloud-google-com-go-datastore
                             go-cloud-google-com-go-dataqna
                             go-cloud-google-com-go-dataproc-v2
                             go-cloud-google-com-go-dataplex
                             go-cloud-google-com-go-datalabeling
                             go-cloud-google-com-go-datafusion
                             go-cloud-google-com-go-dataform
                             go-cloud-google-com-go-dataflow
                             go-cloud-google-com-go-datacatalog
                             go-cloud-google-com-go-containeranalysis
                             go-cloud-google-com-go-container
                             go-cloud-google-com-go-contactcenterinsights
                             go-cloud-google-com-go-compute
                             go-cloud-google-com-go-cloudtasks
                             go-cloud-google-com-go-clouddms
                             go-cloud-google-com-go-cloudbuild
                             go-cloud-google-com-go-channel
                             go-cloud-google-com-go-certificatemanager
                             go-cloud-google-com-go-binaryauthorization
                             go-cloud-google-com-go-billing
                             go-cloud-google-com-go-bigtable
                             go-cloud-google-com-go-bigquery
                             go-cloud-google-com-go-beyondcorp
                             go-cloud-google-com-go-batch
                             go-cloud-google-com-go-baremetalsolution
                             go-cloud-google-com-go-automl
                             go-cloud-google-com-go-assuredworkloads
                             go-cloud-google-com-go-asset
                             go-cloud-google-com-go-artifactregistry
                             go-cloud-google-com-go-area120
                             go-cloud-google-com-go-appengine
                             go-cloud-google-com-go-apigeeregistry
                             go-cloud-google-com-go-apigeeconnect
                             go-cloud-google-com-go-apigateway
                             go-cloud-google-com-go-analytics
                             go-cloud-google-com-go-aiplatform
                             go-cloud-google-com-go-accesscontextmanager
                             go-cloud-google-com-go-accessapproval))
    (home-page "https://google.golang.org/genproto")
    (synopsis "Go generated proto packages")
    (description
     "This repository contains the generated Go packages for common protocol buffer
types, and the generated @@url{http://grpc.io,@code{gRPC}} code necessary for
interacting with Google's @code{gRPC} APIs.")
    (license license:asl2.0)))

(define-public go-google-golang-org-genproto-googleapis-bytestream
  (package
    (name "go-google-golang-org-genproto-googleapis-bytestream")
    (version "0.0.0-20250818200422-3122310a409c")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/go-genproto")
             (commit (go-version->git-ref version
                                          #:subdir "googleapis/bytestream"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1kfgsjkazvxfxqz487dnnc9vbw72s54x1cv1gkc2491qgybsal8x"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "google.golang.org/genproto/googleapis/bytestream"
      #:unpack-path "google.golang.org/genproto"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc))
    (home-page "https://google.golang.org/genproto")
    (synopsis #f)
    (description #f)
    (license license:asl2.0)))

(define-public go-google-golang-org-grpc-cmd-protoc-gen-go-grpc
  (package
    (name "go-google-golang-org-grpc-cmd-protoc-gen-go-grpc")
    (version "1.5.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/grpc/grpc-go")
             (commit (go-version->git-ref version
                                          #:subdir "cmd/protoc-gen-go-grpc"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0yn1ir5y0wc91q95ngr3dlz2cyhp0wlb9l30hkw2cr34r38hq19w"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "google.golang.org/grpc/cmd/protoc-gen-go-grpc"
      #:unpack-path "google.golang.org/grpc"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc))
    (home-page "https://google.golang.org/grpc")
    (synopsis "protoc-gen-go-grpc")
    (description
     "protoc-gen-go-grpc is a plugin for the Google protocol buffer compiler to
generate Go code.  Install it by building this program and making it accessible
within your PATH with the name:.")
    (license license:asl2.0)))

(define-public go-gorm-io-driver-postgres
  (package
    (name "go-gorm-io-driver-postgres")
    (version "1.6.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/go-gorm/postgres")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1x74kyqgl8v6nz7qvkkk14b0n6gw9r94h2n3gns26smpcjj334cg"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "gorm.io/driver/postgres"))
    (propagated-inputs (list go-gorm-io-gorm go-github-com-jackc-pgx-v5))
    (home-page "https://gorm.io/driver/postgres")
    (synopsis "GORM PostgreSQL Driver")
    (description
     "Checkout @@url{https://gorm.io,https://gorm.io} for details.")
    (license license:expat)))

(define-public go-gorm-io-gorm
  (package
    (name "go-gorm-io-gorm")
    (version "1.30.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/go-gorm/gorm")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1n6cnnrmgbz94pgi6brc2c3n0i9sv3ai638jxs78if4lzwsxcbif"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "gorm.io/gorm"))
    (propagated-inputs (list go-golang-org-x-text go-github-com-jinzhu-now
                             go-github-com-jinzhu-inflection))
    (home-page "https://gorm.io/gorm")
    (synopsis "GORM")
    (description
     "The fantastic ORM library for Golang, aims to be developer friendly.")
    (license license:expat)))

(define-public go-k8s-io-api
  (package
    (name "go-k8s-io-api")
    (version "0.33.4")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/kubernetes/api")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "154wx7hax6mkj1n7xdypwlp1h4n6gys5kq02wj6c336yhygazg1y"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "k8s.io/api"))
    (propagated-inputs (list go-k8s-io-apimachinery
                             go-github-com-gogo-protobuf))
    (home-page "https://k8s.io/api")
    (synopsis "api")
    (description
     "Schema of the external API types that are served by the Kubernetes API server.")
    (license license:asl2.0)))

(define-public go-k8s-io-client-go
  (package
    (name "go-k8s-io-client-go")
    (version "0.33.4")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/kubernetes/client-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1rd82bvdpxwy6v70mi1490xah4frdayi6n61ws876hrr2nxia9jz"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "k8s.io/client-go"))
    (propagated-inputs (list go-sigs-k8s-io-yaml
                             go-sigs-k8s-io-structured-merge-diff-v4
                             go-sigs-k8s-io-randfill
                             go-sigs-k8s-io-json
                             go-k8s-io-utils
                             go-k8s-io-kube-openapi
                             go-k8s-io-klog-v2
                             go-k8s-io-apimachinery
                             go-k8s-io-api
                             go-gopkg-in-evanphx-json-patch-v4 ; packaged
                             go-google-golang-org-protobuf
                             go-golang-org-x-time
                             go-golang-org-x-term
                             go-golang-org-x-oauth2
                             go-golang-org-x-net
                             go-go-uber-org-goleak
                             go-github-com-stretchr-testify
                             go-github-com-spf13-pflag
                             go-github-com-peterbourgon-diskv
                             go-github-com-munnerz-goautoneg
                             go-github-com-gregjones-httpcache
                             go-github-com-gorilla-websocket
                             go-github-com-google-uuid
                             go-github-com-google-go-cmp
                             go-github-com-google-gnostic-models
                             go-github-com-gogo-protobuf
                             go-github-com-go-logr-logr))
    (home-page "https://k8s.io/client-go")
    (synopsis "client-go")
    (description
     "Go clients for talking to a @@url{http://kubernetes.io/,kubernetes} cluster.")
    (license license:asl2.0)))

(define-public go-k8s-io-klog
  (package
    (name "go-k8s-io-klog")
    (version "1.0.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/kubernetes/klog")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1cgannfmldcrcksb2wqdn2b5qabqyxl9r25w9y4qbljw24hhnlvn"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "k8s.io/klog"))
    (propagated-inputs (list go-github-com-go-logr-logr))
    (home-page "https://k8s.io/klog")
    (synopsis "klog")
    (description
     "Package klog implements logging analogous to the Google-internal C++
INFO/ERROR/V setup.  It provides functions Info, Warning, Error, Fatal, plus
formatting variants such as Infof.  It also provides V-style logging controlled
by the -v and -vmodule=file=2 flags.")
    (license license:asl2.0)))

(define-public go-modernc-org-cc
  (package
    (name "go-modernc-org-cc")
    (version "4.26.4")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://gitlab.com/cznic/cc")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0sj4f2r21ny5xl8zhipf2y0z1ym71x5wc9c82p36p4ykax4qrsf2"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "modernc.org/cc/v4"
      #:unpack-path "modernc.org/cc"))
    (propagated-inputs (list go-modernc-org-token
                             go-modernc-org-strutil
                             go-modernc-org-sortutil
                             go-modernc-org-opt
                             go-modernc-org-mathutil
                             go-modernc-org-ccorpus2
                             go-github-com-pmezard-go-difflib
                             go-github-com-pbnjay-memory
                             go-github-com-dustin-go-humanize))
    (home-page "https://modernc.org/cc")
    (synopsis "cc/v4")
    (description "Package cc is a C99 compiler front end.")
    (license license:bsd-3)))

(define-public go-modernc-org-ccgo
  (package
    (name "go-modernc-org-ccgo")
    (version "3.17.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://gitlab.com/cznic/ccgo")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0zkxzhmkm5pgalcnlhw0whiii6vhdpnnnpwkx9b5ah21ajk6qqlc"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "modernc.org/ccgo/v3"
      #:unpack-path "modernc.org/ccgo"))
    (propagated-inputs (list go-modernc-org-opt
                             go-modernc-org-mathutil
                             go-modernc-org-libc
                             go-modernc-org-ccorpus
                             go-modernc-org-ccgo-v4
                             go-modernc-org-cc-v3
                             go-golang-org-x-tools
                             go-golang-org-x-sys
                             go-github-com-pmezard-go-difflib
                             go-github-com-kballard-go-shellquote
                             go-github-com-dustin-go-humanize))
    (home-page "https://modernc.org/ccgo")
    (synopsis "ccgo/v3")
    (description "Package ccgo translates C to Go source code.")
    (license license:bsd-3)))

(define-public go-modernc-org-ccorpus
  (package
    (name "go-modernc-org-ccorpus")
    (version "1.11.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://gitlab.com/cznic/ccorpus")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "18d5npw8aw5qzy6qcrlrili2zxvmc2v4kkwjps6c3ayvi7aj7j09"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "modernc.org/ccorpus"))
    (propagated-inputs (list go-modernc-org-httpfs))
    (home-page "https://modernc.org/ccorpus")
    (synopsis "ccorpus")
    (description "Package ccorpus provides a test corpus of C code.")
    (license license:bsd-3)))

(define-public go-modernc-org-gc
  (package
    (name "go-modernc-org-gc")
    (version "2.6.5")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://gitlab.com/cznic/gc")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "06bxad6md34ngxfgbwqxwdfw2cgkr2i4s50zwy9afqymds1nlmvh"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "modernc.org/gc/v2"
      #:unpack-path "modernc.org/gc"))
    (propagated-inputs (list go-modernc-org-token go-modernc-org-scannertest
                             go-github-com-pmezard-go-difflib
                             go-github-com-dustin-go-humanize))
    (home-page "https://modernc.org/gc")
    (synopsis "gc")
    (description
     "Package GC is a Go compiler front end. (Work in progress, API unstable).")
    (license license:bsd-3)))

(define-public go-modernc-org-goabi0
  (package
    (name "go-modernc-org-goabi0")
    (version "0.2.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://gitlab.com/cznic/goabi0")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1nf3mcql5vjfymhy7l867zan2ynjg3wc3jplh4k1gby077h7jb3h"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "modernc.org/goabi0"))
    (home-page "https://modernc.org/goabi0")
    (synopsis "goabi0")
    (description "Package goabi0 provides helpers for generating Go assembler
@@url{https://go.dev/doc/asm,ABI0} code.")
    (license license:bsd-3)))

(define-public go-modernc-org-lex
  (package
    (name "go-modernc-org-lex")
    (version "1.1.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://gitlab.com/cznic/lex")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1fad093cdkgdwk3sf0vklk05qzkis1ivri3hig1wigv4z908nmdj"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "modernc.org/lex"))
    (propagated-inputs (list go-modernc-org-lexer go-modernc-org-fileutil))
    (home-page "https://modernc.org/lex")
    (synopsis #f)
    (description
     "Package lex provides support for a *nix (f)lex like tool on .l sources.  The
syntax is similar to a subset of (f)lex, see also:
@@url{http://flex.sourceforge.net/manual/Format.html#Format,http://flex.sourceforge.net/manual/Format.html#Format}.")
    (license license:bsd-3)))

(define-public go-modernc-org-libc
  (package
    (name "go-modernc-org-libc")
    (version "1.66.7")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://gitlab.com/cznic/libc")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1l10cd12k4rg9ipq30nx5svlphnf97hrfhfxfr8rps4b3jzr64h2"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "modernc.org/libc"))
    (propagated-inputs (list go-modernc-org-memory
                             go-modernc-org-mathutil
                             go-modernc-org-goabi0
                             go-modernc-org-fileutil
                             go-modernc-org-ccgo-v4
                             go-modernc-org-cc-v4
                             go-golang-org-x-tools
                             go-golang-org-x-sys
                             go-golang-org-x-exp
                             go-github-com-ncruces-go-strftime
                             go-github-com-mattn-go-isatty
                             go-github-com-google-uuid
                             go-github-com-dustin-go-humanize))
    (home-page "https://modernc.org/libc")
    (synopsis "libc")
    (description
     "Package libc is a partial reimplementation of C libc in pure Go.")
    (license license:bsd-3)))

(define-public go-modernc-org-scannertest
  (package
    (name "go-modernc-org-scannertest")
    (version "1.0.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://gitlab.com/cznic/scannertest")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "06hk8pqaihhmfxfprg1fmdl2y8ffvrblm10z7qq3l921jjxc1ch7"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "modernc.org/scannertest"))
    (propagated-inputs (list go-modernc-org-lexer go-modernc-org-lex))
    (home-page "https://modernc.org/scannertest")
    (synopsis #f)
    (description #f)
    (license unknown-license!)))

(define-public go-modernc-org-sqlite
  (package
    (name "go-modernc-org-sqlite")
    (version "1.38.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://gitlab.com/cznic/sqlite")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0579vip4vn488jppjpadryxyimkw2jr8ywr4j0piqcm2zs40h509"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "modernc.org/sqlite"))
    (propagated-inputs (list go-modernc-org-mathutil go-modernc-org-libc
                             go-modernc-org-fileutil go-golang-org-x-sys
                             go-github-com-google-pprof))
    (home-page "https://modernc.org/sqlite")
    (synopsis #f)
    (description
     "Package sqlite is a sql/database driver using a CGo-free port of the C SQLite3
library.")
    (license license:bsd-3)))

