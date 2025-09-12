(define-public go-cloud-google-com-go
  (package
    (name "go-cloud-google-com-go")
    (version "0.121.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0bsjsvc6jhk830vlmzamsr8jz1lkibsa6vvin3dkna16ka8fpl20"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
    (version "1.92.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "aiplatform"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0n2vkw9iqqmwqn477qjxvwirs19ccrqx6kb80wbva6dhxf4xa5nh"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
    (version "0.16.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "auth"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1srq1a4vyqdr7arvj7ri0p2w3spz63jx46xn9gzcpycgxah7ihkb"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
    (version "1.22.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "cloudbuild"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
    (version "1.39.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "compute"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1hydiwi5ilwcf52rkd627w7834cwai9zw9yqik4m3a6v263fx4dp"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
    (version "1.43.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "container"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "155qvn234bxz21p75zqxznz59g074l0diy0s1nxqkxwwfmn2vbpz"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
    (version "1.25.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "dataplex"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1ryq4ay3myk7w2wb7pzfk0pbvz6ymirxq91zm6rql7a1vb15x0n9"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
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
    (version "2.13.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "dataproc"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0l71sgyzrjhjlh58hrnxqk3yillcszbfwq0rr3cid7zbv1zxdwzn"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
    (version "1.14.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "datastream"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
    (version "1.68.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "dialogflow"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
    (version "1.37.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "documentai"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "10xfkc3igsw95fs13k8w0qjig6fsfpd1j9kar43jx74wqlhs02rb"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
    (version "1.21.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "maps"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1s2sncxbrxg0534b020b51wvkcajawp2f6z0pzy7qqfngkh9v5yb"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
    (version "1.17.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "networkconnectivity"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
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
    (version "1.19.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "networkmanagement"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
    (version "1.14.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "osconfig"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0pgz76i9vliwsx10xc7k303352jm8h9pdfnjqlc5z9qqyqf8fc9w"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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

(define-public go-cloud-google-com-go-pubsub
  (package
    (name "go-cloud-google-com-go-pubsub")
    (version "1.49.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "pubsub"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "01bllmiirmmkw040i1pxfc71zsv8lm3cbziqv1vk5b4ryys6smky"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "cloud.google.com/go/pubsub"
      #:unpack-path "cloud.google.com/go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-golang-org-x-time
                             go-golang-org-x-sync
                             go-golang-org-x-oauth2
                             go-go-opentelemetry-io-otel-trace
                             go-go-opentelemetry-io-otel-sdk
                             go-go-opentelemetry-io-otel
                             go-go-opencensus-io
                             go-go-einride-tech-aip
                             go-github-com-googleapis-gax-go-v2
                             go-github-com-google-uuid
                             go-github-com-google-go-cmp
                             go-cloud-google-com-go-kms
                             go-cloud-google-com-go-iam
                             go-cloud-google-com-go))
    (home-page "https://cloud.google.com/go")
    (synopsis "Cloud Pub/Sub")
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
    (version "1.22.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "retail"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0n2vkw9iqqmwqn477qjxvwirs19ccrqx6kb80wbva6dhxf4xa5nh"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
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
    (version "1.10.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "run"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1hydiwi5ilwcf52rkd627w7834cwai9zw9yqik4m3a6v263fx4dp"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
    (version "1.18.5")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "security"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
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
    (version "1.36.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "securitycenter"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pk121h5dqh7fibzw5341894w4i11drk2ilb6flyxpddi1fsvwy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
    (version "1.83.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "spanner"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1myfny9lbzph1jfhdl6hv0irk8349ybqmncd3yhj2dc59d403vlw"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
    (version "1.55.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "storage"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1b2s6zcjckd4hmxlxfybfpi8virdn2siajffp7mcsfvxhj4xypdg"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
    (version "1.24.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "video"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1s2sncxbrxg0534b020b51wvkcajawp2f6z0pzy7qqfngkh9v5yb"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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

(define-public go-github-com-adamslevy-jsonrpc2
  (package
    (name "go-github-com-adamslevy-jsonrpc2")
    (version "14.1.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/AdamSLevy/jsonrpc2")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0ggf99r30j42lqah9lmq3lvi80xr415l5b0sy6wpkfl64kifnl3i"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/AdamSLevy/jsonrpc2/v14"
      #:unpack-path "github.com/AdamSLevy/jsonrpc2"))
    (propagated-inputs (list go-github-com-stretchr-testify))
    (home-page "https://github.com/AdamSLevy/jsonrpc2")
    (synopsis "github.com/AdamSLevy/jsonrpc2/v14")
    (description
     "Package jsonrpc2 is a complete and strictly conforming implementation of the
JSON-RPC 2.0 protocol for both clients and servers.")
    (license license:expat)))

(define-public go-github-com-afex-hystrix-go
  (package
    (name "go-github-com-afex-hystrix-go")
    (version "0.0.0-20180502004556-fa1af6a1f4f5")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/afex/hystrix-go")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0zlj0330j816flvwvis4d4vv1gigpxlghph7awbc9jb7ggf2qssn"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/afex/hystrix-go"))
    (home-page "https://github.com/afex/hystrix-go")
    (synopsis "hystrix-go")
    (description
     "@@url{https://github.com/Netflix/Hystrix,Hystrix} is a great project from
Netflix.")
    (license license:expat)))

(define-public go-github-com-akamai-akamaiopen-edgegrid-golang
  (package
    (name "go-github-com-akamai-akamaiopen-edgegrid-golang")
    (version "1.2.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/akamai/AkamaiOPEN-edgegrid-golang")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "00w7f0d4hn0w465jcjyx84yh6gdyv94h593w0gbgp0xlywaz0r4x"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/akamai/AkamaiOPEN-edgegrid-golang"))
    (propagated-inputs (list go-gopkg-in-ini-v1
                             go-gopkg-in-h2non-gock-v1
                             go-github-com-xeipuuv-gojsonschema
                             go-github-com-stretchr-testify
                             go-github-com-sirupsen-logrus
                             go-github-com-patrickmn-go-cache
                             go-github-com-mitchellh-go-homedir
                             go-github-com-google-uuid
                             go-github-com-google-go-querystring))
    (home-page "https://github.com/akamai/AkamaiOPEN-edgegrid-golang")
    (synopsis "Akamai OPEN EdgeGrid for GoLang v1")
    (description
     "Package edgegrid provides the Akamai OPEN Edgegrid Authentication scheme.")
    (license license:asl2.0)))

(define-public go-github-com-aliyun-alibaba-cloud-sdk-go
  (package
    (name "go-github-com-aliyun-alibaba-cloud-sdk-go")
    (version "1.63.107")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/aliyun/alibaba-cloud-sdk-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1gfri1ynmm0873byfrjxjka796j0xim0ny3klvrwiv7qjw3yja3j"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/aliyun/alibaba-cloud-sdk-go"))
    (propagated-inputs (list go-gopkg-in-ini-v1
                             go-github-com-uber-jaeger-client-go
                             go-github-com-stretchr-testify
                             go-github-com-opentracing-opentracing-go
                             go-github-com-modern-go-reflect2
                             go-github-com-json-iterator-go
                             go-github-com-jmespath-go-jmespath
                             go-github-com-goji-httpauth))
    (home-page "https://github.com/aliyun/alibaba-cloud-sdk-go")
    (synopsis "Troubleshoot")
    (description "This file is created for depping ensure.")
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
      #:go go-1.22
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
      #:go go-1.23
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

(define-public go-github-com-armon-circbuf
  (package
    (name "go-github-com-armon-circbuf")
    (version "0.0.0-20190214190532-5111143e8da2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/armon/circbuf")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1nhzs8wza5sxqjh0920jypy9irq6cspd55g8a9vgyjjfrqb5njs0"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/armon/circbuf"))
    (home-page "https://github.com/armon/circbuf")
    (synopsis "circbuf")
    (description
     "This repository provides the @@code{circbuf} package.  This provides a
@@code{Buffer} object which is a circular (or ring) buffer.  It has a fixed
size, but can be written to infinitely.  Only the last @@code{size} bytes are
ever retained.  The buffer implements the @@code{io.Writer} interface.")
    (license license:expat)))

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

(define-public go-github-com-aws-aws-sdk-go-v2-service-cloudwatch
  (package
    (name "go-github-com-aws-aws-sdk-go-v2-service-cloudwatch")
    (version "1.45.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/aws/aws-sdk-go-v2")
             (commit (go-version->git-ref version
                                          #:subdir "service/cloudwatch"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0qkw1wi5a31l7ymz0lkq39wgnzkb5zhl9rwh24q93spdcmkcxsbl"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go go-1.22
      #:import-path "github.com/aws/aws-sdk-go-v2/service/cloudwatch"
      #:unpack-path "github.com/aws/aws-sdk-go-v2"))
    (propagated-inputs (list go-github-com-aws-smithy-go))
    (home-page "https://github.com/aws/aws-sdk-go-v2")
    (synopsis #f)
    (description
     "Package cloudwatch provides the API client, operations, and parameter types for
Amazon @code{CloudWatch}.")
    (license license:asl2.0)))

(define-public go-github-com-aws-aws-sdk-go-v2-service-lightsail
  (package
    (name "go-github-com-aws-aws-sdk-go-v2-service-lightsail")
    (version "1.43.4")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/aws/aws-sdk-go-v2")
             (commit (go-version->git-ref version
                                          #:subdir "service/lightsail"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0qkw1wi5a31l7ymz0lkq39wgnzkb5zhl9rwh24q93spdcmkcxsbl"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go go-1.22
      #:import-path "github.com/aws/aws-sdk-go-v2/service/lightsail"
      #:unpack-path "github.com/aws/aws-sdk-go-v2"))
    (propagated-inputs (list go-github-com-aws-smithy-go))
    (home-page "https://github.com/aws/aws-sdk-go-v2")
    (synopsis #f)
    (description
     "Package lightsail provides the API client, operations, and parameter types for
Amazon Lightsail.")
    (license license:asl2.0)))

(define-public go-github-com-aws-aws-sdk-go-v2-service-route53
  (package
    (name "go-github-com-aws-aws-sdk-go-v2-service-route53")
    (version "1.53.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/aws/aws-sdk-go-v2")
             (commit (go-version->git-ref version
                                          #:subdir "service/route53"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1rvy9algp5fi09s4cskavwl571rlwgmvwddxknxa5mzhzzp6ls8q"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go go-1.22
      #:import-path "github.com/aws/aws-sdk-go-v2/service/route53"
      #:unpack-path "github.com/aws/aws-sdk-go-v2"))
    (propagated-inputs (list go-github-com-aws-smithy-go))
    (home-page "https://github.com/aws/aws-sdk-go-v2")
    (synopsis #f)
    (description
     "Package route53 provides the API client, operations, and parameter types for
Amazon Route 53.")
    (license license:asl2.0)))

(define-public go-github-com-azure-azure-sdk-for-go
  (package
    (name "go-github-com-azure-azure-sdk-for-go")
    (version "68.0.0+incompatible")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Azure/azure-sdk-for-go")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1rwma4by309dp7nks02g6pzwi2prclssdqflsggnmc6fj7mayj46"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/Azure/azure-sdk-for-go"))
    (home-page "https://github.com/Azure/azure-sdk-for-go")
    (synopsis "Azure SDK for Go")
    (description
     "Package sdk provides Go packages for managing and using Azure services.")
    (license license:expat)))

(define-public go-github-com-azure-azure-sdk-for-go-sdk-azcore
  (package
    (name "go-github-com-azure-azure-sdk-for-go-sdk-azcore")
    (version "1.18.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Azure/azure-sdk-for-go")
             (commit (go-version->git-ref version
                                          #:subdir "sdk/azcore"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "135h8qdb2yjgd51xbkk50d0nh0w2pmi6v35dkjzdk73ci30kl8ky"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
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
    (version "1.10.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Azure/azure-sdk-for-go")
             (commit (go-version->git-ref version
                                          #:subdir "sdk/azidentity"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1f8zkxnrpadp62p9x6kgd9nfbnmppvgmvf2li78y590xykppdcds"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "github.com/Azure/azure-sdk-for-go/sdk/azidentity"
      #:unpack-path "github.com/Azure/azure-sdk-for-go"))
    (propagated-inputs (list go-golang-org-x-crypto
                        go-github-com-stretchr-testify
                        go-github-com-redis-go-redis-v9 ; packaged

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
    (version "1.11.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Azure/azure-sdk-for-go")
             (commit (go-version->git-ref version
                                          #:subdir "sdk/internal"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0czvydkb9sgk2sy1dwl78rbd81gjy5ykhpasrm24h4hhv382nyhz"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
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

(define-public go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-dns-armdns
  (package
    (name
     "go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-dns-armdns")
    (version "1.2.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Azure/azure-sdk-for-go")
             (commit (go-version->git-ref version
                                          #:subdir
                                          "sdk/resourcemanager/dns/armdns"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "05yv7ac8zcd10iljnv46jba0g9m4kkwf0axd5czrv0067w3m52b2"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path
      "github.com/Azure/azure-sdk-for-go/sdk/resourcemanager/dns/armdns"
      #:unpack-path "github.com/Azure/azure-sdk-for-go"))
    (propagated-inputs (list
                        go-github-com-azure-azure-sdk-for-go-sdk-azidentity
                        go-github-com-azure-azure-sdk-for-go-sdk-azcore))
    (home-page "https://github.com/Azure/azure-sdk-for-go")
    (synopsis "Azure DNS Module for Go")
    (description
     "The @@code{armdns} module provides operations for working with Azure DNS.")
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

(define-public go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-internal
  (package
    (name "go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-internal")
    (version "2.0.0")
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
        (base32 "0db2hxq8wigvmqkj8h5gfq9lw6bp0k13hvcyi0hxgnriz1mdvpx5"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path
      "github.com/Azure/azure-sdk-for-go/sdk/resourcemanager/internal/v2"
      #:unpack-path "github.com/Azure/azure-sdk-for-go"))
    (propagated-inputs (list go-github-com-stretchr-testify
                        go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-resources-armresources
                        go-github-com-azure-azure-sdk-for-go-sdk-internal
                        go-github-com-azure-azure-sdk-for-go-sdk-azidentity
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

(define-public go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-privatedns-armprivatedns
  (package
    (name
     "go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-privatedns-armprivatedns")
    (version "1.3.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Azure/azure-sdk-for-go")
             (commit (go-version->git-ref version
                      #:subdir "sdk/resourcemanager/privatedns/armprivatedns"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1ca28dxiszx9xmwq65vhk6jxx3vhxl4cpkzaa5c508ywzqan0vcm"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path
      "github.com/Azure/azure-sdk-for-go/sdk/resourcemanager/privatedns/armprivatedns"
      #:unpack-path "github.com/Azure/azure-sdk-for-go"))
    (propagated-inputs (list go-github-com-stretchr-testify
                        go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-resources-armresources
                        go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-internal-v3
                        go-github-com-azure-azure-sdk-for-go-sdk-internal
                        go-github-com-azure-azure-sdk-for-go-sdk-azidentity
                        go-github-com-azure-azure-sdk-for-go-sdk-azcore))
    (home-page "https://github.com/Azure/azure-sdk-for-go")
    (synopsis "Azure Private DNS Module for Go")
    (description
     "The @@code{armprivatedns} module provides operations for working with Azure
Private DNS.")
    (license license:expat)))

(define-public go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-resourcegraph-armresourcegraph
  (package
    (name
     "go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-resourcegraph-armresourcegraph")
    (version "0.9.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Azure/azure-sdk-for-go")
             (commit (go-version->git-ref version
                      #:subdir
                      "sdk/resourcemanager/resourcegraph/armresourcegraph"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1qkmq5zmix15qfbhsn2dwgm9ws2jqdgp2p70s19zxsw445aq6gh8"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path
      "github.com/Azure/azure-sdk-for-go/sdk/resourcemanager/resourcegraph/armresourcegraph"
      #:unpack-path "github.com/Azure/azure-sdk-for-go"))
    (propagated-inputs (list
                        go-github-com-azure-azure-sdk-for-go-sdk-azidentity
                        go-github-com-azure-azure-sdk-for-go-sdk-azcore))
    (home-page "https://github.com/Azure/azure-sdk-for-go")
    (synopsis "Azure Resource Graph Module for Go")
    (description
     "The @@code{armresourcegraph} module provides operations for working with Azure
Resource Graph.")
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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

(define-public go-github-com-azure-go-ansiterm
  (package
    (name "go-github-com-azure-go-ansiterm")
    (version "0.0.0-20250102033503-faa5f7b0171c")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Azure/go-ansiterm")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "11jwgg6zbwkij8vqcmia8pjk5s272f3zc89hh3g6v7k3vhk0lrp1"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/Azure/go-ansiterm"))
    (propagated-inputs (list go-golang-org-x-sys))
    (home-page "https://github.com/Azure/go-ansiterm")
    (synopsis "go-ansiterm")
    (description
     "This is a cross platform Ansi Terminal Emulation library.  It reads a stream of
Ansi characters and produces the appropriate function calls.  The results of the
function calls are platform dependent.")
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

(define-public go-github-com-azure-go-autorest-autorest-azure-auth
  (package
    (name "go-github-com-azure-go-autorest-autorest-azure-auth")
    (version "0.5.13")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Azure/go-autorest")
             (commit (go-version->git-ref version
                                          #:subdir "autorest/azure/auth"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1sb553g3j8aj4b7j1wvji59qj12yzz60qavrqn3zv67j4cd92ssm"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/Azure/go-autorest/autorest/azure/auth"
      #:unpack-path "github.com/Azure/go-autorest"))
    (propagated-inputs (list go-github-com-dimchansky-utfbom
                        go-github-com-azure-go-autorest-logger
                        go-github-com-azure-go-autorest-autorest-azure-cli
                        go-github-com-azure-go-autorest-autorest-adal
                        go-github-com-azure-go-autorest-autorest
                        go-github-com-azure-go-autorest))
    (home-page "https://github.com/Azure/go-autorest")
    (synopsis
     "NOTE: This module will go out of support by March 31, 2023.  For authenticating with Azure AD, use module")
    (description
     "Typical SDK operations must be authenticated and authorized.  The
@@code{autorest.Authorizer} interface allows use of any auth style in requests,
such as inserting an OAuth2 Authorization header and bearer token received from
Azure AD.")
    (license license:asl2.0)))

(define-public go-github-com-azure-go-autorest-autorest-azure-cli
  (package
    (name "go-github-com-azure-go-autorest-autorest-azure-cli")
    (version "0.4.7")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Azure/go-autorest")
             (commit (go-version->git-ref version
                                          #:subdir "autorest/azure/cli"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1cjrchpj51gjfrv0wy658lgw6yg7y1jviy69n308x1jbqb04cmv6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/Azure/go-autorest/autorest/azure/cli"
      #:unpack-path "github.com/Azure/go-autorest"))
    (propagated-inputs (list go-github-com-mitchellh-go-homedir
                             go-github-com-dimchansky-utfbom
                             go-github-com-azure-go-autorest-autorest-date
                             go-github-com-azure-go-autorest-autorest-adal
                             go-github-com-azure-go-autorest))
    (home-page "https://github.com/Azure/go-autorest")
    (synopsis #f)
    (description #f)
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

(define-public go-github-com-baidubce-bce-sdk-go
  (package
    (name "go-github-com-baidubce-bce-sdk-go")
    (version "0.9.233")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/baidubce/bce-sdk-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1w7x4hj1k9lh17372bkbp0kk9pawv6vdpciyilz952l84h68l83c"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/baidubce/bce-sdk-go"))
    (home-page "https://github.com/baidubce/bce-sdk-go")
    (synopsis "GO SDK 文档")
    (description
     "Package sdk imports all sub packages to build all of them when calling `go
install', `go build or `go get commands.")
    (license license:asl2.0)))

(define-public go-github-com-bsm-ginkgo
  (package
    (name "go-github-com-bsm-ginkgo")
    (version "2.12.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/bsm/ginkgo")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "01k1j1bwdq23hs9zzbz9kdljvr6hzym53mqxh2gy0bz4lggcd6qs"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/bsm/ginkgo/v2"
      #:unpack-path "github.com/bsm/ginkgo"))
    (home-page "https://github.com/bsm/ginkgo")
    (synopsis "Ginkgo")
    (description
     "Ginkgo is a testing framework for Go designed to help you write expressive
tests. @@url{https://github.com/onsi/ginkgo,https://github.com/onsi/ginkgo}
MIT-Licensed.")
    (license license:expat)))

(define-public go-github-com-bsm-gomega
  (package
    (name "go-github-com-bsm-gomega")
    (version "1.27.10")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/bsm/gomega")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0i7p85wsqv1j9aq052vdw006xq42n1rdgnk1lr6f5wnapwab2shz"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/bsm/gomega"))
    (home-page "https://github.com/bsm/gomega")
    (synopsis "Gomega")
    (description
     "Gomega is the Ginkgo BDD-style testing framework's preferred matcher library.")
    (license license:expat)))

(define-public go-github-com-c2h5oh-datasize
  (package
    (name "go-github-com-c2h5oh-datasize")
    (version "0.0.0-20231215233829-aa82cc1e6500")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/c2h5oh/datasize")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0x0cfs7cf4779jvfwbk49qwgbcv84hydmwx9ip4af4xg23pqpjph"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/c2h5oh/datasize"))
    (home-page "https://github.com/c2h5oh/datasize")
    (synopsis "datasize")
    (description "Golang helpers for data sizes.")
    (license license:expat)))

(define-public go-github-com-canonical-go-dqlite
  (package
    (name "go-github-com-canonical-go-dqlite")
    (version "3.0.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/canonical/go-dqlite")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0z6708mdl3ksi1wq669cgp79krsm00fxhr5rpv0y00dw6gdj9924"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/canonical/go-dqlite/v3"
      #:unpack-path "github.com/canonical/go-dqlite"))
    (propagated-inputs (list go-gopkg-in-yaml-v2
                             go-golang-org-x-sys
                             go-golang-org-x-sync
                             go-github-com-stretchr-testify
                             go-github-com-spf13-cobra
                             go-github-com-pkg-errors
                             go-github-com-peterh-liner ; packaged
                             go-github-com-mattn-go-sqlite3
                             go-github-com-google-renameio
                             go-github-com-rican7-retry ; packaged
                             ))
    (home-page "https://github.com/canonical/go-dqlite")
    (synopsis "go-dqlite")
    (description
     "This repository provides the go-dqlite Go package, containing bindings for the
@@url{https://github.com/canonical/dqlite,dqlite} C library and a pure-Go client
for the dqlite wire
@@url{https://dqlite.io/docs/reference/wire-protocol,protocol}.")
    (license license:asl2.0)))

(define-public go-github-com-canonical-lxd
  (package
    (name "go-github-com-canonical-lxd")
    (version "0.0.0-20250707085834-7c5049061311")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/canonical/lxd")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "047cci6hjp0s83shlxhq7kssdlb73k8l5gbaija4pb4b98jlkidf"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "github.com/canonical/lxd"))
    (propagated-inputs (list
                        go-tags-cncf-io-container-device-interface-specs-go
                        go-tags-cncf-io-container-device-interface
                        go-k8s-io-utils
                        go-gopkg-in-yaml-v2
                        go-gopkg-in-tomb-v2
                        go-google-golang-org-protobuf
                        go-golang-org-x-tools
                        go-golang-org-x-text
                        go-golang-org-x-term
                        go-golang-org-x-sys
                        go-golang-org-x-sync
                        go-golang-org-x-oauth2
                        go-golang-org-x-crypto
                        go-go-uber-org-zap
                        go-go-starlark-net ; packaged
                        go-github-com-zitadel-oidc-v3 ; packaged
                        go-github-com-vishvananda-netlink
                        go-github-com-stretchr-testify
                        go-github-com-spf13-cobra
                        go-github-com-sirupsen-logrus
                        go-github-com-robfig-cron-v3
                        go-github-com-pkg-xattr
                        go-github-com-pkg-sftp
                        go-github-com-osrg-gobgp-v3
                        go-github-com-openfga-openfga
                        go-github-com-openfga-language-pkg-go
                        go-github-com-openfga-api-proto
                        go-github-com-olekukonko-tablewriter
                        go-github-com-oklog-ulid-v2
                        go-github-com-moby-sys-capability ; packaged
                        go-github-com-mitchellh-mapstructure
                        go-github-com-minio-minio-go-v7
                        go-github-com-miekg-dns
                        go-github-com-mdlayher-vsock
                        go-github-com-mdlayher-netx ; packaged
                        go-github-com-mdlayher-ndp ; packaged
                        go-github-com-mattn-go-sqlite3
                        go-github-com-mattn-go-colorable
                        go-github-com-lxc-go-lxc ; packaged
                        go-github-com-kballard-go-shellquote
                        go-github-com-juju-gomaasapi
                        go-github-com-jochenvg-go-udev ; packaged
                        go-github-com-jaypipes-pcidb ; packaged
                        go-github-com-j-keck-arping
                        go-github-com-gosexy-gettext ; packaged
                        go-github-com-gorilla-websocket
                        go-github-com-gorilla-securecookie
                        go-github-com-gorilla-mux
                        go-github-com-google-uuid
                        go-github-com-google-gopacket
                        go-github-com-go-jose-go-jose-v4
                        go-github-com-go-chi-chi-v5
                        go-github-com-go-acme-lego-v4
                        go-github-com-fvbommel-sortorder ; packaged
                        go-github-com-flosch-pongo2-v6 ; packaged
                        go-github-com-dustinkirkland-golang-petname ; packaged
                        go-github-com-digitalocean-go-smbios ; packaged
                        go-github-com-digitalocean-go-qemu
                        go-github-com-dell-goscaleio
                        go-github-com-checkpoint-restore-go-criu-v6
                        go-github-com-canonical-go-dqlite-v3
                        go-github-com-armon-go-proxyproto ; packaged
                        go-github-com-nvidia-nvidia-container-toolkit))
    (home-page "https://github.com/canonical/lxd")
    (synopsis "LXD")
    (description
     "LXD is a modern, secure and powerful system container and virtual machine
manager.")
    (license license:agpl3)))

(define-public go-github-com-casbin-casbin
  (package
    (name "go-github-com-casbin-casbin")
    (version "2.108.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/casbin/casbin")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0251vspmvmac9c0lq2k3fmz4zxad51g8305apyak0bdk0zzngbvh"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/casbin/casbin/v2"
      #:unpack-path "github.com/casbin/casbin"))
    (propagated-inputs (list go-github-com-golang-mock
                             go-github-com-casbin-govaluate
                             go-github-com-bmatcuk-doublestar-v4))
    (home-page "https://github.com/casbin/casbin")
    (synopsis "Casbin")
    (description
     "@@strong{News}: still worry about how to write the correct Casbin policy?
@@code{Casbin online editor} is coming to help! Try it at:
@@url{https://casbin.org/editor/,https://casbin.org/editor/}.")
    (license license:asl2.0)))

(define-public go-github-com-casbin-govaluate
  (package
    (name "go-github-com-casbin-govaluate")
    (version "1.8.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/casbin/govaluate")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0dqxbl7yls8wfkdshglx554qamg1pywwzgmm18lw2c8wqqx19y7f"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/casbin/govaluate"))
    (home-page "https://github.com/casbin/govaluate")
    (synopsis "govaluate")
    (description
     "This package provides support for evaluating arbitrary C-like artithmetic/string
expressions.")
    (license license:expat)))

(define-public go-github-com-cenkalti-backoff
  (package
    (name "go-github-com-cenkalti-backoff")
    (version "5.0.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/cenkalti/backoff")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1hc4manlkqfy9acva1jb8ayh8jihjb0h76l3g1sqqp0vlaq5y6q3"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go go-1.23
      #:import-path "github.com/cenkalti/backoff/v5"
      #:unpack-path "github.com/cenkalti/backoff"))
    (home-page "https://github.com/cenkalti/backoff")
    (synopsis "Exponential Backoff")
    (description
     "Package backoff implements backoff algorithms for retrying operations.")
    (license license:expat)))

(define-public go-github-com-civo-civogo
  (package
    (name "go-github-com-civo-civogo")
    (version "0.6.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/civo/civogo")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "10cchwifjh2dn8fwn7rhmwghh2mmm7g9pw5kqnxlfgmyqsfr1n7g"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/civo/civogo"))
    (propagated-inputs (list go-github-com-onsi-gomega go-golang-org-x-mod
                             go-k8s-io-apimachinery go-k8s-io-api
                             go-github-com-google-go-querystring))
    (home-page "https://github.com/civo/civogo")
    (synopsis "Civogo - The Golang client library for Civo")
    (description
     "Civogo is a Go client library for accessing the Civo cloud API.")
    (license license:expat)))

(define-public go-github-com-clbanning-mxj
  (package
    (name "go-github-com-clbanning-mxj")
    (version "1.8.4")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/clbanning/mxj")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "13qlrycdp63q1v8sdpv6n720b6h6jpg58r38ldg4a70iv1wg7s9g"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/clbanning/mxj"))
    (home-page "https://github.com/clbanning/mxj")
    (synopsis #f)
    (description
     "Marshal/Unmarshal XML to/from map[string]interface{} values (and JSON);
extract/modify values from maps by key or key-path, including wildcards.")
    (license unknown-license!)))

(define-public go-github-com-clickhouse-ch-go
  (package
    (name "go-github-com-clickhouse-ch-go")
    (version "0.66.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/ClickHouse/ch-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0nvfl556rws6jbwvxmb0g8abyhzg5c1znvfd2s5r0prracm88zn4"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "github.com/ClickHouse/ch-go"))
    (propagated-inputs (list go-golang-org-x-sync
                             go-go-uber-org-zap
                             go-go-uber-org-multierr
                             go-go-opentelemetry-io-otel-trace
                             go-go-opentelemetry-io-otel-sdk
                             go-go-opentelemetry-io-otel-metric
                             go-go-opentelemetry-io-otel
                             go-github-com-stretchr-testify
                             go-github-com-segmentio-asm
                             go-github-com-pierrec-lz4-v4
                             go-github-com-klauspost-compress
                             go-github-com-jackc-puddle-v2
                             go-github-com-hashicorp-go-version
                             go-github-com-google-uuid
                             go-github-com-go-faster-errors
                             go-github-com-go-faster-city
                             go-github-com-dustin-go-humanize
                             go-github-com-dmarkham-enumer
                             go-github-com-cenkalti-backoff-v4))
    (home-page "https://github.com/ClickHouse/ch-go")
    (synopsis "ch")
    (description "Package ch implements @code{ClickHouse} client.")
    (license license:asl2.0)))

(define-public go-github-com-clickhouse-clickhouse-go
  (package
    (name "go-github-com-clickhouse-clickhouse-go")
    (version "2.37.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/ClickHouse/clickhouse-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0w1lq4kaxh3xndzdr2vlwq99m165m4g5lvbypy9rr078cwcx7vf6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "github.com/ClickHouse/clickhouse-go/v2"
      #:unpack-path "github.com/ClickHouse/clickhouse-go"))
    (propagated-inputs (list go-gopkg-in-yaml-v3
                             go-golang-org-x-net
                             go-go-opentelemetry-io-otel-trace
                             go-github-com-testcontainers-testcontainers-go
                             go-github-com-stretchr-testify
                             go-github-com-shopspring-decimal
                             go-github-com-paulmach-orb
                             go-github-com-mkevac-debugcharts
                             go-github-com-google-uuid
                             go-github-com-docker-go-units
                             go-github-com-docker-docker
                             go-github-com-andybalholm-brotli
                             go-github-com-clickhouse-ch-go))
    (home-page "https://github.com/ClickHouse/clickhouse-go")
    (synopsis "ClickHouse")
    (description
     "Golang SQL database client for @@url{https://clickhouse.com/,@code{ClickHouse}}.")
    (license license:asl2.0)))

(define-public go-github-com-cloudflare-cloudflare-go
  (package
    (name "go-github-com-cloudflare-cloudflare-go")
    (version "0.115.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/cloudflare/cloudflare-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "19fi7saqvasy49pvcfhdyjkdqklv8s7viw433n9vnkli5al6rdyq"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/cloudflare/cloudflare-go"))
    (propagated-inputs (list go-golang-org-x-time
                             go-golang-org-x-net
                             go-github-com-urfave-cli-v2
                             go-github-com-stretchr-testify
                             go-github-com-olekukonko-tablewriter
                             go-github-com-google-go-querystring
                             go-github-com-goccy-go-json))
    (home-page "https://github.com/cloudflare/cloudflare-go")
    (synopsis "cloudflare-go")
    (description "Package cloudflare implements the Cloudflare v4 API.")
    (license license:bsd-3)))

(define-public go-github-com-cockroachdb-datadriven
  (package
    (name "go-github-com-cockroachdb-datadriven")
    (version "1.0.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/cockroachdb/datadriven")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1h2dhm4g1n8ny71lm495l5l842lwq320la0q8b8zmr4w3s5nyk09"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/cockroachdb/datadriven"))
    (propagated-inputs (list go-github-com-pmezard-go-difflib))
    (home-page "https://github.com/cockroachdb/datadriven")
    (synopsis "Data-Driven Tests for Go")
    (description
     "This repository implements an extension of
@@url{https://github.com/golang/go/wiki/@code{TableDrivenTests,Table-Driven}
Testing}.  Instead of building and iterating over a table in the test code, the
input is further separated into files (or inline strings).  For certain classes
of tests, this can significantly reduce the friction involved in writing and
reading these tests.")
    (license license:asl2.0)))

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

(define-public go-github-com-dell-goscaleio
  (package
    (name "go-github-com-dell-goscaleio")
    (version "1.20.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/dell/goscaleio")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "13j86pdfvr0266y99rm72ihwkjgb4vsfhnv2xr3sgr7gkpi790dx"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go go-1.24
      #:import-path "github.com/dell/goscaleio"))
    (propagated-inputs (list go-gopkg-in-yaml-v3
                             go-github-com-stretchr-testify
                             go-github-com-joho-godotenv ; packaged
                             go-github-com-google-uuid))
    (home-page "https://github.com/dell/goscaleio")
    (synopsis "Goscaleio")
    (description
     "The project represents API bindings that can be used to provide @code{ScaleIO}
functionality into other Go applications.")
    (license license:asl2.0)))

(define-public go-github-com-digitalocean-go-libvirt
  (package
    (name "go-github-com-digitalocean-go-libvirt")
    (version "0.0.0-20250616175656-5843751af96c")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/digitalocean/go-libvirt")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "10vh1f5fz854f3m7ms3amvif67mkgl8j412z775danyhpfyyrlp9"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "github.com/digitalocean/go-libvirt"))
    (propagated-inputs (list go-golang-org-x-tools go-golang-org-x-crypto
                             go-github-com-stretchr-testify))
    (home-page "https://github.com/digitalocean/go-libvirt")
    (synopsis "libvirt")
    (description "Package libvirt is a pure Go interface to libvirt.")
    (license license:asl2.0)))

(define-public go-github-com-digitalocean-go-qemu
  (package
    (name "go-github-com-digitalocean-go-qemu")
    (version "0.0.0-20250212194115-ee9b0668d242")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/digitalocean/go-qemu")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1h2b2njs3ny7jr7h8nxsvp70sx3ax90cxnxaypr8c42a9rvk7hp0"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/digitalocean/go-qemu"))
    (propagated-inputs (list go-golang-org-x-sys go-github-com-fatih-camelcase
                             go-github-com-digitalocean-go-libvirt
                             go-github-com-alecthomas-repr))
    (home-page "https://github.com/digitalocean/go-qemu")
    (synopsis "go-qemu")
    (description
     "@@code{go-qemu} is a collection of Go packages for interacting with running QEMU
instances.  Apache 2.0 Licensed.")
    (license license:asl2.0)))

(define-public go-github-com-diskfs-go-diskfs
  (package
    (name "go-github-com-diskfs-go-diskfs")
    (version "1.6.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/diskfs/go-diskfs")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0hqd76zdir9b7m28ahz1cr0bcdi42hgh9vw7wp77zqq4gdibp317"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go go-1.22
      #:import-path "github.com/diskfs/go-diskfs"))
    (propagated-inputs (list go-golang-org-x-sys
                             go-github-com-ulikunitz-xz
                             go-github-com-sirupsen-logrus
                             go-github-com-pkg-xattr
                             go-github-com-pierrec-lz4-v4
                             go-github-com-klauspost-compress
                             go-github-com-google-uuid
                             go-github-com-google-go-cmp
                             go-github-com-go-test-deep
                             go-github-com-elliotwutingfeng-asciiset
                             go-github-com-djherbis-times))
    (home-page "https://github.com/diskfs/go-diskfs")
    (synopsis "go-diskfs")
    (description
     "Package diskfs implements methods for creating and manipulating disks and
filesystems.")
    (license license:expat)))

(define-public go-github-com-dmarkham-enumer
  (package
    (name "go-github-com-dmarkham-enumer")
    (version "1.5.11")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/dmarkham/enumer")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0qjv1zjqbgsfcllcna1hcfgsisafhx4i5s59j6zp1nmb6q77hp6c"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "github.com/dmarkham/enumer"))
    (propagated-inputs (list go-golang-org-x-tools
                             go-github-com-pascaldekloe-name))
    (home-page "https://github.com/dmarkham/enumer")
    (synopsis "Enumer")
    (description
     "Enumer is a tool to generate Go code that adds useful methods to Go enums
(constants with a specific type).  It started as a fork of Rob Pike’s Stringer
tool.")
    (license unknown-license!)))

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

(define-public go-github-com-dnsimple-dnsimple-go
  (package
    (name "go-github-com-dnsimple-dnsimple-go")
    (version "1.7.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/dnsimple/dnsimple-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "012xfsnj68303kiqsldg1jm5iklxj573mrch3dw17gxnlnc4fjdc"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/dnsimple/dnsimple-go"))
    (propagated-inputs (list go-golang-org-x-oauth2
                             go-github-com-stretchr-testify
                             go-github-com-shopspring-decimal
                             go-github-com-google-go-querystring))
    (home-page "https://github.com/dnsimple/dnsimple-go")
    (synopsis "DNSimple Go Client")
    (description "This package provides a Go client for the
@@url{https://developer.dnsimple.com/v2/,DNSimple API v2}.")
    (license license:expat)))

(define-public go-github-com-eapache-go-resiliency
  (package
    (name "go-github-com-eapache-go-resiliency")
    (version "1.7.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/eapache/go-resiliency")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "07a1r3c2spd37k3riy4fxz8v8ibxiprf8a3vw788whz4mlp6gm40"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/eapache/go-resiliency"))
    (home-page "https://github.com/eapache/go-resiliency")
    (synopsis "go-resiliency")
    (description "Resiliency patterns for golang.  Based in part on
@@url{https://github.com/Netflix/Hystrix,Hystrix},
@@url{https://github.com/Shopify/semian,Semian}, and others.")
    (license license:expat)))

(define-public go-github-com-eapache-go-xerial-snappy
  (package
    (name "go-github-com-eapache-go-xerial-snappy")
    (version "0.0.0-20230731223053-c322873962e3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/eapache/go-xerial-snappy")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "07ls4rvvf9az7a9ild932n8fbckqf6v5xz6dpn5xmbxix981xfx1"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/eapache/go-xerial-snappy"))
    (propagated-inputs (list go-github-com-golang-snappy))
    (home-page "https://github.com/eapache/go-xerial-snappy")
    (synopsis "go-xerial-snappy")
    (description "Xerial-compatible Snappy framing support for golang.")
    (license license:expat)))

(define-public go-github-com-elastic-go-sysinfo
  (package
    (name "go-github-com-elastic-go-sysinfo")
    (version "1.15.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/elastic/go-sysinfo")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "085ldi38zpxnalgncnf7mwga4vplfaw3ps46mqfp94hkiblz56zi"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/elastic/go-sysinfo"))
    (propagated-inputs (list go-howett-net-plist go-golang-org-x-sys
                             go-github-com-stretchr-testify
                             go-github-com-prometheus-procfs
                             go-github-com-elastic-go-windows))
    (home-page "https://github.com/elastic/go-sysinfo")
    (synopsis "go-sysinfo")
    (description
     "go-sysinfo is a library for collecting system information.  This includes
information about the host machine and processes running on the host.")
    (license license:asl2.0)))

(define-public go-github-com-elastic-go-windows
  (package
    (name "go-github-com-elastic-go-windows")
    (version "1.0.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/elastic/go-windows")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0gamvz23pikfqq2yim5kwmnz1i4jw6hc6cfvrl7jd06n116xzf98"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/elastic/go-windows"))
    (propagated-inputs (list go-golang-org-x-sys
                             go-github-com-stretchr-testify))
    (home-page "https://github.com/elastic/go-windows")
    (synopsis "go-windows")
    (description "Package windows contains various Windows system calls.")
    (license license:asl2.0)))

(define-public go-github-com-elliotwutingfeng-asciiset
  (package
    (name "go-github-com-elliotwutingfeng-asciiset")
    (version "0.0.0-20250521213949-458fd813c616")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/elliotwutingfeng/asciiset")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "12crf51a30md42ri7mdd0qbykxixrymn0z5f85m8kc004qbvg3mk"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/elliotwutingfeng/asciiset"))
    (home-page "https://github.com/elliotwutingfeng/asciiset")
    (synopsis "asciiset")
    (description "Package asciiset is an ASCII character bitset.")
    (license license:bsd-3)))

(define-public go-github-com-evanphx-json-patch
  (package
    (name "go-github-com-evanphx-json-patch")
    (version "5.9.11")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/evanphx/json-patch")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0sydllg5hsmvwdr1276qzl8v3xsr3jjrimvvgl9096rn3kf3664m"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/evanphx/json-patch/v5"
      #:unpack-path "github.com/evanphx/json-patch"))
    (propagated-inputs (list go-github-com-jessevdk-go-flags))
    (home-page "https://github.com/evanphx/json-patch")
    (synopsis #f)
    (description #f)
    (license license:bsd-3)))

(define-public go-github-com-exoscale-egoscale
  (package
    (name "go-github-com-exoscale-egoscale")
    (version "3.1.22")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/exoscale/egoscale")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1rpcwy8fi8pg8fv21hay4rnqvkh7c0z2wl1asym24rym02i8y8vw"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "github.com/exoscale/egoscale/v3"
      #:unpack-path "github.com/exoscale/egoscale"))
    (propagated-inputs (list go-github-com-spf13-viper
                             go-github-com-google-uuid
                             go-github-com-go-playground-validator-v10
                             go-github-com-diskfs-go-diskfs))
    (home-page "https://github.com/exoscale/egoscale")
    (synopsis "Egoscale v3")
    (description
     "Package v3 provides primitives to interact with the openapi HTTP API.")
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

(define-public go-github-com-franela-goreq
  (package
    (name "go-github-com-franela-goreq")
    (version "0.0.0-20171204163338-bcd34c9993f8")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/franela/goreq")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "055a20nc5f1blk2swiwpwqpxd3z495ms1qr6a7cbbss1w3a7a7sb"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/franela/goreq"))
    (home-page "https://github.com/franela/goreq")
    (synopsis "GoReq")
    (description "Simple and sane HTTP request library for Go language.")
    (license license:expat)))

(define-public go-github-com-go-acme-lego
  (package
    (name "go-github-com-go-acme-lego")
    (version "4.23.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/go-acme/lego")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1i6g42qn7qd6zn0bmff1ady1x06k4m0yz6ncm439nrj5y5832nwl"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "github.com/go-acme/lego/v4"
      #:unpack-path "github.com/go-acme/lego"))
    (propagated-inputs (list go-software-sslmate-com-src-go-pkcs12
                        go-gopkg-in-yaml-v2
                        go-gopkg-in-ns1-ns1-go-v2
                        go-google-golang-org-api
                        go-golang-org-x-time
                        go-golang-org-x-text
                        go-golang-org-x-oauth2
                        go-golang-org-x-net
                        go-golang-org-x-crypto
                        go-github-com-yandex-cloud-go-sdk
                        go-github-com-yandex-cloud-go-genproto
                        go-github-com-vultr-govultr-v3
                        go-github-com-volcengine-volc-sdk-golang
                        go-github-com-vinyldns-go-vinyldns
                        go-github-com-urfave-cli-v2
                        go-github-com-ultradns-ultradns-go-sdk
                        go-github-com-transip-gotransip-v6
                        go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-dnspod
                        go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-common
                        go-github-com-stretchr-testify
                        go-github-com-softlayer-softlayer-go
                        go-github-com-selectel-go-selvpcclient-v3
                        go-github-com-selectel-domains-go
                        go-github-com-scaleway-scaleway-sdk-go
                        go-github-com-sacloud-iaas-api-go
                        go-github-com-sacloud-api-client-go
                        go-github-com-regfish-regfish-dnsapi-go
                        go-github-com-rainycape-memcache
                        go-github-com-pquerna-otp
                        go-github-com-ovh-go-ovh
                        go-github-com-oracle-oci-go-sdk-v65
                        go-github-com-nzdjb-go-metaname
                        go-github-com-nrdcg-porkbun
                        go-github-com-nrdcg-nodion
                        go-github-com-nrdcg-namesilo
                        go-github-com-nrdcg-mailinabox
                        go-github-com-nrdcg-goinwx
                        go-github-com-nrdcg-goacmedns
                        go-github-com-nrdcg-freemyip
                        go-github-com-nrdcg-dnspod-go
                        go-github-com-nrdcg-desec
                        go-github-com-nrdcg-bunny-go
                        go-github-com-nrdcg-auroradns
                        go-github-com-namedotcom-go
                        go-github-com-mimuret-golang-iij-dpf
                        go-github-com-miekg-dns
                        go-github-com-mattn-go-isatty
                        go-github-com-liquidweb-liquidweb-go
                        go-github-com-linode-linodego
                        go-github-com-labbsr0x-bindman-dns-webhook
                        go-github-com-infobloxopen-infoblox-go-client-v2
                        go-github-com-iij-doapi
                        go-github-com-huaweicloud-huaweicloud-sdk-go-v3
                        go-github-com-hashicorp-go-version
                        go-github-com-hashicorp-go-retryablehttp
                        go-github-com-gophercloud-utils
                        go-github-com-gophercloud-gophercloud
                        go-github-com-google-go-querystring
                        go-github-com-go-viper-mapstructure-v2
                        go-github-com-go-jose-go-jose-v4
                        go-github-com-exoscale-egoscale-v3
                        go-github-com-dnsimple-dnsimple-go
                        go-github-com-cloudflare-cloudflare-go
                        go-github-com-civo-civogo
                        go-github-com-cenkalti-backoff-v4
                        go-github-com-baidubce-bce-sdk-go
                        go-github-com-aws-aws-sdk-go-v2-service-sts
                        go-github-com-aws-aws-sdk-go-v2-service-s3
                        go-github-com-aws-aws-sdk-go-v2-service-route53
                        go-github-com-aws-aws-sdk-go-v2-service-lightsail
                        go-github-com-aws-aws-sdk-go-v2-credentials
                        go-github-com-aws-aws-sdk-go-v2-config
                        go-github-com-aws-aws-sdk-go-v2
                        go-github-com-aliyun-alibaba-cloud-sdk-go
                        go-github-com-akamai-akamaiopen-edgegrid-golang
                        go-github-com-opendns-vegadns2client
                        go-github-com-burntsushi-toml
                        go-github-com-azure-go-autorest-autorest-to
                        go-github-com-azure-go-autorest-autorest-azure-auth
                        go-github-com-azure-go-autorest-autorest
                        go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-resourcegraph-armresourcegraph
                        go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-privatedns-armprivatedns
                        go-github-com-azure-azure-sdk-for-go-sdk-resourcemanager-dns-armdns
                        go-github-com-azure-azure-sdk-for-go-sdk-azidentity
                        go-github-com-azure-azure-sdk-for-go-sdk-azcore
                        go-github-com-azure-azure-sdk-for-go
                        go-cloud-google-com-go-compute-metadata))
    (home-page "https://github.com/go-acme/lego")
    (synopsis "Lego")
    (description "Let's Encrypt client and ACME library written in Go.")
    (license license:expat)))

(define-public go-github-com-go-faster-city
  (package
    (name "go-github-com-go-faster-city")
    (version "1.0.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/go-faster/city")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0nssg8ynnsk4isrh88h4v8srzq46z8lqb867gr0dbpkasmq3d8dx"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/go-faster/city"))
    (home-page "https://github.com/go-faster/city")
    (synopsis "city")
    (description "Package city implements @code{CityHash} in go.")
    (license license:expat)))

(define-public go-github-com-go-faster-errors
  (package
    (name "go-github-com-go-faster-errors")
    (version "0.7.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/go-faster/errors")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0s17dmrgrh20fkv1vj3p04pj48h8fs13ah648dpxy4zp6rkwwzwc"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/go-faster/errors"))
    (home-page "https://github.com/go-faster/errors")
    (synopsis "errors")
    (description "Package errors implements functions to manipulate errors.")
    (license license:bsd-3)))

(define-public go-github-com-go-kit-kit
  (package
    (name "go-github-com-go-kit-kit")
    (version "0.13.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/go-kit/kit")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0c9vra93whqd0mf9g8krw8drlv9cv8v0b9abslvyms4qyy56j171"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/go-kit/kit"))
    (propagated-inputs (list go-google-golang-org-protobuf
                        go-google-golang-org-grpc
                        go-golang-org-x-time
                        go-golang-org-x-sync
                        go-go-uber-org-zap
                        go-go-opencensus-io
                        go-go-etcd-io-etcd-client-v3
                        go-go-etcd-io-etcd-client-v2
                        go-go-etcd-io-etcd-client-pkg-v3
                        go-github-com-streadway-handy
                        go-github-com-sony-gobreaker
                        go-github-com-sirupsen-logrus
                        go-github-com-rabbitmq-amqp091-go
                        go-github-com-prometheus-client-golang ; packaged

                        go-github-com-performancecopilot-speed-v4
                        go-github-com-openzipkin-zipkin-go
                        go-github-com-opentracing-opentracing-go
                        go-github-com-nats-io-nats-go
                        go-github-com-nats-io-nats-server-v2
                        go-github-com-influxdata-influxdb1-client
                        go-github-com-hudl-fargo
                        go-github-com-hashicorp-consul-api
                        go-github-com-golang-jwt-jwt-v4
                        go-github-com-go-zookeeper-zk
                        go-github-com-go-kit-log
                        go-github-com-casbin-casbin-v2
                        go-github-com-aws-aws-sdk-go-v2-service-cloudwatch
                        go-github-com-aws-aws-sdk-go-v2
                        go-github-com-aws-aws-sdk-go
                        go-github-com-afex-hystrix-go
                        go-github-com-vividcortex-gohistogram))
    (home-page "https://github.com/go-kit/kit")
    (synopsis "Go kit")
    (description
     "@@strong{Go kit} is a @@strong{programming toolkit} for building microservices
(or elegant monoliths) in Go.  We solve common problems in distributed systems
and application architecture so you can focus on delivering business value.")
    (license license:expat)))

(define-public go-github-com-go-logr-zapr
  (package
    (name "go-github-com-go-logr-zapr")
    (version "1.3.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/go-logr/zapr")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "07kg9h853jijfc86zm07856sisac6jwvn06gbk694fg00mj1806f"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/go-logr/zapr"))
    (propagated-inputs (list go-go-uber-org-zap go-github-com-stretchr-testify
                             go-github-com-go-logr-logr))
    (home-page "https://github.com/go-logr/zapr")
    (synopsis "Zapr ⚡")
    (description
     "Package zapr defines an implementation of the github.com/go-logr/logr interfaces
built on top of Zap (go.uber.org/zap).")
    (license license:asl2.0)))

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

(define-public go-github-com-gobs-pretty
  (package
    (name "go-github-com-gobs-pretty")
    (version "0.0.0-20180724170744-09732c25a95b")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/gobs/pretty")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0h5s7kq5xhsbkliwv6rmb855sa48206kf7cx2sli40z79fh2iqya"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/gobs/pretty"))
    (home-page "https://github.com/gobs/pretty")
    (synopsis "pretty")
    (description "Pretty-print Go data structures.")
    (license license:expat)))

(define-public go-github-com-goji-httpauth
  (package
    (name "go-github-com-goji-httpauth")
    (version "0.0.0-20160601135302-2da839ab0f4d")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/goji/httpauth")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0rcz1qxdbc2gw0gaj81kag94k98izs9vmhcp5mzs7979s7q4kym1"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/goji/httpauth"))
    (home-page "https://github.com/goji/httpauth")
    (synopsis "goji/httpauth")
    (description
     "@@code{httpauth} currently provides
@@url{http://tools.ietf.org/html/rfc2617,HTTP Basic Authentication middleware}
for Go.  It is compatible with Go's own @@code{net/http},
@@url{https://goji.io,goji}, Gin & anything that speaks the @@code{http.Handler}
interface.")
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

(define-public go-github-com-google-go-github
  (package
    (name "go-github-com-google-go-github")
    (version "32.1.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/google/go-github")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0qaxcm2p655r1jd59rv1hd58driadw5hxlfy7h53c7pzcsmf2546"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/google/go-github/v32"
      #:unpack-path "github.com/google/go-github"))
    (propagated-inputs (list go-google-golang-org-appengine
                             go-golang-org-x-oauth2 go-golang-org-x-crypto
                             go-github-com-google-go-querystring))
    (home-page "https://github.com/google/go-github")
    (synopsis "go-github")
    (description
     "go-github is a Go client library for accessing the
@@url{https://developer.github.com/v3/,@code{GitHub} API v3}.")
    (license license:bsd-3)))

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

(define-public go-github-com-google-martian
  (package
    (name "go-github-com-google-martian")
    (version "2.1.0+incompatible")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/google/martian")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "197hil6vrjk50b9wvwyzf61csid83whsjj6ik8mc9r2lryxlyyrp"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/google/martian"))
    (home-page "https://github.com/google/martian")
    (synopsis "Martian Proxy")
    (description
     "Package martian provides an HTTP/1.1 proxy with an API for configurable request
and response modifiers.")
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

(define-public go-github-com-googleapis-cloud-bigtable-clients-test
  (package
    (name "go-github-com-googleapis-cloud-bigtable-clients-test")
    (version "0.0.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/cloud-bigtable-clients-test")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "05nvmwmhj94na0a7nzmjh7703qji5pf9a0sjf219hwcl794hi26q"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "github.com/googleapis/cloud-bigtable-clients-test"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto
                             go-google-golang-org-api
                             go-github-com-stretchr-testify
                             go-github-com-google-go-cmp
                             go-github-com-golang-protobuf
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
      #:go #{go-#f}#
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
    (version "2.14.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/gax-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "10lx4d7bw2a9j5ymjwjbn4jnvqmg97p6hjnrdmjwpcgapq2yfmad"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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

(define-public go-github-com-gophercloud-gophercloud
  (package
    (name "go-github-com-gophercloud-gophercloud")
    (version "1.14.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/gophercloud/gophercloud")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0lwag9b2x898rw075bm3mzcfq0bwfz0gqkbqix79nnaqp0cqj1zf"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/gophercloud/gophercloud"))
    (propagated-inputs (list go-gopkg-in-yaml-v2 go-golang-org-x-crypto))
    (home-page "https://github.com/gophercloud/gophercloud")
    (synopsis "Gophercloud: an OpenStack SDK for Go")
    (description
     "Package gophercloud provides a multi-vendor interface to
@code{OpenStack-compatible} clouds.  The library has a three-level hierarchy:
providers, services, and resources.")
    (license license:asl2.0)))

(define-public go-github-com-gophercloud-utils
  (package
    (name "go-github-com-gophercloud-utils")
    (version "0.0.0-20231010081019-80377eca5d56")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/gophercloud/utils")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "12v12w7knf1q9v9za539g4crk7h78bwkq657wg1rgxcblv1vsj3m"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/gophercloud/utils"))
    (propagated-inputs (list go-gopkg-in-yaml-v2
                             go-golang-org-x-text
                             go-golang-org-x-sys
                             go-github-com-mitchellh-go-homedir
                             go-github-com-hashicorp-go-uuid
                             go-github-com-gophercloud-gophercloud))
    (home-page "https://github.com/gophercloud/utils")
    (synopsis #f)
    (description #f)
    (license license:asl2.0)))

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

(define-public go-github-com-grpc-ecosystem-go-grpc-middleware
  (package
    (name "go-github-com-grpc-ecosystem-go-grpc-middleware")
    (version "2.3.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/grpc-ecosystem/go-grpc-middleware")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1ln71gclxw9wi23ai2ph8rzdj1mpb0zj1z1g7y0ivk6c9a93bl98"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "github.com/grpc-ecosystem/go-grpc-middleware/v2"
      #:unpack-path "github.com/grpc-ecosystem/go-grpc-middleware"))
    (propagated-inputs (list go-google-golang-org-protobuf
                        go-google-golang-org-grpc
                        go-golang-org-x-oauth2
                        go-golang-org-x-net
                        go-github-com-stretchr-testify
                        go-buf-build-go-protovalidate ; packaged
                        go-buf-build-gen-go-bufbuild-protovalidate-protocolbuffers-go ; packaged
))
    (home-page "https://github.com/grpc-ecosystem/go-grpc-middleware")
    (synopsis "Go gRPC Middleware")
    (description "Package middleware.")
    (license license:asl2.0)))


(define-public go-github-com-grpc-ecosystem-grpc-gateway
  (package
    (name "go-github-com-grpc-ecosystem-grpc-gateway")
    (version "2.27.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/grpc-ecosystem/grpc-gateway")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0c7dfchv822mvdfv4paw64amgbmv124xxccmsam34jsxwfsbgf3b"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "github.com/grpc-ecosystem/grpc-gateway/v2"
      #:unpack-path "github.com/grpc-ecosystem/grpc-gateway"))
    (propagated-inputs (list go-gopkg-in-yaml-v3
                             go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-golang-org-x-text
                             go-golang-org-x-oauth2
                             go-github-com-rogpeppe-fastuuid
                             go-github-com-google-go-cmp
                             go-github-com-antihax-optional))
    (home-page "https://github.com/grpc-ecosystem/grpc-gateway")
    (synopsis "About")
    (description
     "The @code{gRPC-Gateway} is a plugin of the Google protocol buffers compiler
@@url{https://github.com/protocolbuffers/protobuf,protoc}.  It reads protobuf
service definitions and generates a reverse-proxy server which translates a
RESTful HTTP API into @code{gRPC}.  This server is generated according to the
@@url{https://github.com/googleapis/googleapis/raw/master/google/api/http.proto#L46,(code
google.api.http)} annotations in your service definitions.")
    (license license:bsd-3)))

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
      #:go #{go-#f}#
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

(define-public go-github-com-hashicorp-cli
  (package
    (name "go-github-com-hashicorp-cli")
    (version "1.1.7")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/hashicorp/cli")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0zbxmbdc6pj8c7ni8l78qxnrkbbqz2wc4rf7qw78c1fc6kfcs4ff"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/hashicorp/cli"))
    (propagated-inputs (list go-github-com-posener-complete
                             go-github-com-mattn-go-isatty
                             go-github-com-fatih-color
                             go-github-com-bgentry-speakeasy
                             go-github-com-armon-go-radix
                             go-github-com-masterminds-sprig-v3))
    (home-page "https://github.com/hashicorp/cli")
    (synopsis "Go CLI Library")
    (description
     "cli is a library for implementing command-line interfaces in Go.  cli is the
library that powers the CLI for
@@url{https://github.com/hashicorp/packer,Packer},
@@url{https://github.com/hashicorp/consul,Consul},
@@url{https://github.com/hashicorp/vault,Vault},
@@url{https://github.com/hashicorp/terraform,Terraform},
@@url{https://github.com/hashicorp/nomad,Nomad}, and more.")
    (license license:mpl2.0)))

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
      #:go #{go-#f}#
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

(define-public go-github-com-hashicorp-go-checkpoint
  (package
    (name "go-github-com-hashicorp-go-checkpoint")
    (version "0.5.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/hashicorp/go-checkpoint")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1g20nkcypl31hvhz3khznqp5xzdg8z4rcin00wvq6kqn5acvm5s1"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/hashicorp/go-checkpoint"))
    (propagated-inputs (list go-github-com-hashicorp-go-uuid
                             go-github-com-hashicorp-go-cleanhttp))
    (home-page "https://github.com/hashicorp/go-checkpoint")
    (synopsis "Go Checkpoint Client")
    (description
     "@@url{http://checkpoint.hashicorp.com,Checkpoint} is an internal service at
Hashicorp that we use to check version information, broadcast security
bulletins, etc.")
    (license license:mpl2.0)))

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

(define-public go-github-com-hashicorp-hc-install
  (package
    (name "go-github-com-hashicorp-hc-install")
    (version "0.9.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/hashicorp/hc-install")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1fgyk53bgjqd1yswwy9mzmyh4kc678jwjg9d7r29x79hcff3vr3x"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "github.com/hashicorp/hc-install"))
    (propagated-inputs (list go-golang-org-x-mod
                             go-github-com-hashicorp-logutils
                             go-github-com-hashicorp-go-version
                             go-github-com-hashicorp-go-retryablehttp
                             go-github-com-hashicorp-go-multierror
                             go-github-com-hashicorp-go-checkpoint
                             go-github-com-hashicorp-cli
                             go-github-com-google-go-cmp
                             go-github-com-go-git-go-git-v5
                             go-github-com-protonmail-go-crypto))
    (home-page "https://github.com/hashicorp/hc-install")
    (synopsis "hc-install")
    (description
     "An @@strong{experimental} Go module for downloading or locating @code{HashiCorp}
binaries, verifying signatures and checksums, and asserting version constraints.")
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

(define-public go-github-com-hashicorp-terraform-exec
  (package
    (name "go-github-com-hashicorp-terraform-exec")
    (version "0.23.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/hashicorp/terraform-exec")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "16pd62xqjcxcs57jk85rzlcxpf3sz8fvxl5d79n9vrc47v6kbigl"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "github.com/hashicorp/terraform-exec"))
    (propagated-inputs (list go-github-com-zclconf-go-cty-debug
                             go-github-com-zclconf-go-cty
                             go-github-com-hashicorp-terraform-json
                             go-github-com-hashicorp-hc-install
                             go-github-com-hashicorp-go-version
                             go-github-com-google-go-cmp))
    (home-page "https://github.com/hashicorp/terraform-exec")
    (synopsis "terraform-exec")
    (description
     "This package provides a Go module for constructing and running
@@url{https://terraform.io,Terraform} CLI commands.  Structured return values
use the data types defined in
@@url{https://github.com/hashicorp/terraform-json,terraform-json}.")
    (license license:mpl2.0)))

(define-public go-github-com-hashicorp-terraform-json
  (package
    (name "go-github-com-hashicorp-terraform-json")
    (version "0.25.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/hashicorp/terraform-json")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1fiq047jdd5vdlynvnlg01qd391azldg79anv4cqm0yajf55h5h9"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/hashicorp/terraform-json"))
    (propagated-inputs (list go-github-com-zclconf-go-cty-debug
                             go-github-com-zclconf-go-cty
                             go-github-com-sebdah-goldie
                             go-github-com-mitchellh-copystructure
                             go-github-com-hashicorp-go-version
                             go-github-com-google-go-cmp
                             go-github-com-davecgh-go-spew))
    (home-page "https://github.com/hashicorp/terraform-json")
    (synopsis "terraform-json")
    (description
     "Package tfjson is a de-coupled helper library containing types for the plan
format output by \"terraform show -json\" command.  This command is designed for
the export of Terraform plan data in a format that can be easily processed by
tools unrelated to Terraform.")
    (license license:mpl2.0)))

(define-public go-github-com-hdrhistogram-hdrhistogram-go
  (package
    (name "go-github-com-hdrhistogram-hdrhistogram-go")
    (version "1.1.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/HdrHistogram/hdrhistogram-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0l12j3dvljp868p1d2izpiq7ysll05fchvxij8zb8r160lmqv58r"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/HdrHistogram/hdrhistogram-go"))
    (propagated-inputs (list go-gonum-org-v1-gonum
                             go-github-com-stretchr-testify
                             go-github-com-google-go-cmp))
    (home-page "https://github.com/HdrHistogram/hdrhistogram-go")
    (synopsis "hdrhistogram-go")
    (description
     "Package hdrhistogram provides an implementation of Gil Tene's HDR Histogram data
structure.  The HDR Histogram allows for fast and accurate analysis of the
extreme ranges of data with non-normal distributions, like latency.")
    (license license:expat)))

(define-public go-github-com-huaweicloud-huaweicloud-sdk-go-v3
  (package
    (name "go-github-com-huaweicloud-huaweicloud-sdk-go-v3")
    (version "0.1.157")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/huaweicloud/huaweicloud-sdk-go-v3")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1nknadsrmcdf2gsbk4wk6alaj2mfrpcvy6s99pncwyp8np437bx8"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/huaweicloud/huaweicloud-sdk-go-v3"))
    (propagated-inputs (list go-gopkg-in-yaml-v3
                             go-gopkg-in-ini-v1
                             go-golang-org-x-crypto
                             go-go-mongodb-org-mongo-driver
                             go-github-com-tjfoc-gmsm
                             go-github-com-stretchr-testify
                             go-github-com-json-iterator-go))
    (home-page "https://github.com/huaweicloud/huaweicloud-sdk-go-v3")
    (synopsis "Requirements")
    (description "Package sdk_doc created for dependence ensure.")
    (license unknown-license!)))

(define-public go-github-com-hudl-fargo
  (package
    (name "go-github-com-hudl-fargo")
    (version "1.4.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/hudl/fargo")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "18pk1b5yybkghrjxskgssz8gzpv37k8w7gk0cldhcnffx85rqi0m"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/hudl/fargo"))
    (propagated-inputs (list go-gopkg-in-gcfg-v1
                             go-github-com-smartystreets-goconvey
                             go-github-com-op-go-logging
                             go-github-com-miekg-dns
                             go-github-com-franela-goreq
                             go-github-com-clbanning-mxj
                             go-github-com-cenkalti-backoff-v4))
    (home-page "https://github.com/hudl/fargo")
    (synopsis "fargo")
    (description
     "Netflix Eureka client in golang.  Named for the show Eureka.")
    (license license:expat)))

(define-public go-github-com-ibm-sarama
  (package
    (name "go-github-com-ibm-sarama")
    (version "1.45.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/IBM/sarama")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "033f4rq2vap5lnsjrchpxcw5fsc1n9v85fw3yz6iy8zv85kzlbln"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "github.com/IBM/sarama"))
    (propagated-inputs (list go-golang-org-x-sync
                             go-golang-org-x-net
                             go-github-com-stretchr-testify
                             go-github-com-rcrowley-go-metrics
                             go-github-com-pierrec-lz4-v4
                             go-github-com-klauspost-compress
                             go-github-com-jcmturner-gokrb5-v8
                             go-github-com-jcmturner-gofork
                             go-github-com-hashicorp-go-multierror
                             go-github-com-fortytw2-leaktest
                             go-github-com-eapache-queue ; packaged
                             go-github-com-eapache-go-xerial-snappy
                             go-github-com-eapache-go-resiliency
                             go-github-com-davecgh-go-spew))
    (home-page "https://github.com/IBM/sarama")
    (synopsis "sarama")
    (description
     "Package sarama is a pure Go client library for dealing with Apache Kafka
(versions 0.8 and later).  It includes a high-level API for easily producing and
consuming messages, and a low-level API for controlling bytes on the wire when
the high-level API is insufficient.  Usage examples for the high-level APIs are
provided inline with their full documentation.")
    (license license:expat)))

(define-public go-github-com-iij-doapi
  (package
    (name "go-github-com-iij-doapi")
    (version "0.0.0-20190504054126-0bbf12d6d7df")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/iij/doapi")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1s47pyh68yaj6ccsd0xhr5hqqx03irjippxivhz84lflcgzwaa5m"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/iij/doapi"))
    (home-page "https://github.com/iij/doapi")
    (synopsis "Golang binding for DO API")
    (description "Package doapi : DO APIクライアントモジュール.")
    (license license:asl2.0)))

(define-public go-github-com-influxdata-influxdb1-client
  (package
    (name "go-github-com-influxdata-influxdb1-client")
    (version "0.0.0-20220302092344-a9ab5670611c")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/influxdata/influxdb1-client")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0chyjhbqp7wqx3ynfsy8a9zf1c7a03ywzgm0p3yalz9gsll7cnv8"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/influxdata/influxdb1-client"))
    (home-page "https://github.com/influxdata/influxdb1-client")
    (synopsis "influxdb1-clientv2")
    (description
     "Package client implements a now-deprecated client for @code{InfluxDB}; use
github.com/influxdata/influxdb1-client/v2 instead.")
    (license license:expat)))

(define-public go-github-com-infobloxopen-infoblox-go-client
  (package
    (name "go-github-com-infobloxopen-infoblox-go-client")
    (version "2.10.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/infobloxopen/infoblox-go-client")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1g97frwr910a8k557yaa76pc8blawx1q349bmgb0vq4z36bd0vix"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/infobloxopen/infoblox-go-client/v2"
      #:unpack-path "github.com/infobloxopen/infoblox-go-client"))
    (propagated-inputs (list go-golang-org-x-net go-github-com-sirupsen-logrus
                             go-github-com-onsi-gomega
                             go-github-com-onsi-ginkgo-v2))
    (home-page "https://github.com/infobloxopen/infoblox-go-client")
    (synopsis "Infoblox Go Client")
    (description
     "An Infoblox NIOS WAPI client library in Golang.  The library enables us to do a
CRUD oprations on NIOS Objects.")
    (license license:asl2.0)))

(define-public go-github-com-j-keck-arping
  (package
    (name "go-github-com-j-keck-arping")
    (version "1.0.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/j-keck/arping")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0xrlv7sfh3v1ns6v02wm1qch5b3d1hr4isx32bisji73pijkha8n"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/j-keck/arping"))
    (home-page "https://github.com/j-keck/arping")
    (synopsis "arping")
    (description
     "Package arping is a native go library to ping a host per arp datagram, or query
a host mac address.")
    (license license:expat)))

(define-public go-github-com-jon-whit-go-grpc-prometheus
  (package
    (name "go-github-com-jon-whit-go-grpc-prometheus")
    (version "1.4.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/jon-whit/go-grpc-prometheus")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0gdkdval70agfimn7nwrh9pcqfsrzvag86bfbq2119pbin7aq7kc"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/jon-whit/go-grpc-prometheus"))
    (propagated-inputs (list go-google-golang-org-grpc
                             go-golang-org-x-net
                             go-github-com-stretchr-testify
                             go-github-com-prometheus-client-model
                             go-github-com-prometheus-client-golang ; packaged

                             go-github-com-golang-protobuf))
    (home-page "https://github.com/jon-whit/go-grpc-prometheus")
    (synopsis "(Deprecated) Go gRPC Interceptors for Prometheus monitoring")
    (description
     "@@url{https://prometheus.io/,Prometheus} monitoring for your
@@url{https://github.com/grpc/grpc-go,@code{gRPC} Go} servers and clients.")
    (license license:asl2.0)))

(define-public go-github-com-juju-gomaasapi
  (package
    (name "go-github-com-juju-gomaasapi")
    (version "0.0.0-20200602032615-aa561369c767")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/juju/gomaasapi")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0wyh6cfcrbmpy30m0cza5s0ipy8gcv8g6jvrqblsxglffh7waw6y"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/juju/gomaasapi"))
    (home-page "https://github.com/juju/gomaasapi")
    (synopsis #f)
    (description #f)
    (license license:lgpl3)))

(define-public go-github-com-labbsr0x-bindman-dns-webhook
  (package
    (name "go-github-com-labbsr0x-bindman-dns-webhook")
    (version "1.0.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/labbsr0x/bindman-dns-webhook")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1v9r66hzy8vj89q3hz2l94i5rczccf0qc9hnkg1p3sa78maa3q4a"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/labbsr0x/bindman-dns-webhook"))
    (propagated-inputs (list go-github-com-sirupsen-logrus
                             go-github-com-prometheus-client-golang ; packaged

                             go-github-com-labbsr0x-goh
                             go-github-com-gorilla-mux
                             go-github-com-go-errors-errors))
    (home-page "https://github.com/labbsr0x/bindman-dns-webhook")
    (synopsis "Bindman-DNS Webhook")
    (description
     "This repository lays out the pieces of code of a Bindman-DNS webhook.")
    (license license:expat)))

(define-public go-github-com-linode-linodego
  (package
    (name "go-github-com-linode-linodego")
    (version "1.53.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/linode/linodego")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0wbspfk12xg1wzl5s4861bisg14b1jhs98zf96dyidd0164dlpl7"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
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

(define-public go-github-com-liquidweb-go-lwapi
  (package
    (name "go-github-com-liquidweb-go-lwapi")
    (version "0.0.5")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/liquidweb/go-lwApi")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1znmh18qkc00j5fs9wkmhmzpqg5lh4ayxjlbybfcbgbsbjhzx83l"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/liquidweb/go-lwApi"))
    (home-page "https://github.com/liquidweb/go-lwApi")
    (synopsis "go-lwApi")
    (description
     "Package @code{lwApi} is a minimalist API client to @code{LiquidWeb's}
(@@url{https://www.liquidweb.com,https://www.liquidweb.com}) API:.")
    (license license:asl2.0)))

(define-public go-github-com-liquidweb-liquidweb-cli
  (package
    (name "go-github-com-liquidweb-liquidweb-cli")
    (version "0.6.10")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/liquidweb/liquidweb-cli")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "127hyxsy842vydsax54jrmq39vzqwydp2l424x6jxl5d9vh921bp"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/liquidweb/liquidweb-cli"))
    (propagated-inputs (list go-gopkg-in-yaml-v2
                             go-golang-org-x-crypto
                             go-github-com-spf13-viper
                             go-github-com-spf13-cobra
                             go-github-com-spf13-cast
                             go-github-com-mitchellh-mapstructure
                             go-github-com-mitchellh-go-homedir
                             go-github-com-liquidweb-go-lwapi
                             go-github-com-k0kubun-go-ansi
                             go-github-com-google-go-github-v32
                             go-github-com-c-bata-go-prompt))
    (home-page "https://github.com/liquidweb/liquidweb-cli")
    (synopsis "lw (liquidweb-cli)")
    (description "Copyright © @code{LiquidWeb}.")
    (license license:asl2.0)))

(define-public go-github-com-liquidweb-liquidweb-go
  (package
    (name "go-github-com-liquidweb-liquidweb-go")
    (version "1.6.4")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/liquidweb/liquidweb-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pxri9p8cw68ih1dm4ha2vfq1rvzmnlc4gj2sf97qj4h1v7fxmmb"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/liquidweb/liquidweb-go"))
    (propagated-inputs (list go-github-com-stretchr-testify
                             go-github-com-liquidweb-liquidweb-cli))
    (home-page "https://github.com/liquidweb/liquidweb-go")
    (synopsis "Usage")
    (description #f)
    (license license:asl2.0)))

(define-public go-github-com-lufia-plan9stats
  (package
    (name "go-github-com-lufia-plan9stats")
    (version "0.0.0-20250317134145-8bc96cf8fc35")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/lufia/plan9stats")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "17pgjlliylqb8hbxa9z06qldc5dggyb558vp188ha4ghf3j9xkhf"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/lufia/plan9stats"))
    (propagated-inputs (list go-github-com-google-go-cmp))
    (home-page "https://github.com/lufia/plan9stats")
    (synopsis "plan9stats")
    (description "Package stats provides statistic utilities for Plan 9.")
    (license license:bsd-3)))

(define-public go-github-com-maxbrunsfeld-counterfeiter
  (package
    (name "go-github-com-maxbrunsfeld-counterfeiter")
    (version "6.11.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/maxbrunsfeld/counterfeiter")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "03rnbh8csmd2iyn4r1igv9w5a3bhjlms4k2l65zr70haw3790g3z"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go go-1.23
      #:import-path "github.com/maxbrunsfeld/counterfeiter/v6"
      #:unpack-path "github.com/maxbrunsfeld/counterfeiter"))
    (propagated-inputs (list go-golang-org-x-tools go-golang-org-x-text
                             go-github-com-sclevine-spec
                             go-github-com-onsi-gomega))
    (home-page "https://github.com/maxbrunsfeld/counterfeiter")
    (synopsis "")
    (description
     "When writing unit-tests for an object, it is often useful to have fake
implementations of the object's collaborators.  In go, such fake implementations
cannot be generated automatically at runtime, and writing them by hand can be
quite arduous.")
    (license license:expat)))

(define-public go-github-com-mfridman-interpolate
  (package
    (name "go-github-com-mfridman-interpolate")
    (version "0.0.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/mfridman/interpolate")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "07r8yjw5nnzc4pblgw4sij8r7m4nd5pblr6pfb6g5v5jhc4kivfy"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/mfridman/interpolate"))
    (home-page "https://github.com/mfridman/interpolate")
    (synopsis "Interpolate")
    (description
     "This package provides a Go library for parameter expansion (like @@code{${NAME}}
or @@code{$NAME}) in strings from environment variables.  An implementation of ,
plus some other basic operations that you'd expect in a shell scripting
environment .")
    (license license:expat)))

(define-public go-github-com-mfridman-xflag
  (package
    (name "go-github-com-mfridman-xflag")
    (version "0.1.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/mfridman/xflag")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1jjmd3qlgp5zv5ll03b27yzdn5q33b7z0r5167v1h2cwqhn6jm2q"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/mfridman/xflag"))
    (home-page "https://github.com/mfridman/xflag")
    (synopsis "xflag")
    (description
     "The @@code{flag} package in Go's standard library takes an opinionated approach
to parsing flags.  It stops parsing when it encounters a positional argument.")
    (license license:expat)))

(define-public go-github-com-micahparks-keyfunc
  (package
    (name "go-github-com-micahparks-keyfunc")
    (version "2.1.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/MicahParks/keyfunc")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "09qajxr3njsimznvyxxq0bpl02rwh4ll298hi6cii6z7q6h48531"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/MicahParks/keyfunc/v2"
      #:unpack-path "github.com/MicahParks/keyfunc"))
    (propagated-inputs (list go-github-com-golang-jwt-jwt-v5 ;packaged
))
    (home-page "https://github.com/MicahParks/keyfunc")
    (synopsis "keyfunc")
    (description
     "The purpose of this package is to provide a
@@url{https://pkg.go.dev/github.com/golang-jwt/jwt/v5#Keyfunc,(code
jwt.Keyfunc)} for the
@@url{https://github.com/golang-jwt/jwt,github.com/golang-jwt/jwt/v5} package
using a JSON Web Key Set (JWK Set or JWKS) for parsing and verifying JSON Web
Tokens (JWTs).")
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
      #:go #{go-#f}#
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

(define-public go-github-com-mimuret-golang-iij-dpf
  (package
    (name "go-github-com-mimuret-golang-iij-dpf")
    (version "0.9.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/mimuret/golang-iij-dpf")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1m1qk0aqm5ypdhy08s82ib0jx5lkgg6bhv6izypgdcd9rbaznw1h"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/mimuret/golang-iij-dpf"))
    (propagated-inputs (list go-github-com-onsi-gomega
                             go-github-com-onsi-ginkgo
                             go-github-com-miekg-dns
                             go-github-com-json-iterator-go
                             go-github-com-jarcoal-httpmock
                             go-github-com-google-uuid
                             go-github-com-google-go-querystring))
    (home-page "https://github.com/mimuret/golang-iij-dpf")
    (synopsis "IIJ DNS Platform Service API for Go")
    (description #f)
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

(define-public go-github-com-mitchellh-go-testing-interface
  (package
    (name "go-github-com-mitchellh-go-testing-interface")
    (version "1.14.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/mitchellh/go-testing-interface")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1xrpdficli723g74mq36r4nj04i9yfh7hacp6wai3p7mq3gs5hac"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/mitchellh/go-testing-interface"))
    (home-page "https://github.com/mitchellh/go-testing-interface")
    (synopsis "go-testing-interface")
    (description
     "go-testing-interface is a Go library that exports an interface that
@@code{*testing.T} implements as well as a runtime version you can use in its
place.")
    (license license:expat)))

(define-public go-github-com-mkevac-debugcharts
  (package
    (name "go-github-com-mkevac-debugcharts")
    (version "0.0.0-20191222103121-ae1c48aa8615")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/mkevac/debugcharts")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "10y8vmnppf9izp1mnin2axbp2lmdml4i4drzpni2r1az9sph3mpy"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/mkevac/debugcharts"))
    (propagated-inputs (list go-github-com-shirou-gopsutil
                             go-github-com-gorilla-websocket
                             go-github-com-gorilla-handlers))
    (home-page "https://github.com/mkevac/debugcharts")
    (synopsis "debugcharts")
    (description "Simple live charts for memory consumption and GC pauses.")
    (license license:expat)))

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

(define-public go-github-com-moby-sys-symlink
  (package
    (name "go-github-com-moby-sys-symlink")
    (version "0.3.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/moby/sys")
             (commit (go-version->git-ref version
                                          #:subdir "symlink"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1i1phx1kk9qa4jf1i1nl23d3f6k9fn2w46274cl76cqw9hjqg868"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/moby/sys/symlink"
      #:unpack-path "github.com/moby/sys"))
    (propagated-inputs (list go-golang-org-x-sys))
    (home-page "https://github.com/moby/sys")
    (synopsis #f)
    (description
     "Package symlink implements
@@url{#@code{FollowSymlinkInScope,FollowSymlinkInScope}} which is an extension
of @@url{/path/filepath#@code{EvalSymlinks,path/filepath.EvalSymlinks}}, as well
as a Windows long-path aware version of
@@url{/path/filepath#@code{EvalSymlinks,path/filepath.EvalSymlinks}} from the Go
standard library.")
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

(define-public go-github-com-namedotcom-go
  (package
    (name "go-github-com-namedotcom-go")
    (version "0.0.0-20180403034216-08470befbe04")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/namedotcom/go")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "00ai7fd74sn4alqmpqsiyczirli50b7m059b6zzg1izy9g4cdd4g"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/namedotcom/go"))
    (home-page "https://github.com/namedotcom/go")
    (synopsis "Namecom")
    (description "Name.com API Go Client.")
    (license license:expat)))

(define-public go-github-com-natefinch-wrap
  (package
    (name "go-github-com-natefinch-wrap")
    (version "0.2.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/natefinch/wrap")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "12ms1ng1fi6i735nkf1zaj37y2g48196q30imp71ddzljvqbppmx"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/natefinch/wrap"))
    (home-page "https://github.com/natefinch/wrap")
    (synopsis "wrap")
    (description
     "Note: this code is still in alpha stage.  It but it may change subtley in the
near future, depending on what comes out of
@@url{https://github.com/golang/go/issues/52607,https://github.com/golang/go/issues/52607}.")
    (license license:expat)))

(define-public go-github-com-nats-io-nats-server
  (package
    (name "go-github-com-nats-io-nats-server")
    (version "2.11.6")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/nats-io/nats-server")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "06883v68ddvqz2l1lwi65i84m01l4d555c7xyb2g66i2ihgh8n0k"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
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

(define-public go-github-com-nrdcg-auroradns
  (package
    (name "go-github-com-nrdcg-auroradns")
    (version "1.1.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/nrdcg/auroradns")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1r0v7n1717qv5brdpdzk0829zyg750ar6hp3ilxll812fnzc1m64"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/nrdcg/auroradns"))
    (propagated-inputs (list go-github-com-stretchr-testify))
    (home-page "https://github.com/nrdcg/auroradns")
    (synopsis "Go library for accessing the Aurora DNS API")
    (description "An Aurora DNS API client written in Go.")
    (license license:mpl2.0)))

(define-public go-github-com-nrdcg-bunny-go
  (package
    (name "go-github-com-nrdcg-bunny-go")
    (version "0.0.0-20250327222614-988a091fc7ea")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/nrdcg/bunny-go")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0jxg9kwrycn0xxynzm0s91k7b90v4syhd6ln3rm0d38kyz6xbmqs"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go go-1.22
      #:import-path "github.com/nrdcg/bunny-go"))
    (propagated-inputs (list go-github-com-stretchr-testify
                             go-github-com-google-uuid
                             go-github-com-google-go-querystring))
    (home-page "https://github.com/nrdcg/bunny-go")
    (synopsis "bunny-go")
    (description
     "Package bunny provides functionality to interact with the Bunny CDN HTTP API.")
    (license license:expat)))

(define-public go-github-com-nrdcg-desec
  (package
    (name "go-github-com-nrdcg-desec")
    (version "0.11.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/nrdcg/desec")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "01zkvdbcdiadd7msalnrzkk8ga1zplcib9p6ngm8ggnyfz5yh8qv"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go go-1.22
      #:import-path "github.com/nrdcg/desec"))
    (propagated-inputs (list go-github-com-stretchr-testify
                             go-github-com-peterhellberg-link
                             go-github-com-hashicorp-go-retryablehttp))
    (home-page "https://github.com/nrdcg/desec")
    (synopsis "Go library for accessing the deSEC API")
    (description "An @code{deSEC} API client written in Go.")
    (license license:mpl2.0)))

(define-public go-github-com-nrdcg-dnspod-go
  (package
    (name "go-github-com-nrdcg-dnspod-go")
    (version "0.4.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/nrdcg/dnspod-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "05ad264cw36hzb23pb7n4h2vd0rdim3nkn9yn6mnxrrwq6jqrybi"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/nrdcg/dnspod-go"))
    (home-page "https://github.com/nrdcg/dnspod-go")
    (synopsis "DNSPod Go API client")
    (description "Package dnspod implements a client for the dnspod API.")
    (license license:expat)))

(define-public go-github-com-nrdcg-freemyip
  (package
    (name "go-github-com-nrdcg-freemyip")
    (version "0.3.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/nrdcg/freemyip")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0ihg32cwxar3b8gz0myc3i8l2y6zk2gzsfvn7wk4iqaprl5zdwl6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/nrdcg/freemyip"))
    (propagated-inputs (list go-github-com-stretchr-testify
                             go-github-com-google-go-querystring))
    (home-page "https://github.com/nrdcg/freemyip")
    (synopsis "Go library for accessing the freemyip.com API")
    (description
     "Package freemyip contains a client of the DNS API of freemyip.")
    (license license:mpl2.0)))

(define-public go-github-com-nrdcg-goacmedns
  (package
    (name "go-github-com-nrdcg-goacmedns")
    (version "0.2.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/nrdcg/goacmedns")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0l7k86n9clb4ban3jdzx8q13jg3nz4d7dfcw8c9xbj5scamdk0dh"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/nrdcg/goacmedns"))
    (home-page "https://github.com/nrdcg/goacmedns")
    (synopsis "goacmedns")
    (description
     "This package provides a Go library to handle
@@url{https://github.com/joohoi/acme-dns,acme-dns} client communication and
persistent account storage.")
    (license license:expat)))

(define-public go-github-com-nrdcg-mailinabox
  (package
    (name "go-github-com-nrdcg-mailinabox")
    (version "0.2.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/nrdcg/mailinabox")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0880k6p5mhf94297r6wdnb2jhpwgi21w5pr3y8whfh360g7ja6c8"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/nrdcg/mailinabox"))
    (propagated-inputs (list go-github-com-stretchr-testify))
    (home-page "https://github.com/nrdcg/mailinabox")
    (synopsis "Go library for accessing the Mail-in-a-Box API")
    (description
     "This package provides a Mail-in-a-Box API client written in Go.")
    (license license:mpl2.0)))

(define-public go-github-com-nrdcg-namesilo
  (package
    (name "go-github-com-nrdcg-namesilo")
    (version "0.2.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/nrdcg/namesilo")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1bkrxdpaiqniw0c11mwqria66aydkzsk8dy5vnslk2b87cg9bmv6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/nrdcg/namesilo"))
    (propagated-inputs (list go-github-com-stretchr-testify
                             go-github-com-google-go-querystring))
    (home-page "https://github.com/nrdcg/namesilo")
    (synopsis "Go library for accessing the Namesilo API")
    (description
     "Package namesilo A Go client library for accessing the Namesilo API.")
    (license license:mpl2.0)))

(define-public go-github-com-nrdcg-nodion
  (package
    (name "go-github-com-nrdcg-nodion")
    (version "0.1.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/nrdcg/nodion")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0fzqznnyz6n020rars2ac7s06qs2n8h1bbxpddlmv4p8m4pdhddz"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/nrdcg/nodion"))
    (propagated-inputs (list go-github-com-stretchr-testify
                             go-github-com-google-go-querystring))
    (home-page "https://github.com/nrdcg/nodion")
    (synopsis "Go library for accessing the Nodion DNS API")
    (description "Package nodion contains a client of the DNS API of Nodion.")
    (license license:mpl2.0)))

(define-public go-github-com-nrdcg-porkbun
  (package
    (name "go-github-com-nrdcg-porkbun")
    (version "0.4.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/nrdcg/porkbun")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1012gym6zvldjhs3df5iwsjrlkwdxhlnrnzn79c8hbpga9hysyqc"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/nrdcg/porkbun"))
    (propagated-inputs (list go-github-com-stretchr-testify))
    (home-page "https://github.com/nrdcg/porkbun")
    (synopsis "Go library for accessing the Porkbun API")
    (description
     "Package porkbun contains a client of the DNS API of Porkdun.")
    (license license:mpl2.0)))

(define-public go-github-com-nvidia-go-nvlib
  (package
    (name "go-github-com-nvidia-go-nvlib")
    (version "0.7.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/NVIDIA/go-nvlib")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1y312yhv5dfgi2k1nih6qmy6x6bnj6ppqjmqrp5abkqn3lavqglb"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/NVIDIA/go-nvlib"))
    (propagated-inputs (list go-github-com-stretchr-testify
                             go-github-com-google-uuid
                             go-github-com-nvidia-go-nvml))
    (home-page "https://github.com/NVIDIA/go-nvlib")
    (synopsis "The")
    (description
     "This repository holds a collection of go packages to ease the development of
NVIDIA GPU management software.  Many of its abstractions build and expand upon
the base @@url{https://github.com/NVIDIA/go-nvml,(code go-nvml)} package which
provides a comprehensive wrapper around the official .")
    (license license:asl2.0)))
(define-public go-github-com-nvidia-go-nvml
  (package
    (name "go-github-com-nvidia-go-nvml")
    (version "0.12.9-0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/NVIDIA/go-nvml")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1h4n18p9mbg0i4gz654rd6nix37fyd7v83y0fvkrfabmqx5h3457"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/NVIDIA/go-nvml"))
    (propagated-inputs (list go-github-com-stretchr-testify
                             go-github-com-google-uuid))
    (home-page "https://github.com/NVIDIA/go-nvml")
    (synopsis "Go Bindings for the NVIDIA Management Library (NVML)")
    (description "This repository provides Go bindings for the .")
    (license license:asl2.0)))
(define-public go-github-com-nvidia-nvidia-container-toolkit
  (package
    (name "go-github-com-nvidia-nvidia-container-toolkit")
    (version "1.17.8")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/NVIDIA/nvidia-container-toolkit")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "06lh7drkrkb2aw37vbhcx75an0n30dvy2q816s6clhvb2wzxqph7"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go go-1.22
      #:import-path "github.com/NVIDIA/nvidia-container-toolkit"))
    (propagated-inputs (list
                        go-tags-cncf-io-container-device-interface-specs-go
                        go-tags-cncf-io-container-device-interface
                        go-golang-org-x-sys
                        go-golang-org-x-mod
                        go-github-com-urfave-cli-v2
                        go-github-com-stretchr-testify
                        go-github-com-sirupsen-logrus
                        go-github-com-pelletier-go-toml
                        go-github-com-opencontainers-runtime-spec
                        go-github-com-opencontainers-runc ; packaged
                        go-github-com-moby-sys-symlink
                        go-github-com-moby-sys-reexec
                        go-github-com-fsnotify-fsnotify
                        go-github-com-cyphar-filepath-securejoin
                        go-github-com-nvidia-go-nvml
                        go-github-com-nvidia-go-nvlib))
    (home-page "https://github.com/NVIDIA/nvidia-container-toolkit")
    (synopsis "NVIDIA Container Toolkit")
    (description
     "The NVIDIA Container Toolkit allows users to build and run GPU accelerated
containers.  The toolkit includes a container runtime
@@url{https://github.com/NVIDIA/libnvidia-container,library} and utilities to
automatically configure containers to leverage NVIDIA GPUs.")
    (license license:asl2.0)))

(define-public go-github-com-nzdjb-go-metaname
  (package
    (name "go-github-com-nzdjb-go-metaname")
    (version "1.0.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/nzdjb/go-metaname")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "03kcray2zfrjas8wdq1jf9q8yjih5kwfdfafjkbnckxryf5fdcqx"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/nzdjb/go-metaname"))
    (propagated-inputs (list go-github-com-stretchr-testify
                             go-github-com-adamslevy-jsonrpc2-v14))
    (home-page "https://github.com/nzdjb/go-metaname")
    (synopsis "Go Metaname")
    (description "Package metaname provides a client for the Metaname API.")
    (license license:expat)))

(define-public go-github-com-opencontainers-runtime-tools
  (package
    (name "go-github-com-opencontainers-runtime-tools")
    (version "0.9.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/opencontainers/runtime-tools")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1pli3jb1rq9lkzzz83f7jw788vijg7x6ly3vgasdlwri7kiph1sa"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/opencontainers/runtime-tools"))
    (home-page "https://github.com/opencontainers/runtime-tools")
    (synopsis "oci-runtime-tool")
    (description
     "oci-runtime-tool is a collection of tools for working with the
@@url{https://github.com/opencontainers/runtime-spec,OCI runtime specification}.
 To build from source code, runtime-tools requires Go 1.10.x or above.")
    (license license:asl2.0)))

(define-public go-github-com-opendns-vegadns2client
  (package
    (name "go-github-com-opendns-vegadns2client")
    (version "0.0.0-20180418235048-a3fa4a771d87")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/opendns/vegadns2client")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1m1kqr6hrpik0ffiwxw7n261hvilvlmp5bsm9530ijr6rld8j4f5"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/OpenDNS/vegadns2client"))
    (home-page "https://github.com/OpenDNS/vegadns2client")
    (synopsis "vegadns2client")
    (description
     "vegadns2client is a go client for
@@url{https://github.com/shupp/@code{VegaDNS-API,VegaDNS-API}}.  This is an
incomplete client, initially intended to support
@@url{https://github.com/xenolf/lego,lego}.")
    (license license:asl2.0)))

(define-public go-github-com-openfga-api-proto
  (package
    (name "go-github-com-openfga-api-proto")
    (version "0.0.0-20250528161632-e53c69cc5531")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/openfga/api")
             (commit (go-version->git-ref version
                                          #:subdir "proto"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1ghn0jyy2mm96lvbqfz0fbb0limr1andcqhl2wfaiwbwixrj4467"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "github.com/openfga/api/proto"
      #:unpack-path "github.com/openfga/api"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-github-com-grpc-ecosystem-grpc-gateway-v2
                             go-github-com-envoyproxy-protoc-gen-validate))
    (home-page "https://github.com/openfga/api")
    (synopsis #f)
    (description #f)
    (license license:asl2.0)))

(define-public go-github-com-openfga-language-pkg-go
  (package
    (name "go-github-com-openfga-language-pkg-go")
    (version "0.2.0-beta.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/openfga/language")
             (commit (go-version->git-ref version
                                          #:subdir "pkg/go"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "04r519lwbq2v8d4691hdj5421zddd49fs18fl7qcbpvbrzn46xsl"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "github.com/openfga/language/pkg/go"
      #:unpack-path "github.com/openfga/language"))
    (propagated-inputs (list go-gopkg-in-yaml-v3
                             go-google-golang-org-protobuf
                             go-gonum-org-v1-gonum
                             go-github-com-stretchr-testify
                             go-github-com-openfga-api-proto
                             go-github-com-oklog-ulid-v2
                             go-github-com-hashicorp-go-multierror
                             go-github-com-google-go-cmp
                             go-github-com-antlr4-go-antlr-v4 ; packaged
                             ))
    (home-page "https://github.com/openfga/language")
    (synopsis "OpenFGA Language - GoLang")
    (description
     "@code{GoLang} implementation of ANTLR Grammar for the @code{OpenFGA} DSL and
parser from and to the @code{OpenFGA} JSON Syntax.")
    (license license:asl2.0)))

(define-public go-github-com-openfga-openfga
  (package
    (name "go-github-com-openfga-openfga")
    (version "1.9.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/openfga/openfga")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1dkxvvs5ix91ngpqkl9x6ss1nwqldmwcxp4b5s9n9pdnv4841zxl"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "github.com/openfga/openfga"))
    (propagated-inputs (list go-sigs-k8s-io-yaml
                        go-sigs-k8s-io-controller-runtime
                        go-modernc-org-sqlite
                        go-google-golang-org-protobuf
                        go-google-golang-org-grpc
                        go-golang-org-x-sync
                        go-golang-org-x-exp
                        go-go-uber-org-zap
                        go-go-uber-org-mock
                        go-go-uber-org-goleak
                        go-go-opentelemetry-io-proto-otlp
                        go-go-opentelemetry-io-otel-trace
                        go-go-opentelemetry-io-otel-sdk
                        go-go-opentelemetry-io-otel-exporters-otlp-otlptrace-otlptracegrpc
                        go-go-opentelemetry-io-otel
                        go-go-opentelemetry-io-contrib-instrumentation-net-http-otelhttp
                        go-go-opentelemetry-io-contrib-instrumentation-google-golang-org-grpc-otelgrpc
                        go-github-com-tidwall-gjson
                        go-github-com-stretchr-testify
                        go-github-com-spf13-viper
                        go-github-com-spf13-pflag
                        go-github-com-spf13-cobra
                        go-github-com-sourcegraph-conc ; packaged
                        go-github-com-rs-cors
                        go-github-com-prometheus-client-golang ; packaged

                        go-github-com-pressly-goose-v3
                        go-github-com-openfga-language-pkg-go
                        go-github-com-openfga-api-proto
                        go-github-com-oklog-ulid-v2
                        go-github-com-natefinch-wrap
                        go-github-com-jon-whit-go-grpc-prometheus
                        go-github-com-jackc-pgx-v5
                        go-github-com-hashicorp-go-retryablehttp
                        go-github-com-grpc-ecosystem-grpc-gateway-v2
                        go-github-com-grpc-ecosystem-go-grpc-middleware-v2
                        go-github-com-grpc-ecosystem-go-grpc-middleware
                        go-github-com-google-uuid
                        go-github-com-google-go-cmp
                        go-github-com-google-cel-go ; packaged
                        go-github-com-golang-jwt-jwt-v5 ;packaged

                        go-github-com-go-sql-driver-mysql
                        go-github-com-go-logr-logr
                        go-github-com-emirpasic-gods
                        go-github-com-docker-go-connections
                        go-github-com-docker-docker
                        go-github-com-containerd-errdefs ; packaged
                        go-github-com-cespare-xxhash-v2 ; packaged
                        go-github-com-cenkalti-backoff-v4
                        go-github-com-yiling-j-theine-go
                        go-github-com-micahparks-keyfunc-v2
                        go-github-com-masterminds-squirrel))
    (home-page "https://github.com/openfga/openfga")
    (synopsis "OpenFGA")
    (description
     "This package provides a high-performance and flexible authorization/permission
engine built for developers and inspired by
@@url{https://research.google/pubs/pub48190/,Google Zanzibar}.")
    (license license:asl2.0)))

(define-public go-github-com-openzipkin-zipkin-go
  (package
    (name "go-github-com-openzipkin-zipkin-go")
    (version "0.4.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/openzipkin/zipkin-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0780agn2bygi7i2nxng8n80mspaab17k95px1vf6nqil1kg8hh7m"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/openzipkin/zipkin-go"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-github-com-rabbitmq-amqp091-go
                             go-github-com-onsi-gomega
                             go-github-com-onsi-ginkgo-v2
                             go-github-com-ibm-sarama))
    (home-page "https://github.com/openzipkin/zipkin-go")
    (synopsis "Zipkin Library for Go")
    (description
     "Package zipkin implements a native Zipkin instrumentation library for Go.")
    (license license:asl2.0)))

(define-public go-github-com-oracle-oci-go-sdk
  (package
    (name "go-github-com-oracle-oci-go-sdk")
    (version "65.95.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/oracle/oci-go-sdk")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1waficz1nnwc61aa03khgninn8qrwj1rxzxq562kfvfa2cy1m1mx"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/oracle/oci-go-sdk/v65"
      #:unpack-path "github.com/oracle/oci-go-sdk"))
    (propagated-inputs (list go-github-com-youmark-pkcs8
                             go-github-com-stretchr-testify
                             go-github-com-sony-gobreaker
                             go-github-com-gofrs-flock))
    (home-page "https://github.com/oracle/oci-go-sdk")
    (synopsis "Oracle Cloud Infrastructure Golang SDK")
    (description
     "This is the official Go SDK for Oracle Cloud Infrastructure.")
    (license unknown-license!)))

(define-public go-github-com-osrg-gobgp
  (package
    (name "go-github-com-osrg-gobgp")
    (version "3.37.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/osrg/gobgp")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1kk9ri15a2950z22nw12mb69w7nyjawhjzig7vp3xba74sdhj7in"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "github.com/osrg/gobgp/v3"
      #:unpack-path "github.com/osrg/gobgp"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-golang-org-x-time
                             go-golang-org-x-text
                             go-golang-org-x-sys
                             go-github-com-vishvananda-netlink
                             go-github-com-stretchr-testify
                             go-github-com-spf13-viper
                             go-github-com-spf13-cobra
                             go-github-com-sirupsen-logrus
                             go-github-com-prometheus-client-model
                             go-github-com-prometheus-client-golang ; packaged

                             go-github-com-kr-pretty
                             go-github-com-k-sone-critbitgo ; packaed
                             go-github-com-jessevdk-go-flags
                             go-github-com-grpc-ecosystem-go-grpc-prometheus ; packaged
                             go-github-com-google-uuid
                             go-github-com-google-go-cmp
                             go-github-com-go-test-deep
                             go-github-com-getsentry-sentry-go ; packaged
                             go-github-com-fsnotify-fsnotify
                             go-github-com-eapache-channels ; packaged
                             go-github-com-dgryski-go-farm
                             go-github-com-coreos-go-systemd-v22
                             go-github-com-burntsushi-toml))
    (home-page "https://github.com/osrg/gobgp")
    (synopsis "GoBGP: BGP implementation in Go")
    (description
     "@code{GoBGP} is an open source Border Gateway Protocol (BGP) implementation
designed from scratch for modern environment and implemented in a modern
programming language, @@url{http://golang.org/,the Go Programming Language}.")
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

(define-public go-github-com-pascaldekloe-name
  (package
    (name "go-github-com-pascaldekloe-name")
    (version "1.0.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/pascaldekloe/name")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1x379sm8x16xls6dcn6l1kwb9aqnw1gqvnj7s4qcfg67hxgryw6d"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/pascaldekloe/name"))
    (home-page "https://github.com/pascaldekloe/name")
    (synopsis "About")
    (description
     "Package name implements various naming conventions.  The two categories are
delimiter-separated and letter case-separated words.  Each of the formatting
functions support both techniques for input, without any context.")
    (license license:cc0)))

(define-public go-github-com-paulmach-orb
  (package
    (name "go-github-com-paulmach-orb")
    (version "0.11.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/paulmach/orb")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1nrc9d6ixn6v5s227fczpcqnpnn4ry5qj8vd6rq5dr3m77k4j7m2"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/paulmach/orb"))
    (propagated-inputs (list go-go-mongodb-org-mongo-driver
                             go-github-com-paulmach-protoscan
                             go-github-com-gogo-protobuf))
    (home-page "https://github.com/paulmach/orb")
    (synopsis "orb")
    (description
     "Package @@code{orb} defines a set of types for working with 2d geo and
planar/projected geometric data in Golang.  There are a set of sub-packages that
use these types to do interesting things.  They each provide their own README
with extra info.")
    (license license:expat)))

(define-public go-github-com-paulmach-protoscan
  (package
    (name "go-github-com-paulmach-protoscan")
    (version "0.2.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/paulmach/protoscan")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "15sb6sc1v2haz44ccrlaxz9mgwc2hnyiy7gql46bisk25f8lx41b"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/paulmach/protoscan"))
    (propagated-inputs (list go-google-golang-org-protobuf))
    (home-page "https://github.com/paulmach/protoscan")
    (synopsis "protoscan")
    (description
     "Package @@code{protoscan} is a low-level reader for
@@url{https://developers.google.com/protocol-buffers,protocol buffers} encoded
data in Golang.  The main feature is the support for lazy/conditional decoding
of fields.")
    (license license:expat)))

(define-public go-github-com-performancecopilot-speed
  (package
    (name "go-github-com-performancecopilot-speed")
    (version "4.0.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/performancecopilot/speed")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0zpf42pid3cd3sqv4gy2h51adq2zpw0pi0v3fpgxqna4iia280j0"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/performancecopilot/speed/v4"
      #:unpack-path "github.com/performancecopilot/speed"))
    (propagated-inputs (list go-github-com-pkg-errors
                             go-github-com-edsrzf-mmap-go
                             go-github-com-hdrhistogram-hdrhistogram-go))
    (home-page "https://github.com/performancecopilot/speed")
    (synopsis "Install")
    (description
     "Package speed implements a golang client for the Performance Co-Pilot
instrumentation API.")
    (license license:expat)))

(define-public go-github-com-peterhellberg-link
  (package
    (name "go-github-com-peterhellberg-link")
    (version "1.2.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/peterhellberg/link")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1xg6qzs7vr0lqs8yqq2h920mqkn2nv3srxbk1v6ygh9n66ig9b87"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/peterhellberg/link"))
    (home-page "https://github.com/peterhellberg/link")
    (synopsis "link")
    (description
     "Package link parses Link headers used for pagination, as defined in
@@url{https://rfc-editor.org/rfc/rfc5988.html,RFC 5988}.")
    (license license:expat)))

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

(define-public go-github-com-pquerna-otp
  (package
    (name "go-github-com-pquerna-otp")
    (version "1.5.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/pquerna/otp")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0krrardi923jc39lar4vpbvdg3382x1wzk1ip3hwjc8f4jydqgai"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/pquerna/otp"))
    (propagated-inputs (list go-github-com-stretchr-testify
                             go-github-com-boombuler-barcode))
    (home-page "https://github.com/pquerna/otp")
    (synopsis "otp: One Time Password utilities Go / Golang")
    (description
     "Package otp implements both HOTP and TOTP based one time passcodes in a Google
Authenticator compatible manner.")
    (license license:asl2.0)))

(define-public go-github-com-pressly-goose
  (package
    (name "go-github-com-pressly-goose")
    (version "3.24.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/pressly/goose")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1q9sbj7pr98lvj5ps6lyad8c36cysilia681njfcnz1zk27f3w8r"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "github.com/pressly/goose/v3"
      #:unpack-path "github.com/pressly/goose"))
    (propagated-inputs (list go-modernc-org-sqlite
                             go-golang-org-x-sync
                             go-go-uber-org-multierr
                             go-github-com-ziutek-mymysql
                             go-github-com-ydb-platform-ydb-go-sdk-v3
                             go-github-com-vertica-vertica-sql-go
                             go-github-com-tursodatabase-libsql-client-go
                             go-github-com-stretchr-testify
                             go-github-com-sethvargo-go-retry
                             go-github-com-microsoft-go-mssqldb
                             go-github-com-mfridman-xflag
                             go-github-com-mfridman-interpolate
                             go-github-com-joho-godotenv ; packaged
                             go-github-com-jackc-pgx-v5
                             go-github-com-go-sql-driver-mysql
                             go-github-com-clickhouse-clickhouse-go-v2))
    (home-page "https://github.com/pressly/goose")
    (synopsis "goose")
    (description
     "Goose is a database migration tool.  Both a CLI and a library.")
    (license license:expat)))

(define-public go-github-com-rabbitmq-amqp091-go
  (package
    (name "go-github-com-rabbitmq-amqp091-go")
    (version "1.10.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/rabbitmq/amqp091-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0mqjxjh7ydj4h0yr8i2y2hx68pjw420djzl9blclpczjb9ay3cwr"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/rabbitmq/amqp091-go"))
    (propagated-inputs (list go-go-uber-org-goleak))
    (home-page "https://github.com/rabbitmq/amqp091-go")
    (synopsis "Go RabbitMQ Client Library")
    (description
     "Package amqp091 is an AMQP 0.9.1 client with @code{RabbitMQ} extensions.")
    (license license:bsd-2)))

(define-public go-github-com-rainycape-memcache
  (package
    (name "go-github-com-rainycape-memcache")
    (version "0.0.0-20150622160815-1031fa0ce2f2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/rainycape/memcache")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "02cbhy192vi0d1kwh57mdrg1mkr027ndkvd1y0cx0kn0h6pszggn"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/rainycape/memcache"))
    (home-page "https://github.com/rainycape/memcache")
    (synopsis "Memcache Client in Go (golang)")
    (description
     "Package memcache provides a client for the memcached cache server.")
    (license license:asl2.0)))

(define-public go-github-com-redis-go-redis
  (package
    (name "go-github-com-redis-go-redis")
    (version "9.11.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/redis/go-redis")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0hb52ppmxakjfiac5k7gmafjrb6fl3kmvp1ka5fma3lp7yjy7kzy"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/redis/go-redis/v9"
      #:unpack-path "github.com/redis/go-redis"))
    (propagated-inputs (list go-github-com-dgryski-go-rendezvous
                             go-github-com-cespare-xxhash-v2 ; packaged
                             go-github-com-bsm-gomega
                             go-github-com-bsm-ginkgo-v2))
    (home-page "https://github.com/redis/go-redis")
    (synopsis "Redis client for Go")
    (description "Package redis implements a Redis client.")
    (license license:bsd-2)))

(define-public go-github-com-regfish-regfish-dnsapi-go
  (package
    (name "go-github-com-regfish-regfish-dnsapi-go")
    (version "0.1.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/regfish/regfish-dnsapi-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1rl8gmxxjd8w729c1vsvvd325yc501yiwd0z9x5fnq3rkv48f1vs"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/regfish/regfish-dnsapi-go"))
    (propagated-inputs (list go-github-com-stretchr-testify
                             go-github-com-joho-godotenv ; packaged
                             ))
    (home-page "https://github.com/regfish/regfish-dnsapi-go")
    (synopsis "regfish DNS API Go Client")
    (description
     "Create a @@code{.env} file containing the varibles @@code{RF_API_KEY} using
credentials from your regfish account (from Account, Security, API keys).
Modify @@code{client_test.go} and replace @@code{example.com} with your own
domain, then run @@code{go test -v} to run the tests.")
    (license license:expat)))

(define-public go-github-com-rekby-fixenv
  (package
    (name "go-github-com-rekby-fixenv")
    (version "0.7.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/rekby/fixenv")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1b89606k5ih524s7hsaqgfb6md6l6l8lq86mdfdkf8ag8q1azyl3"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/rekby/fixenv"))
    (home-page "https://github.com/rekby/fixenv")
    (synopsis "Go Fixtures")
    (description "Inspired by pytest fixtures.  No dependencies.")
    (license license:expat)))

(define-public go-github-com-sacloud-api-client-go
  (package
    (name "go-github-com-sacloud-api-client-go")
    (version "0.3.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/sacloud/api-client-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0hig6jgrl9f5c0jd2g8xwk3ap95b6q0y54h3g02wvn4ria6nh721"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go go-1.23
      #:import-path "github.com/sacloud/api-client-go"))
    (propagated-inputs (list go-github-com-stretchr-testify
                             go-github-com-sacloud-packages-go
                             go-github-com-sacloud-go-http
                             go-github-com-hashicorp-go-retryablehttp))
    (home-page "https://github.com/sacloud/api-client-go")
    (synopsis "api-client-go")
    (description "さくらのクラウド向けAPI/HTTPクライアントライブラリ.")
    (license license:asl2.0)))

(define-public go-github-com-sacloud-iaas-api-go
  (package
    (name "go-github-com-sacloud-iaas-api-go")
    (version "1.16.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/sacloud/iaas-api-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "024xs79n32s6i22iws0v1dly8lbqp357svr7gcd8djg069cw61fa"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "github.com/sacloud/iaas-api-go"))
    (propagated-inputs (list go-golang-org-x-crypto
                             go-github-com-stretchr-testify
                             go-github-com-sacloud-packages-go
                             go-github-com-sacloud-go-http
                             go-github-com-sacloud-api-client-go
                             go-github-com-mitchellh-mapstructure
                             go-github-com-mitchellh-go-homedir
                             go-github-com-huandu-xstrings
                             go-github-com-hashicorp-go-multierror
                             go-github-com-fsnotify-fsnotify
                             go-github-com-fatih-structs))
    (home-page "https://github.com/sacloud/iaas-api-go")
    (synopsis "iaas-api-go")
    (description "Package sacloud さくらのクラウド API ライブラリ.")
    (license license:asl2.0)))

(define-public go-github-com-sacloud-packages-go
  (package
    (name "go-github-com-sacloud-packages-go")
    (version "0.0.11")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/sacloud/packages-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1dgizi5nwmyrxplz7b3ypdda37i22ch7wkssl21idn6fd9cwakgb"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/sacloud/packages-go"))
    (propagated-inputs (list go-github-com-stretchr-testify
                             go-github-com-hashicorp-terraform-exec
                             go-github-com-hashicorp-hc-install
                             go-github-com-hashicorp-go-multierror
                             go-github-com-go-playground-validator-v10))
    (home-page "https://github.com/sacloud/packages-go")
    (synopsis "packages-go")
    (description "さくらのクラウドAPIライブラリのための汎用パッケージ群.")
    (license license:asl2.0)))

(define-public go-github-com-scaleway-scaleway-sdk-go
  (package
    (name "go-github-com-scaleway-scaleway-sdk-go")
    (version "1.0.0-beta.33")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/scaleway/scaleway-sdk-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1y9a9lp0n3ghyfv4xa773a4z7cjh8ghrckcfvm3s5q5xh40igyp0"))))
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

(define-public go-github-com-sclevine-spec
  (package
    (name "go-github-com-sclevine-spec")
    (version "1.4.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/sclevine/spec")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0y3rqb7dd51qnw5ns7w5sy93879ybnlg6gwslbv5mkfnrk0gl7na"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/sclevine/spec"))
    (home-page "https://github.com/sclevine/spec")
    (synopsis "spec")
    (description
     "Spec is a simple BDD test organizer for Go.  It minimally extends the standard
library @@code{testing} package by facilitating easy organization of Go 1.7+
@@url{https://blog.golang.org/subtests,subtests}.")
    (license license:asl2.0)))

(define-public go-github-com-sebdah-goldie
  (package
    (name "go-github-com-sebdah-goldie")
    (version "1.0.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/sebdah/goldie")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "165xnrsj8xwgbc26yhx317yh240hp8d7cydm8pyjr2gc9m4kiw0g"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/sebdah/goldie"))
    (propagated-inputs (list go-github-com-stretchr-testify))
    (home-page "https://github.com/sebdah/goldie")
    (synopsis "goldie - Golden test utility for Go")
    (description
     "Package goldie provides test assertions based on golden files.  It's typically
used for testing responses with larger data bodies.")
    (license license:expat)))

(define-public go-github-com-selectel-go-selvpcclient
  (package
    (name "go-github-com-selectel-go-selvpcclient")
    (version "3.2.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/selectel/go-selvpcclient")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1zzq92i0anq0af7vq56y1l027vmrd915sr8djnqm6jc0vnimwxy6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/selectel/go-selvpcclient/v3"
      #:unpack-path "github.com/selectel/go-selvpcclient"))
    (propagated-inputs (list go-github-com-gophercloud-gophercloud
                             go-github-com-google-go-querystring))
    (home-page "https://github.com/selectel/go-selvpcclient")
    (synopsis "go-selvpcclient: a Go library for the Selectel VPC API")
    (description
     "Package go-selvpcclient provides a Go library to work with the Selectel API:.")
    (license license:asl2.0)))

(define-public go-github-com-sethvargo-go-retry
  (package
    (name "go-github-com-sethvargo-go-retry")
    (version "0.3.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/sethvargo/go-retry")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1dcmpka2p8gdgyvl9qph3mf9f04bkf04d5b2jkd3lhhsf12cb6fm"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/sethvargo/go-retry"))
    (home-page "https://github.com/sethvargo/go-retry")
    (synopsis "Retry")
    (description "Package retry provides helpers for retrying.")
    (license license:asl2.0)))

(define-public go-github-com-shopify-sarama
  (package
    (name "go-github-com-shopify-sarama")
    (version "1.45.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/IBM/sarama")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "033f4rq2vap5lnsjrchpxcw5fsc1n9v85fw3yz6iy8zv85kzlbln"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "github.com/Shopify/sarama"))
    (propagated-inputs (list go-golang-org-x-sync
                             go-golang-org-x-net
                             go-github-com-stretchr-testify
                             go-github-com-rcrowley-go-metrics
                             go-github-com-pierrec-lz4-v4
                             go-github-com-klauspost-compress
                             go-github-com-jcmturner-gokrb5-v8
                             go-github-com-jcmturner-gofork
                             go-github-com-hashicorp-go-multierror
                             go-github-com-fortytw2-leaktest
                             go-github-com-eapache-queue ; packaged
                             go-github-com-eapache-go-xerial-snappy
                             go-github-com-eapache-go-resiliency
                             go-github-com-davecgh-go-spew))
    (home-page "https://github.com/Shopify/sarama")
    (synopsis "sarama")
    (description
     "Package sarama is a pure Go client library for dealing with Apache Kafka
(versions 0.8 and later).  It includes a high-level API for easily producing and
consuming messages, and a low-level API for controlling bytes on the wire when
the high-level API is insufficient.  Usage examples for the high-level APIs are
provided inline with their full documentation.")
    (license license:expat)))

(define-public go-github-com-softlayer-softlayer-go
  (package
    (name "go-github-com-softlayer-softlayer-go")
    (version "1.1.7")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/softlayer/softlayer-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0cq5y925c4slvgq0fyjgxds2lhl81zk5v4plrb9lp8c41d430g9b"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/softlayer/softlayer-go"))
    (propagated-inputs (list go-golang-org-x-tools
                             go-github-com-spf13-cobra
                             go-github-com-softlayer-xmlrpc
                             go-github-com-onsi-gomega
                             go-github-com-onsi-ginkgo-v2
                             go-github-com-maxbrunsfeld-counterfeiter-v6
                             go-github-com-jarcoal-httpmock))
    (home-page "https://github.com/softlayer/softlayer-go")
    (synopsis "softlayer-go")
    (description
     "The Official and Complete @code{SoftLayer} API Client for Golang (the Go
programming language).")
    (license license:asl2.0)))

(define-public go-github-com-softlayer-xmlrpc
  (package
    (name "go-github-com-softlayer-xmlrpc")
    (version "0.0.0-20200409220501-5f089df7cb7e")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/softlayer/xmlrpc")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0nmdy7zs23r76z9b9m7raajsp9p3dai0wf7jacbnxb8yccc352wq"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/softlayer/xmlrpc"))
    (home-page "https://github.com/softlayer/xmlrpc")
    (synopsis "Overview")
    (description
     "xmlrpc is an implementation of client side part of XMLRPC protocol in Go
language.  This project was forked from
@@url{https://github.com/kolo/xmlrpc,https://github.com/kolo/xmlrpc} and
contains a few minor changes to help interact with the
@@url{https://sldn.softlayer.com,@code{SoftLayer} API}.")
    (license license:expat)))

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

(define-public go-github-com-sony-gobreaker
  (package
    (name "go-github-com-sony-gobreaker")
    (version "1.0.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/sony/gobreaker")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0ghqsyb98q76drh6kx5pnmaynijxhp3wkbwq8y07z37zq3maggww"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/sony/gobreaker"))
    (propagated-inputs (list go-github-com-stretchr-testify))
    (home-page "https://github.com/sony/gobreaker")
    (synopsis "gobreaker")
    (description
     "Package gobreaker implements the Circuit Breaker pattern.  See
@@url{https://msdn.microsoft.com/en-us/library/dn589784.aspx,https://msdn.microsoft.com/en-us/library/dn589784.aspx}.")
    (license license:expat)))

(define-public go-github-com-streadway-handy
  (package
    (name "go-github-com-streadway-handy")
    (version "0.0.0-20200128134331-0f66f006fb2e")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/streadway/handy")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "03cm61ndfj6mz8kjsdb5jjka94v21fqn6nd5agnvhb7qx3fkq1y4"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/streadway/handy"))
    (home-page "https://github.com/streadway/handy")
    (synopsis "Handy Handlers")
    (description
     "Package handy organizes some useful http server handler filters or handlers for
reuse.")
    (license license:bsd-2)))

(define-public go-github-com-substrait-io-substrait
  (package
    (name "go-github-com-substrait-io-substrait")
    (version "0.74.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/substrait-io/substrait")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "021dcacnlayv332p0dlm8vsg5j96arb5n523kpwyrn4m71h6rjw5"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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

(define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-common
  (package
    (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-common")
    (version "1.0.1201")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
             (commit (go-version->git-ref version
                                          #:subdir "tencentcloud/common"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1592b80vdblsffn9bdslyjjbbixv2ryc4qpjqq5y1bp8rwxsqmq9"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path
      "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/common"
      #:unpack-path "github.com/tencentcloud/tencentcloud-sdk-go"))
    (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
    (synopsis #f)
    (description #f)
    (license license:asl2.0)))

(define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-dnspod
  (package
    (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-dnspod")
    (version "1.0.1200")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
             (commit (go-version->git-ref version
                                          #:subdir "tencentcloud/dnspod"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1xfmmr5rx9g29aackprbgfgw5vb4kil0nmjggd6a84sbzg59pav4"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path
      "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/dnspod"
      #:unpack-path "github.com/tencentcloud/tencentcloud-sdk-go"))
    (propagated-inputs (list
                        go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-common))
    (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
    (synopsis #f)
    (description "Package doc.")
    (license license:asl2.0)))

(define-public go-github-com-testcontainers-testcontainers-go
  (package
    (name "go-github-com-testcontainers-testcontainers-go")
    (version "0.37.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/testcontainers/testcontainers-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1z73h94gzl17da9fsi7y12h0b2i6hps4g8kwvx0xdkpfhmigs49r"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "github.com/testcontainers/testcontainers-go"))
    (propagated-inputs (list go-golang-org-x-sys
                             go-golang-org-x-crypto
                             go-github-com-stretchr-testify
                             go-github-com-shirou-gopsutil-v4
                             go-github-com-opencontainers-image-spec
                             go-github-com-moby-term
                             go-github-com-moby-patternmatcher
                             go-github-com-magiconair-properties
                             go-github-com-google-uuid
                             go-github-com-docker-go-connections
                             go-github-com-docker-docker
                             go-github-com-cpuguy83-dockercfg
                             go-github-com-containerd-platforms
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

(define-public go-github-com-transip-gotransip
  (package
    (name "go-github-com-transip-gotransip")
    (version "6.26.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/transip/gotransip")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "116a9ai49zln3y3cwdgrzbsdjvq14azy57dikdvjp0076123w1cv"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/transip/gotransip/v6"
      #:unpack-path "github.com/transip/gotransip"))
    (propagated-inputs (list go-github-com-stretchr-testify))
    (home-page "https://github.com/transip/gotransip")
    (synopsis "gotransip - TransIP API client for Go")
    (description
     "Package gotransip implements a client for the @code{TransIP} Rest API. This
package is a complete implementation for communicating with the @code{TransIP}
@code{RestAPI}.  It covers resource calls available in the @code{TransIP}
@code{RestAPI} Docs and it allows your project(s) to connect to the
@code{TransIP} @code{RestAPI} easily.  Using this package you can order, update
and remove products from your @code{TransIP} account.")
    (license license:expat)))

(define-public go-github-com-tursodatabase-libsql-client-go
  (package
    (name "go-github-com-tursodatabase-libsql-client-go")
    (version "0.0.0-20240902231107-85af5b9d094d")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/tursodatabase/libsql-client-go")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "173g58ria5hn0kg6w47rb9bza81v21ib1jnhznfx045cb2zwdy7r"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/tursodatabase/libsql-client-go"))
    (propagated-inputs (list go-github-com-coder-websocket
                             go-golang-org-x-sync
                             go-github-com-antlr4-go-antlr-v4 ; packaged
                             ))
    (home-page "https://github.com/tursodatabase/libsql-client-go")
    (synopsis "Documentation")
    (description "SQLite for Production.  Powered by
@@url{https://turso.tech/libsql,@code{libSQL}}.")
    (license license:expat)))

(define-public go-github-com-uber-jaeger-client-go
  (package
    (name "go-github-com-uber-jaeger-client-go")
    (version "2.30.0+incompatible")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/jaegertracing/jaeger-client-go")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0nm4mi23bvk84418gkpl2wmijij4bnb082f5zv4ivrvcrp9lhkx3"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/uber/jaeger-client-go"))
    (home-page "https://github.com/uber/jaeger-client-go")
    (synopsis "🛑 This library is being deprecated!")
    (description "Package jaeger implements an @code{OpenTracing}
(@@url{http://opentracing.io,http://opentracing.io}) Tracer.")
    (license license:asl2.0)))
(define-public go-github-com-ultradns-ultradns-go-sdk
  (package
    (name "go-github-com-ultradns-ultradns-go-sdk")
    (version "1.8.0-20241010134910-243eeec")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/ultradns/ultradns-go-sdk")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "02skkqypff0vy6ixmighx7ani7y8d9nx51vb2j3cmg30wr5zq8va"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go go-1.22
      #:import-path "github.com/ultradns/ultradns-go-sdk"))
    (propagated-inputs (list go-golang-org-x-oauth2))
    (home-page "https://github.com/ultradns/ultradns-go-sdk")
    (synopsis "UltraDNS SDK for Go")
    (description
     "ultradns-go-sdk is the official @code{UltraDNS} SDK for the Go programming
language.  Golang-Version : @@code{1.22}.")
    (license license:asl2.0)))
(define-public go-github-com-vertica-vertica-sql-go
  (package
    (name "go-github-com-vertica-vertica-sql-go")
    (version "1.3.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/vertica/vertica-sql-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0b9fjpvmxf8id8rbw130rm6rhvp5db67rs1dmzgb55n7r6s6m5xi"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/vertica/vertica-sql-go"))
    (propagated-inputs (list go-github-com-elastic-go-sysinfo))
    (home-page "https://github.com/vertica/vertica-sql-go")
    (synopsis "vertica-sql-go")
    (description
     "vertica-sql-go is a native Go adapter for the Vertica
(@@url{http://www.vertica.com,http://www.vertica.com}) database.")
    (license license:asl2.0)))

(define-public go-github-com-vinyldns-go-vinyldns
  (package
    (name "go-github-com-vinyldns-go-vinyldns")
    (version "0.9.16")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/vinyldns/go-vinyldns")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "10r82l1jdcd4ngibg7yxvivzm6vcay9mpg5j60y1jnv8f4cblzzs"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/vinyldns/go-vinyldns"))
    (propagated-inputs (list go-github-com-smartystreets-go-aws-auth ; packaged
                             go-github-com-gobs-pretty))
    (home-page "https://github.com/vinyldns/go-vinyldns")
    (synopsis "vinyldns")
    (description
     "This package provides a Golang client for the
@@url{https://github.com/vinyldns/vinyldns,vinyldns} DNS as a service API.")
    (license license:asl2.0)))
(define-public go-github-com-vividcortex-gohistogram
  (package
    (name "go-github-com-vividcortex-gohistogram")
    (version "1.0.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/VividCortex/gohistogram")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1ykpvrkri3mzc0z77kdva93ylh0bqg7jq3i024r3iv0i6bwx3rnf"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/VividCortex/gohistogram"))
    (home-page "https://github.com/VividCortex/gohistogram")
    (synopsis "gohistogram - Histograms in Go")
    (description
     "Package gohistogram contains implementations of weighted and exponential
histograms.")
    (license license:expat)))
(define-public go-github-com-volcengine-volc-sdk-golang
  (package
    (name "go-github-com-volcengine-volc-sdk-golang")
    (version "1.0.214")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/volcengine/volc-sdk-golang")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0052fk2w8rj4lba4bgpyhbbh67kbnid2qfbp6jrmdhc1ng8liphb"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/volcengine/volc-sdk-golang"))
    (propagated-inputs (list go-gopkg-in-natefinch-lumberjack-v2
                             go-google-golang-org-protobuf
                             go-golang-org-x-net
                             go-golang-org-x-exp
                             go-golang-org-x-crypto
                             go-github-com-stretchr-testify
                             go-github-com-pkg-errors
                             go-github-com-pierrec-lz4
                             go-github-com-google-uuid
                             go-github-com-google-martian
                             go-github-com-google-go-querystring
                             go-github-com-gogo-protobuf
                             go-github-com-go-kit-kit
                             go-github-com-cenkalti-backoff-v4
                             go-github-com-avast-retry-go
                             go-github-com-shopify-sarama))
    (home-page "https://github.com/volcengine/volc-sdk-golang")
    (synopsis "前置准备")
    (description
     "请确保您已开通了您需要访问的服务。您可前往@@url{https://console.volcengine.com/,火山引擎控制台}，在左侧菜单中选择或在顶部搜索栏中搜索您需要使用的服务，进入服务控制台内完成开通流程。.")
    (license license:asl2.0)))

(define-public go-github-com-vultr-govultr
  (package
    (name "go-github-com-vultr-govultr")
    (version "3.21.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/vultr/govultr")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1z2gcngk0p3m5w32mc90km99ffa13a1d0nbfr5hv844gapvgirac"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go go-1.23
      #:import-path "github.com/vultr/govultr/v3"
      #:unpack-path "github.com/vultr/govultr"))
    (propagated-inputs (list go-github-com-hashicorp-go-retryablehttp
                             go-github-com-google-go-querystring))
    (home-page "https://github.com/vultr/govultr")
    (synopsis "GoVultr")
    (description
     "Package govultr contains the functionality to interact with the Vultr public
HTTP REST API.")
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

(define-public go-github-com-yandex-cloud-go-genproto
  (package
    (name "go-github-com-yandex-cloud-go-genproto")
    (version "0.13.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/yandex-cloud/go-genproto")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0dnqfiik8f49grq26wlbk30nhljvcddv2rb8j4j96m1qmvwy1xnb"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/yandex-cloud/go-genproto"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-google-golang-org-genproto-googleapis-api
                             go-google-golang-org-genproto))
    (home-page "https://github.com/yandex-cloud/go-genproto")
    (synopsis "Go generated proto packages")
    (description
     "This repository contains the generated Go packages for Yandex.Cloud API.")
    (license license:expat)))

(define-public go-github-com-yandex-cloud-go-sdk
  (package
    (name "go-github-com-yandex-cloud-go-sdk")
    (version "0.12.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/yandex-cloud/go-sdk")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0wzpyrdxgfhv7b864x419pznbzsmir5lk97wh5bc9z30qlczhyxl"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/yandex-cloud/go-sdk"))
    (propagated-inputs (list go-gopkg-in-yaml-v2
                             go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-golang-org-x-net
                             go-github-com-yandex-cloud-go-genproto
                             go-github-com-stretchr-testify
                             go-github-com-mitchellh-go-testing-interface
                             go-github-com-hashicorp-go-multierror
                             go-github-com-google-uuid
                             go-github-com-golang-jwt-jwt-v4
                             go-github-com-ghodss-yaml
                             go-github-com-c2h5oh-datasize))
    (home-page "https://github.com/yandex-cloud/go-sdk")
    (synopsis "Yandex.Cloud Go SDK")
    (description "Go SDK for Yandex.Cloud services.")
    (license license:expat)))

(define-public go-github-com-ydb-platform-ydb-go-genproto
  (package
    (name "go-github-com-ydb-platform-ydb-go-genproto")
    (version "0.0.0-20250519101544-1f330d77b70f")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/ydb-platform/ydb-go-genproto")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1xmqxzfayvw0gqsihamil07iwmkx8dr9vzfzr5wmng9qvpdn7wl7"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/ydb-platform/ydb-go-genproto"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc))
    (home-page "https://github.com/ydb-platform/ydb-go-genproto")
    (synopsis "ydb-go-genproto")
    (description
     "@@code{ydb-go-genproto} includes code generation from YDB protos.")
    (license license:asl2.0)))

(define-public go-github-com-ydb-platform-ydb-go-sdk
  (package
    (name "go-github-com-ydb-platform-ydb-go-sdk")
    (version "3.112.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/ydb-platform/ydb-go-sdk")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "173i0xhdjaikbrgh4kanx5ql76rdkik4xihdr53vnapc9ik0z0v2"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "github.com/ydb-platform/ydb-go-sdk/v3"
      #:unpack-path "github.com/ydb-platform/ydb-go-sdk"))
    (propagated-inputs (list go-go-uber-org-mock
                             go-github-com-stretchr-testify
                             go-github-com-rekby-fixenv
                             go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-golang-org-x-xerrors
                             go-golang-org-x-sync
                             go-go-uber-org-zap
                             go-go-uber-org-goleak
                             go-github-com-ydb-platform-ydb-go-genproto
                             go-github-com-jonboulle-clockwork
                             go-github-com-google-uuid
                             go-github-com-golang-jwt-jwt-v4))
    (home-page "https://github.com/ydb-platform/ydb-go-sdk")
    (synopsis "- pure Go native and")
    (description
     "Supports @@code{discovery}, @@code{operation}, @@code{table}, @@code{query},
@@code{coordination}, @@code{ratelimiter}, @@code{scheme}, @@code{scripting} and
@@code{topic} clients for @@url{https://ydb.tech,YDB}. @@code{YDB} is an
open-source Distributed SQL Database that combines high availability and
scalability with strict consistency and
@@url{https://en.wikipedia.org/wiki/ACID,ACID} transactions. @@code{YDB} was
created primarily for
@@url{https://en.wikipedia.org/wiki/Online_transaction_processing,OLTP}
workloads and supports some
@@url{https://en.wikipedia.org/wiki/Online_analytical_processing,OLAP}
scenarious.")
    (license license:asl2.0)))

(define-public go-github-com-yiling-j-theine-go
  (package
    (name "go-github-com-yiling-j-theine-go")
    (version "0.6.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Yiling-J/theine-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "07ayy39vh7h4r9nf0lmc90aiznb2szpsk6wvsfv231aj8vz6ipih"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/Yiling-J/theine-go"))
    (propagated-inputs (list go-golang-org-x-sys go-golang-org-x-sync
                             go-github-com-zeebo-xxh3
                             go-github-com-stretchr-testify))
    (home-page "https://github.com/Yiling-J/theine-go")
    (synopsis "Theine")
    (description "High performance in-memory & hybrid cache inspired by
@@url{https://github.com/ben-manes/caffeine,Caffeine}.")
    (license license:expat)))

(define-public go-github-com-ziutek-mymysql
  (package
    (name "go-github-com-ziutek-mymysql")
    (version "1.5.4")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/ziutek/mymysql")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "172s7sv5bgc40x81k18hypf9c4n8hn9v5w5zwyr4mi5prbavqcci"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/ziutek/mymysql"))
    (home-page "https://github.com/ziutek/mymysql")
    (synopsis "MyMySQL v1.5.4 (2015-01-08)")
    (description
     "Sorry for my poor English.  If you can help with improving the English in this
documentation, please contact me.")
    (license license:bsd-3)))

(define-public go-go-einride-tech-aip
  (package
    (name "go-go-einride-tech-aip")
    (version "0.72.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/einride/aip-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0i6ymp1zdzamg381xry9b794rwab2q6mjz86qpdnns2yrxi4my5b"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
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

(define-public go-go-etcd-io-etcd-api
  (package
    (name "go-go-etcd-io-etcd-api")
    (version "3.6.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/etcd-io/etcd")
             (commit (go-version->git-ref version
                                          #:subdir "api"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0crs8ixa7rn2vi30l8hqi30jyih7b17qrp6kn49kv7x177g45jrh"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "go.etcd.io/etcd/api/v3"
      #:unpack-path "go.etcd.io/etcd"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-api
                             go-github-com-stretchr-testify
                             go-github-com-grpc-ecosystem-grpc-gateway-v2
                             go-github-com-golang-protobuf
                             go-github-com-gogo-protobuf
                             go-github-com-coreos-go-semver))
    (home-page "https://go.etcd.io/etcd")
    (synopsis #f)
    (description #f)
    (license license:asl2.0)))

(define-public go-go-etcd-io-etcd-client
  (package
    (name "go-go-etcd-io-etcd-client")
    (version "2.305.21")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/etcd-io/etcd")
             (commit (go-version->git-ref version
                                          #:subdir "client"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1k4am092zy6sli2dsyzz9n7y13nlqm1yj4dyry6d4j7xvw1ybgyh"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "go.etcd.io/etcd/client/v2"
      #:unpack-path "go.etcd.io/etcd"))
    (propagated-inputs (list go-github-com-modern-go-reflect2
                             go-github-com-json-iterator-go))
    (home-page "https://go.etcd.io/etcd")
    (synopsis "etcd/client")
    (description "Package client provides bindings for the etcd APIs.")
    (license license:asl2.0)))
(define-public go-go-etcd-io-etcd-client
  (package
    (name "go-go-etcd-io-etcd-client")
    (version "3.6.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/etcd-io/etcd")
             (commit (go-version->git-ref version
                                          #:subdir "client"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0crs8ixa7rn2vi30l8hqi30jyih7b17qrp6kn49kv7x177g45jrh"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
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

(define-public go-go-etcd-io-etcd-client-pkg
  (package
    (name "go-go-etcd-io-etcd-client-pkg")
    (version "3.6.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/etcd-io/etcd")
             (commit (go-version->git-ref version
                                          #:subdir "client/pkg"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0crs8ixa7rn2vi30l8hqi30jyih7b17qrp6kn49kv7x177g45jrh"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "go.etcd.io/etcd/client/pkg/v3"
      #:unpack-path "go.etcd.io/etcd"))
    (propagated-inputs (list go-golang-org-x-sys go-go-uber-org-zap
                             go-github-com-stretchr-testify
                             go-github-com-coreos-go-systemd-v22))
    (home-page "https://go.etcd.io/etcd")
    (synopsis #f)
    (description #f)
    (license license:asl2.0)))

(define-public go-go-etcd-io-etcd-server
  (package
    (name "go-go-etcd-io-etcd-server")
    (version "3.6.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/etcd-io/etcd")
             (commit (go-version->git-ref version
                                          #:subdir "server"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0crs8ixa7rn2vi30l8hqi30jyih7b17qrp6kn49kv7x177g45jrh"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
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
      #:go go-1.23
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
      #:go #{go-#f}#
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
      #:go #{go-#f}#
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

(define-public go-go-opentelemetry-io-otel-exporters-otlp-otlptrace-otlptracegrpc
  (package
    (name "go-go-opentelemetry-io-otel-exporters-otlp-otlptrace-otlptracegrpc")
    (version "1.37.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/open-telemetry/opentelemetry-go")
             (commit (go-version->git-ref version
                      #:subdir "exporters/otlp/otlptrace/otlptracegrpc"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1a0hrsln80i4x8x3mq2w79ivc3j446wwm0486ag7mpzzzya7bzh4"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path
      "go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc"
      #:unpack-path "go.opentelemetry.io/otel"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc
                             go-go-uber-org-goleak
                             go-go-opentelemetry-io-proto-otlp
                             go-github-com-stretchr-testify
                             go-github-com-cenkalti-backoff-v5))
    (home-page "https://go.opentelemetry.io/otel")
    (synopsis "OTLP Trace gRPC Exporter")
    (description
     "Package otlptracegrpc provides an OTLP span exporter using @code{gRPC}.  By
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
      #:go #{go-#f}#
      #:import-path "go.opentelemetry.io/otel/exporters/stdout/stdoutmetric"
      #:unpack-path "go.opentelemetry.io/otel"))
    (propagated-inputs (list go-github-com-stretchr-testify))
    (home-page "https://go.opentelemetry.io/otel")
    (synopsis "STDOUT Metric Exporter")
    (description
     "Package stdoutmetric provides an exporter for @code{OpenTelemetry} metric
telemetry.")
    (license license:asl2.0)))
(define-public go-go-opentelemetry-io-proto-otlp
  (package
    (name "go-go-opentelemetry-io-proto-otlp")
    (version "1.7.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/open-telemetry/opentelemetry-proto-go")
             (commit (go-version->git-ref version
                                          #:subdir "otlp"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0k7g5p1qhw17szyzxr08aixi5d0d2ixlb3sp4dksgz45v0dy5cds"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "go.opentelemetry.io/proto/otlp"
      #:unpack-path "go.opentelemetry.io/proto"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-github-com-grpc-ecosystem-grpc-gateway-v2))
    (home-page "https://go.opentelemetry.io/proto")
    (synopsis #f)
    (description #f)
    (license license:asl2.0)))

(define-public go-gomodules-xyz-jsonpatch
  (package
    (name "go-gomodules-xyz-jsonpatch")
    (version "2.5.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/gomodules/jsonpatch")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1a4f7q7lfpwq1ky1k3sfrvmskc64b9wizfn94wqa9kwb6v6j8b0l"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "gomodules.xyz/jsonpatch/v2"
      #:unpack-path "gomodules.xyz/jsonpatch"))
    (propagated-inputs (list go-github-com-stretchr-testify
                             go-github-com-evanphx-json-patch))
    (home-page "https://gomodules.xyz/jsonpatch")
    (synopsis #f)
    (description #f)
    (license license:asl2.0)))

(define-public go-google-golang-org-api
  (package
    (name "go-google-golang-org-api")
    (version "0.240.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-api-go-client")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1ikp0n5zwz1s05rga8vfa5cwby0f5wh31hif3c709dxmwcf2q1l0"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
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
    (version "0.0.0-20250603155806-513f23925822")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/go-genproto")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1kgx8x5isyfhv6c6nl2ladgxzkx1k03m1if57rskvdc09w1q4yrx"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
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
(define-public go-google-golang-org-genproto-googleapis-api
  (package
    (name "go-google-golang-org-genproto-googleapis-api")
    (version "0.0.0-20250603155806-513f23925822")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/go-genproto")
             (commit (go-version->git-ref version
                                          #:subdir "googleapis/api"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1kgx8x5isyfhv6c6nl2ladgxzkx1k03m1if57rskvdc09w1q4yrx"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "google.golang.org/genproto/googleapis/api"
      #:unpack-path "google.golang.org/genproto"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-google-golang-org-genproto-googleapis-rpc))
    (home-page "https://google.golang.org/genproto")
    (synopsis #f)
    (description #f)
    (license license:asl2.0)))

(define-public go-google-golang-org-genproto-googleapis-bytestream
  (package
    (name "go-google-golang-org-genproto-googleapis-bytestream")
    (version "0.0.0-20250603155806-513f23925822")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/go-genproto")
             (commit (go-version->git-ref version
                                          #:subdir "googleapis/bytestream"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1kgx8x5isyfhv6c6nl2ladgxzkx1k03m1if57rskvdc09w1q4yrx"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "google.golang.org/genproto/googleapis/bytestream"
      #:unpack-path "google.golang.org/genproto"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc))
    (home-page "https://google.golang.org/genproto")
    (synopsis #f)
    (description #f)
    (license license:asl2.0)))
(define-public go-k8s-io-api
  (package
    (name "go-k8s-io-api")
    (version "0.33.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/kubernetes/api")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1dkava224fspllqm2bgavn4wnjfym0pwdjs0dqdizsa42v24lxmz"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "k8s.io/api"))
    (propagated-inputs (list go-k8s-io-apimachinery
                             go-github-com-gogo-protobuf))
    (home-page "https://k8s.io/api")
    (synopsis "api")
    (description
     "Schema of the external API types that are served by the Kubernetes API server.")
    (license license:asl2.0)))

(define-public go-k8s-io-apiextensions-apiserver
  (package
    (name "go-k8s-io-apiextensions-apiserver")
    (version "0.33.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/kubernetes/apiextensions-apiserver")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1dqrb6z7bd9sgmky48r42nfw1l8ah6cw0gaxbdxjling4dfjna9b"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "k8s.io/apiextensions-apiserver"))
    (propagated-inputs (list go-sigs-k8s-io-yaml
                             go-sigs-k8s-io-structured-merge-diff-v4
                             go-sigs-k8s-io-randfill
                             go-sigs-k8s-io-json
                             go-k8s-io-utils
                             go-k8s-io-kube-openapi
                             go-k8s-io-klog-v2
                             go-k8s-io-component-base
                             go-k8s-io-code-generator
                             go-k8s-io-client-go
                             go-k8s-io-apiserver
                             go-k8s-io-apimachinery
                             go-k8s-io-api
                             go-gopkg-in-evanphx-json-patch-v4 ; packaged
                             go-google-golang-org-protobuf
                             go-google-golang-org-grpc
                             go-golang-org-x-sync
                             go-go-opentelemetry-io-otel-trace
                             go-go-opentelemetry-io-otel
                             go-go-etcd-io-etcd-client-v3
                             go-go-etcd-io-etcd-client-pkg-v3
                             go-github-com-stretchr-testify
                             go-github-com-spf13-pflag
                             go-github-com-spf13-cobra
                             go-github-com-google-uuid
                             go-github-com-google-go-cmp
                             go-github-com-google-gnostic-models
                             go-github-com-google-cel-go ; packaged
                             go-github-com-gogo-protobuf
                             go-github-com-fxamacker-cbor-v2
                             go-github-com-emicklei-go-restful-v3))
    (home-page "https://k8s.io/apiextensions-apiserver")
    (synopsis "apiextensions-apiserver")
    (description
     "Implements:
@@url{https://github.com/kubernetes/design-proposals-archive/blob/main/api-machinery/thirdpartyresources.md,https://github.com/kubernetes/design-proposals-archive/blob/main/api-machinery/thirdpartyresources.md}.")
    (license license:asl2.0)))

(define-public go-k8s-io-apiserver
  (package
    (name "go-k8s-io-apiserver")
    (version "0.33.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/kubernetes/apiserver")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1f4rwfy3z37fk9xgnyy9civc00a074s9sy0yzblvilgm2mrf8psr"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "k8s.io/apiserver"))
    (propagated-inputs (list go-sigs-k8s-io-yaml
                        go-sigs-k8s-io-structured-merge-diff-v4
                        go-sigs-k8s-io-randfill
                        go-sigs-k8s-io-json
                        go-sigs-k8s-io-apiserver-network-proxy-konnectivity-client
                        go-k8s-io-utils
                        go-k8s-io-kube-openapi
                        go-k8s-io-kms
                        go-k8s-io-klog-v2
                        go-k8s-io-component-base
                        go-k8s-io-client-go
                        go-k8s-io-apimachinery
                        go-k8s-io-api
                        go-gopkg-in-natefinch-lumberjack-v2
                        go-gopkg-in-go-jose-go-jose-v2
                        go-gopkg-in-evanphx-json-patch-v4 ; packaged
                        go-google-golang-org-protobuf
                        go-google-golang-org-grpc
                        go-google-golang-org-genproto-googleapis-api
                        go-golang-org-x-time
                        go-golang-org-x-sys
                        go-golang-org-x-sync
                        go-golang-org-x-net
                        go-golang-org-x-crypto
                        go-go-uber-org-zap
                        go-go-opentelemetry-io-otel-trace
                        go-go-opentelemetry-io-otel-sdk
                        go-go-opentelemetry-io-otel-metric
                        go-go-opentelemetry-io-otel-exporters-otlp-otlptrace-otlptracegrpc
                        go-go-opentelemetry-io-otel
                        go-go-opentelemetry-io-contrib-instrumentation-net-http-otelhttp
                        go-go-opentelemetry-io-contrib-instrumentation-google-golang-org-grpc-otelgrpc
                        go-go-etcd-io-etcd-server-v3
                        go-go-etcd-io-etcd-client-v3
                        go-go-etcd-io-etcd-client-pkg-v3
                        go-go-etcd-io-etcd-api-v3
                        go-github-com-stretchr-testify
                        go-github-com-spf13-pflag
                        go-github-com-mxk-go-flowrate ; packaged
                        go-github-com-munnerz-goautoneg
                        go-github-com-grpc-ecosystem-go-grpc-prometheus ; packaged
                        go-github-com-gorilla-websocket
                        go-github-com-google-uuid
                        go-github-com-google-go-cmp
                        go-github-com-google-gnostic-models
                        go-github-com-google-cel-go ; packaged
                        go-github-com-google-btree
                        go-github-com-gogo-protobuf
                        go-github-com-go-logr-logr
                        go-github-com-fsnotify-fsnotify
                        go-github-com-emicklei-go-restful-v3
                        go-github-com-coreos-go-systemd-v22
                        go-github-com-coreos-go-oidc
                        go-github-com-blang-semver-v4))
    (home-page "https://k8s.io/apiserver")
    (synopsis "apiserver")
    (description
     "Generic library for building a Kubernetes aggregated API server.")
    (license license:asl2.0)))

(define-public go-k8s-io-client-go
  (package
    (name "go-k8s-io-client-go")
    (version "0.33.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/kubernetes/client-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "04l8vxgwxv421515gv3m69pa3f2y4zkj0bvm3x838jw2a1ck6h5q"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
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

(define-public go-k8s-io-code-generator
  (package
    (name "go-k8s-io-code-generator")
    (version "0.33.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/kubernetes/code-generator")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1hlas162zj8xhrwbvasyragxirgps5chslbl4vzr8rv5w1m57wxw"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "k8s.io/code-generator"))
    (propagated-inputs (list go-sigs-k8s-io-yaml
                             go-sigs-k8s-io-randfill
                             go-k8s-io-utils
                             go-k8s-io-kube-openapi
                             go-k8s-io-klog-v2
                             go-k8s-io-gengo-v2
                             go-k8s-io-apimachinery
                             go-golang-org-x-text
                             go-github-com-spf13-pflag
                             go-github-com-google-go-cmp
                             go-github-com-google-gnostic-models
                             go-github-com-gogo-protobuf))
    (home-page "https://k8s.io/code-generator")
    (synopsis "code-generator")
    (description
     "Golang code-generators used to implement
@@url{https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md,Kubernetes-style
API types}.")
    (license license:asl2.0)))

(define-public go-k8s-io-component-base
  (package
    (name "go-k8s-io-component-base")
    (version "0.33.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/kubernetes/component-base")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0646qma1gymmi0sxxl6hnby1bpcnh6jhd2pncq1d16sq97gqfjnq"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "k8s.io/component-base"))
    (propagated-inputs (list go-sigs-k8s-io-yaml
                        go-sigs-k8s-io-json
                        go-k8s-io-utils
                        go-k8s-io-klog-v2
                        go-k8s-io-client-go
                        go-k8s-io-apimachinery
                        go-golang-org-x-sys
                        go-go-uber-org-zap
                        go-go-opentelemetry-io-otel-trace
                        go-go-opentelemetry-io-otel-sdk
                        go-go-opentelemetry-io-otel-exporters-otlp-otlptrace-otlptracegrpc
                        go-go-opentelemetry-io-otel
                        go-go-opentelemetry-io-contrib-instrumentation-net-http-otelhttp
                        go-github-com-stretchr-testify
                        go-github-com-spf13-pflag
                        go-github-com-spf13-cobra
                        go-github-com-prometheus-procfs
                        go-github-com-prometheus-common
                        go-github-com-prometheus-client-model
                        go-github-com-prometheus-client-golang ; packaged

                        go-github-com-munnerz-goautoneg
                        go-github-com-moby-term
                        go-github-com-google-go-cmp
                        go-github-com-go-logr-zapr
                        go-github-com-go-logr-logr
                        go-github-com-blang-semver-v4))
    (home-page "https://k8s.io/component-base")
    (synopsis "component-base")
    (description
     "Implement KEP 32:
@@url{https://github.com/kubernetes/enhancements/blob/master/keps/sig-cluster-lifecycle/wgs/783-component-base/README.md,https://github.com/kubernetes/enhancements/blob/master/keps/sig-cluster-lifecycle/wgs/783-component-base/README.md}.")
    (license license:asl2.0)))

(define-public go-k8s-io-kms
  (package
    (name "go-k8s-io-kms")
    (version "0.33.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/kubernetes/kms")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0syd4655b9s3m39kj3jn917za5318r3fw1xqbx48cbz4w48l7xic"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "k8s.io/kms"))
    (propagated-inputs (list go-google-golang-org-grpc
                             go-github-com-gogo-protobuf))
    (home-page "https://k8s.io/kms")
    (synopsis "KMS")
    (description "Package kms contains the proto definitions for the kms API.")
    (license license:asl2.0)))

(define-public go-modernc-org-cc
  (package
    (name "go-modernc-org-cc")
    (version "4.26.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://gitlab.com/cznic/cc")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1117yzl6z5gaicdd31vlkwy0vyrv0jsw63nbidbdh8f345k737w3"))))
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
(define-public go-modernc-org-cc
  (package
    (name "go-modernc-org-cc")
    (version "3.41.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://gitlab.com/cznic/cc")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0khw9qsaz4ab0vb4kazgfm481cjpcyxj6ld2ma4d9hva3ca9h8ji"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "modernc.org/cc/v3"
      #:unpack-path "modernc.org/cc"))
    (propagated-inputs (list go-modernc-org-token
                             go-modernc-org-strutil
                             go-modernc-org-mathutil
                             go-lukechampine-com-uint128
                             go-github-com-google-go-cmp
                             go-github-com-dustin-go-humanize))
    (home-page "https://modernc.org/cc")
    (synopsis "cc/v3")
    (description "Package cc is a C99 compiler front end (Work in progress).")
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

(define-public go-modernc-org-ccgo
  (package
    (name "go-modernc-org-ccgo")
    (version "4.28.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://gitlab.com/cznic/ccgo")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0kpjkvk29j56544gczszzvqpirjfcm5i07mah8mbfygf3icd6js1"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "modernc.org/ccgo/v4"
      #:unpack-path "modernc.org/ccgo"))
    (propagated-inputs (list go-modernc-org-strutil
                             go-modernc-org-opt
                             go-modernc-org-mathutil
                             go-modernc-org-libc
                             go-modernc-org-gc-v2
                             go-modernc-org-fileutil
                             go-modernc-org-ccorpus2
                             go-modernc-org-ccgo-v3
                             go-modernc-org-cc-v4
                             go-golang-org-x-tools
                             go-golang-org-x-mod
                             go-github-com-pmezard-go-difflib
                             go-github-com-pbnjay-memory
                             go-github-com-dustin-go-humanize))
    (home-page "https://modernc.org/ccgo")
    (synopsis "ccgo/v4")
    (description "Command ccgo is a C compiler producing Go code.")
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
      #:go #{go-#f}#
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
    (version "1.66.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://gitlab.com/cznic/libc")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0676znmzrv5ql53r1jq23cpkaap1fp1j197pvl69d5xa76znwxaa"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
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
    (version "1.38.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://gitlab.com/cznic/sqlite")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1fzsjkj2zslpccqr9a8pxcz9i3gqvilbqvhci19kmnwy3vd77x0p"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
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
(define-public go-sigs-k8s-io-apiserver-network-proxy-konnectivity-client
  (package
    (name "go-sigs-k8s-io-apiserver-network-proxy-konnectivity-client")
    (version "0.33.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/kubernetes-sigs/apiserver-network-proxy")
             (commit (go-version->git-ref version
                                          #:subdir "konnectivity-client"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1917xk4cqwrhk1knyqjkrxndahhdssm0w2zyasj5riqjvdxnjw06"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "sigs.k8s.io/apiserver-network-proxy/konnectivity-client"
      #:unpack-path "sigs.k8s.io/apiserver-network-proxy"))
    (propagated-inputs (list go-k8s-io-klog-v2 go-google-golang-org-protobuf
                             go-google-golang-org-grpc go-go-uber-org-goleak
                             go-github-com-prometheus-client-golang ; packaged
))
    (home-page "https://sigs.k8s.io/apiserver-network-proxy")
    (synopsis #f)
    (description #f)
    (license license:asl2.0)))
(define-public go-sigs-k8s-io-controller-runtime
  (package
    (name "go-sigs-k8s-io-controller-runtime")
    (version "0.21.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/kubernetes-sigs/controller-runtime")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0va6r83kga93sklvrwkvcifv93z95vpzwsjvb1glbrfr0i7pb23k"))))
    (build-system go-build-system)
    (arguments
     (list
      #:go #{go-#f}#
      #:import-path "sigs.k8s.io/controller-runtime"))
    (propagated-inputs (list go-sigs-k8s-io-yaml
                             go-k8s-io-utils
                             go-k8s-io-klog-v2
                             go-k8s-io-client-go
                             go-k8s-io-apiserver
                             go-k8s-io-apimachinery
                             go-k8s-io-apiextensions-apiserver
                             go-k8s-io-api
                             go-gopkg-in-evanphx-json-patch-v4 ; packaged
                             go-gomodules-xyz-jsonpatch-v2
                             go-golang-org-x-sys
                             go-golang-org-x-sync
                             go-golang-org-x-mod
                             go-go-uber-org-zap
                             go-go-uber-org-goleak
                             go-github-com-prometheus-client-model
                             go-github-com-prometheus-client-golang ; packaged

                             go-github-com-onsi-gomega
                             go-github-com-onsi-ginkgo-v2
                             go-github-com-google-gofuzz
                             go-github-com-google-go-cmp
                             go-github-com-google-btree
                             go-github-com-go-logr-zapr
                             go-github-com-go-logr-logr
                             go-github-com-fsnotify-fsnotify
                             go-github-com-evanphx-json-patch-v5
                             go-github-com-blang-semver-v4))
    (home-page "https://sigs.k8s.io/controller-runtime")
    (synopsis "Kubernetes controller-runtime Project")
    (description
     "Package controllerruntime provides tools to construct Kubernetes-style
controllers that manipulate both Kubernetes CRDs and aggregated/built-in
Kubernetes APIs.")
    (license license:asl2.0)))

(define-public go-sigs-k8s-io-randfill
  (package
    (name "go-sigs-k8s-io-randfill")
    (version "1.0.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/kubernetes-sigs/randfill")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1nk0vk269jw0k155yna43jx9lz4dbzhlhp98jrk8iwqn7k250my6"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "sigs.k8s.io/randfill"))
    (home-page "https://sigs.k8s.io/randfill")
    (synopsis "randfill")
    (description
     "Package randfill is a library for populating go objects with random values.")
    (license license:asl2.0)))
(define-public go-tags-cncf-io-container-device-interface
  (package
    (name "go-tags-cncf-io-container-device-interface")
    (version "1.0.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/cncf-tags/container-device-interface")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1wpp8fsrfjmgfkwwanakbigf68khwycdxbmr82k309fawfpbz7fj"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "tags.cncf.io/container-device-interface"))
    (propagated-inputs (list go-sigs-k8s-io-yaml
                             go-gopkg-in-yaml-v3
                             go-golang-org-x-sys
                             go-github-com-stretchr-testify
                             go-github-com-opencontainers-runtime-tools
                             go-github-com-opencontainers-runtime-spec
                             go-github-com-fsnotify-fsnotify))
    (home-page "https://tags.cncf.io/container-device-interface")
    (synopsis "CDI - The Container Device Interface")
    (description
     "@@strong{NOTE:} The API for injecting CDI devices that existed at
@@code{container-device-interface/pkg} has been removed.  Users of this API
should migrate to the one at @@code{container-device-interface/pkg/cdi} as this
is actively maintained.")
    (license license:asl2.0)))
(define-public go-tags-cncf-io-container-device-interface-specs-go
  (package
    (name "go-tags-cncf-io-container-device-interface-specs-go")
    (version "1.0.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/cncf-tags/container-device-interface")
             (commit (go-version->git-ref version
                                          #:subdir "specs-go"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "187j81adgll5z1lfwfsydshww0k76h34a853grvr35qhlzg9p0w2"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "tags.cncf.io/container-device-interface/specs-go"
      #:unpack-path "tags.cncf.io/container-device-interface"))
    (propagated-inputs (list go-golang-org-x-mod))
    (home-page "https://tags.cncf.io/container-device-interface")
    (synopsis #f)
    (description #f)
    (license license:asl2.0)))
