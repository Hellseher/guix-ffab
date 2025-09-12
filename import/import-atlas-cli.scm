(define-public go-ariga-io-atlas-cmd-atlas
  (package
    (name "go-ariga-io-atlas-cmd-atlas")
    (version "0.13.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/ariga/atlas")
             (commit (go-version->git-ref version
                                          #:subdir "cmd/atlas"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0y0csri6vj4m10n1258q3a9d83h8xcr40rja2s9q66h765xrqs6z"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "ariga.io/atlas/cmd/atlas"
      #:unpack-path "ariga.io/atlas"))
    (propagated-inputs (list go-golang-org-x-mod
                             go-golang-org-x-exp
                             go-gocloud-dev
                             go-github-com-zclconf-go-cty
                             go-github-com-vektah-gqlparser-v2
                             go-github-com-stretchr-testify
                             go-github-com-spf13-pflag
                             go-github-com-spf13-cobra
                             go-github-com-pingcap-tidb-parser
                             go-github-com-olekukonko-tablewriter
                             go-github-com-mitchellh-go-homedir
                             go-github-com-mattn-go-sqlite3
                             go-github-com-libsql-libsql-client-go
                             go-github-com-lib-pq
                             go-github-com-hashicorp-hcl-v2
                             go-github-com-google-uuid
                             go-github-com-go-sql-driver-mysql
                             go-github-com-fatih-color
                             go-github-com-auxten-postgresql-parser
                             go-github-com-antlr-antlr4-runtime-go-antlr
                             go-github-com-1lann-promptui
                             go-entgo-io-ent
                             go-ariga-io-atlas))
    (home-page "https://ariga.io/atlas")
    (synopsis #f)
    (description #f)
    (license license:asl2.0)))

(define-public go-cloud-google-com-go
  (package
    (name "go-cloud-google-com-go")
    (version "0.122.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0h0665aykp8xdm00989r0xfywdypmk20g6lr63hi72v5ihkzv19r"))))
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
    (version "1.100.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "aiplatform"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0ijpx29gdy8rrywr1gkmsg0b080wcpabqppmk60mc71x6q5j12m7"))))
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
    (version "0.30.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "analytics"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0ijpx29gdy8rrywr1gkmsg0b080wcpabqppmk60mc71x6q5j12m7"))))
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
    (version "1.70.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "bigquery"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0n8nlj0ca1k6kq7aw2c9wwyb029f0df0h49wfdhg2j0wjs4n5d7i"))))
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
    (version "1.39.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "bigtable"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0p9hm2wjk24dgch2v8670gjx4fajrm4bhdn739hx45m1gq6dh0i4"))))
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
    (version "1.45.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "compute"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0ijpx29gdy8rrywr1gkmsg0b080wcpabqppmk60mc71x6q5j12m7"))))
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
    (version "1.19.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "security"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0ijpx29gdy8rrywr1gkmsg0b080wcpabqppmk60mc71x6q5j12m7"))))
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
    (version "1.85.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "spanner"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0bwfjbbnnanns9mj5v3j91ry9n9h7zxygjqn1yp09m8fbzkyhzf9"))))
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
    (version "1.14.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "texttospeech"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0ijpx29gdy8rrywr1gkmsg0b080wcpabqppmk60mc71x6q5j12m7"))))
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
    (version "1.26.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-cloud-go")
             (commit (go-version->git-ref version
                                          #:subdir "video"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0ijpx29gdy8rrywr1gkmsg0b080wcpabqppmk60mc71x6q5j12m7"))))
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

(define-public go-entgo-io-ent
  (package
    (name "go-entgo-io-ent")
    (version "0.14.5")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/ent/ent")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "09i2577q0fqmm22fxds8bnz39hf7hggvpbigwqy5w9dav7aiw4cx"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "entgo.io/ent"))
    (propagated-inputs (list go-golang-org-x-tools
                             go-golang-org-x-sync
                             go-go-opencensus-io
                             go-github-com-stretchr-testify
                             go-github-com-spf13-cobra
                             go-github-com-olekukonko-tablewriter
                             go-github-com-modern-go-reflect2
                             go-github-com-mitchellh-mapstructure
                             go-github-com-mattn-go-sqlite3
                             go-github-com-json-iterator-go
                             go-github-com-jessevdk-go-flags
                             go-github-com-gorilla-websocket
                             go-github-com-google-uuid
                             go-github-com-go-openapi-inflect
                             go-github-com-data-dog-go-sqlmock
                             go-ariga-io-atlas))
    (home-page "https://entgo.io/ent")
    (synopsis "ent - An Entity Framework For Go")
    (description
     "Package ent is the interface between end-user schemas and entc (ent codegen).")
    (license license:asl2.0)))

(define-public go-github-com-1lann-promptui
  (package
    (name "go-github-com-1lann-promptui")
    (version "0.8.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/1lann/promptui")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0gwhgsi4hlv6a35kkxmhiq8y2bwhqc8kj4jxa76rmcl27npffys7"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/1lann/promptui"))
    (propagated-inputs (list go-github-com-juju-ansiterm
                             go-github-com-chzyer-readline))
    (home-page "https://github.com/1lann/promptui")
    (synopsis "promptui")
    (description
     "Package promptui is a library providing a simple interface to create
command-line prompts for go.  It can be easily integrated into spf13/cobra,
urfave/cli or any cli go application.")
    (license license:bsd-3)))

(define-public go-github-com-antlr-antlr4-runtime-go-antlr
  (package
    (name "go-github-com-antlr-antlr4-runtime-go-antlr")
    (version "1.4.10")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/antlr/antlr4")
             (commit (go-version->git-ref version
                                          #:subdir "runtime/Go/antlr"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "10p3z59xki0lw6wwbrsan3vrv636q049p56gligwr2kd71mh0agb"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/antlr/antlr4/runtime/Go/antlr"
      #:unpack-path "github.com/antlr/antlr4"))
    (home-page "https://github.com/antlr/antlr4")
    (synopsis #f)
    (description
     "Copyright (c) 2012-2017 The ANTLR Project.  All rights reserved.  Use of this
file is governed by the BSD 3-clause license that can be found in the
LICENSE.txt file in the project root.")
    (license license:bsd-3)))

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

(define-public go-github-com-auxten-postgresql-parser
  (package
    (name "go-github-com-auxten-postgresql-parser")
    (version "1.0.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/auxten/postgresql-parser")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0zii8jm9qbqy9kqxrwv95x6736zrrg6l8ycdbrrakj420x7w0hzg"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/auxten/postgresql-parser"))
    (propagated-inputs (list go-golang-org-x-text
                             go-golang-org-x-sys
                             go-golang-org-x-sync
                             go-github-com-stretchr-testify
                             go-github-com-spf13-pflag
                             go-github-com-sirupsen-logrus
                             go-github-com-pkg-errors
                             go-github-com-petermattis-goid
                             go-github-com-lib-pq
                             go-github-com-grpc-ecosystem-grpc-gateway
                             go-github-com-gogo-protobuf
                             go-github-com-getsentry-raven-go
                             go-github-com-dustin-go-humanize
                             go-github-com-cockroachdb-errors
                             go-github-com-cockroachdb-apd))
    (home-page "https://github.com/auxten/postgresql-parser")
    (synopsis #f)
    (description #f)
    (license #f)))

(define-public go-github-com-aws-aws-sdk-go-v2-feature-dynamodb-attributevalue
  (package
    (name "go-github-com-aws-aws-sdk-go-v2-feature-dynamodb-attributevalue")
    (version "1.20.11")
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
        (base32 "0nzabwp37c0rwbb669s8qr8fw0bglpxhzv3m8glbnc4v586327j2"))))
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
    (version "1.8.11")
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
        (base32 "0nzabwp37c0rwbb669s8qr8fw0bglpxhzv3m8glbnc4v586327j2"))))
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
    (version "1.50.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/aws/aws-sdk-go-v2")
             (commit (go-version->git-ref version
                                          #:subdir "service/dynamodb"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0nzabwp37c0rwbb669s8qr8fw0bglpxhzv3m8glbnc4v586327j2"))))
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
    (version "1.45.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/aws/aws-sdk-go-v2")
             (commit (go-version->git-ref version
                                          #:subdir "service/kms"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0nzabwp37c0rwbb669s8qr8fw0bglpxhzv3m8glbnc4v586327j2"))))
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
    (version "1.38.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/aws/aws-sdk-go-v2")
             (commit (go-version->git-ref version
                                          #:subdir "service/sns"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0nzabwp37c0rwbb669s8qr8fw0bglpxhzv3m8glbnc4v586327j2"))))
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
    (version "1.64.4")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/aws/aws-sdk-go-v2")
             (commit (go-version->git-ref version
                                          #:subdir "service/ssm"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0nzabwp37c0rwbb669s8qr8fw0bglpxhzv3m8glbnc4v586327j2"))))
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
                        go-github-com-golang-jwt-jwt-v5
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
    (version "1.5.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Azure/go-amqp")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0r40xvwdjp8a5wf3f39cpc89ivjlfn07zxs2k3hn4ljqs898ni86"))))
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
    (version "1.5.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url
              "https://github.com/AzureAD/microsoft-authentication-library-for-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0p0wadr2ql8gy0dmqkrq68jgqqi32fh7pk037npksxwdc72j9qn7"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path
      "github.com/AzureAD/microsoft-authentication-library-for-go"))
    (propagated-inputs (list go-github-com-pkg-browser
                             go-github-com-montanaflynn-stats
                             go-github-com-kylelemons-godebug
                             go-github-com-google-uuid
                             go-github-com-golang-jwt-jwt-v5))
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

(define-public go-github-com-cznic-mathutil
  (package
    (name "go-github-com-cznic-mathutil")
    (version "0.0.0-20181122101859-297441e03548")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/cznic/mathutil")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "18vr18pw1qkgbjb2b9879aq52fmy5k61pfs1m8911sc8d6gh9lrx"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/cznic/mathutil"))
    (home-page "https://github.com/cznic/mathutil")
    (synopsis #f)
    (description
     "Package mathutil provides utilities supplementing the standard math and
math/rand packages.")
    (license license:bsd-3)))

(define-public go-github-com-cznic-sortutil
  (package
    (name "go-github-com-cznic-sortutil")
    (version "0.0.0-20181122101858-f5f958428db8")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/cznic/sortutil")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1c065akhh6alb60pfbn8mmj8r6l193gbg7w08y2mjq53b8d8l0gn"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/cznic/sortutil"))
    (home-page "https://github.com/cznic/sortutil")
    (synopsis #f)
    (description
     "Package sortutil provides utilities supplementing the standard sort package.")
    (license license:bsd-3)))

(define-public go-github-com-cznic-strutil
  (package
    (name "go-github-com-cznic-strutil")
    (version "0.0.0-20181122101858-275e90344537")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/cznic/strutil")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "127xv2za90ipxs15g3dwqnkjnzf0q45ld8cgmv9dgpxb515917z9"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/cznic/strutil"))
    (home-page "https://github.com/cznic/strutil")
    (synopsis #f)
    (description
     "Package strutil collects utils supplemental to the standard strings package.")
    (license license:bsd-3)))

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

(define-public go-github-com-getsentry-raven-go
  (package
    (name "go-github-com-getsentry-raven-go")
    (version "0.2.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/getsentry/raven-go")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0imfwmsb72168fqandf2lxhzhngf2flxhzaar8hcnnfjv2a291lf"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/getsentry/raven-go"))
    (home-page "https://github.com/getsentry/raven-go")
    (synopsis "raven")
    (description
     "Package raven implements a client for the Sentry error logging service.")
    (license license:bsd-3)))

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
    (version "1.37.9")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/GoogleCloudPlatform/cloud-sql-proxy")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0a2qfsjkqal4whjsi4wf9ph1npfcj9cab6xbxv1qlkynv5yi7mlx"))))
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

(define-public go-github-com-grpc-ecosystem-grpc-gateway
  (package
    (name "go-github-com-grpc-ecosystem-grpc-gateway")
    (version "1.16.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/grpc-ecosystem/grpc-gateway")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0dzq1qbgzz2c6vnh8anx0j3py34sd72p35x6s2wrl001q68am5cc"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/grpc-ecosystem/grpc-gateway"))
    (propagated-inputs (list go-google-golang-org-grpc
                             go-google-golang-org-genproto
                             go-golang-org-x-oauth2
                             go-github-com-rogpeppe-fastuuid
                             go-github-com-golang-protobuf
                             go-github-com-golang-glog
                             go-github-com-ghodss-yaml
                             go-github-com-antihax-optional))
    (home-page "https://github.com/grpc-ecosystem/grpc-gateway")
    (synopsis "grpc-gateway")
    (description
     "The grpc-gateway is a plugin of the Google protocol buffers compiler
@@url{https://github.com/protocolbuffers/protobuf,protoc}.  It reads protobuf
service definitions and generates a reverse-proxy server which translates a
RESTful HTTP API into @code{gRPC}.  This server is generated according to the
@@url{https://github.com/googleapis/googleapis/raw/master/google/api/http.proto#L46,(code
google.api.http)} annotations in your service definitions.")
    (license license:bsd-3)))

(define-public go-github-com-hamba-avro
  (package
    (name "go-github-com-hamba-avro")
    (version "2.30.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/hamba/avro")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0rv4vjc1jfy8gg9mbw74fj7bldjvc2jh4845gqplb3mcny0r1mrx"))))
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

(define-public go-github-com-libsql-libsql-client-go
  (package
    (name "go-github-com-libsql-libsql-client-go")
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
      #:import-path "github.com/libsql/libsql-client-go"))
    (propagated-inputs (list go-github-com-coder-websocket
                             go-golang-org-x-sync
                             go-github-com-antlr4-go-antlr-v4))
    (home-page "https://github.com/libsql/libsql-client-go")
    (synopsis "Go SDK for libSQL")
    (description
     "This module implements a @code{libSQL} driver for the standard Go .  You can use
it to interact with the following types of databases:.")
    (license license:expat)))

(define-public go-github-com-microsoft-go-mssqldb
  (package
    (name "go-github-com-microsoft-go-mssqldb")
    (version "1.9.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/microsoft/go-mssqldb")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0prz70l8ka12swlx13sfw0f080khiqw141wgsq95nhbw218vx8wf"))))
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

(define-public go-github-com-pingcap-failpoint
  (package
    (name "go-github-com-pingcap-failpoint")
    (version "0.0.0-20240528011301-b51a646c7c86")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/pingcap/failpoint")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0i8sd5wsk8zkhirxdrz1js3zr3lfxf9x7pdb2qih0xjcdqjizywa"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/pingcap/failpoint"))
    (propagated-inputs (list go-golang-org-x-mod go-go-uber-org-goleak
                             go-github-com-stretchr-testify
                             go-github-com-sergi-go-diff
                             go-github-com-pingcap-errors))
    (home-page "https://github.com/pingcap/failpoint")
    (synopsis "failpoint")
    (description
     "An implementation of
@@url{http://www.freebsd.org/cgi/man.cgi?query=fail,failpoints} for Golang.
Fail points are used to add code points where errors may be injected in a user
controlled fashion.  Fail point is a code snippet that is only executed when the
corresponding failpoint is active.")
    (license license:asl2.0)))

(define-public go-github-com-pingcap-log
  (package
    (name "go-github-com-pingcap-log")
    (version "1.1.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/pingcap/log")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0dxisfjk8sxiyany69vx3z5mypxx7a5vf4aidghkb794jc4gfg95"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/pingcap/log"))
    (propagated-inputs (list go-gopkg-in-natefinch-lumberjack-v2
                             go-go-uber-org-zap go-github-com-stretchr-testify
                             go-github-com-pingcap-errors))
    (home-page "https://github.com/pingcap/log")
    (synopsis "pingcap/log")
    (description
     "This package provides a wrapper library based on @@code{go.uber.org/zap}.")
    (license license:asl2.0)))

(define-public go-github-com-pingcap-tidb-parser
  (package
    (name "go-github-com-pingcap-tidb-parser")
    (version "0.0.0-20231013125129-93a834a6bf8d")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/pingcap/tidb")
             (commit (go-version->git-ref version
                                          #:subdir "parser"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "12xa683karv5va5gnwc6p0d6zbaj9n2vp0xl457jgzwp7kjsfnb7"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/pingcap/tidb/parser"
      #:unpack-path "github.com/pingcap/tidb"))
    (propagated-inputs (list go-modernc-org-y
                             go-modernc-org-parser
                             go-golang-org-x-text
                             go-go-uber-org-zap
                             go-go-uber-org-goleak
                             go-github-com-stretchr-testify
                             go-github-com-pingcap-log
                             go-github-com-pingcap-failpoint
                             go-github-com-pingcap-errors
                             go-github-com-go-sql-driver-mysql
                             go-github-com-cznic-strutil
                             go-github-com-cznic-sortutil
                             go-github-com-cznic-mathutil))
    (home-page "https://github.com/pingcap/tidb")
    (synopsis "Parser - A MySQL Compatible SQL Parser")
    (description
     "The goal of this project is to build a Golang parser that is fully compatible
with @code{MySQL} syntax, easy to extend, and high performance.  Currently,
features supported by parser are as follows:.")
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

(define-public go-github-com-xsam-otelsql
  (package
    (name "go-github-com-xsam-otelsql")
    (version "0.40.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/XSAM/otelsql")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0x8mwwg7ijszhb932dyrchnc3ix7af3nj1v9ym7z41s7cgmb0k8q"))))
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

(define-public go-go-opentelemetry-io-contrib-detectors-aws-ec2
  (package
    (name "go-go-opentelemetry-io-contrib-detectors-aws-ec2")
    (version "1.38.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/open-telemetry/opentelemetry-go-contrib")
             (commit (go-version->git-ref version
                                          #:subdir "detectors/aws/ec2"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0fmkp1ij88hqfp4l9im8iv1waj06w4cw1x17cvi08j1baajlnsdp"))))
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
    (license unknown-license!)))

(define-public go-go-opentelemetry-io-contrib-detectors-gcp
  (package
    (name "go-go-opentelemetry-io-contrib-detectors-gcp")
    (version "1.38.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/open-telemetry/opentelemetry-go-contrib")
             (commit (go-version->git-ref version
                                          #:subdir "detectors/gcp"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0fmkp1ij88hqfp4l9im8iv1waj06w4cw1x17cvi08j1baajlnsdp"))))
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
    (license unknown-license!)))

(define-public go-go-opentelemetry-io-contrib-instrumentation-google-golang-org-grpc-otelgrpc
  (package
    (name
     "go-go-opentelemetry-io-contrib-instrumentation-google-golang-org-grpc-otelgrpc")
    (version "0.63.0")
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
        (base32 "0fmkp1ij88hqfp4l9im8iv1waj06w4cw1x17cvi08j1baajlnsdp"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path
      "go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc"
      #:unpack-path "go.opentelemetry.io/contrib"))
    (propagated-inputs (list go-google-golang-org-protobuf
                             go-google-golang-org-grpc
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
    (license unknown-license!)))

(define-public go-go-opentelemetry-io-otel-exporters-otlp-otlpmetric-otlpmetricgrpc
  (package
    (name
     "go-go-opentelemetry-io-otel-exporters-otlp-otlpmetric-otlpmetricgrpc")
    (version "1.38.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/open-telemetry/opentelemetry-go")
             (commit (go-version->git-ref version
                      #:subdir "exporters/otlp/otlpmetric/otlpmetricgrpc"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0h0di598nnj7223zh4ijs2blgp49mnww8rcm7iq0f2ic2l49czg5"))))
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
    (license unknown-license!)))

(define-public go-go-opentelemetry-io-otel-exporters-stdout-stdoutmetric
  (package
    (name "go-go-opentelemetry-io-otel-exporters-stdout-stdoutmetric")
    (version "1.38.0")
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
        (base32 "0h0di598nnj7223zh4ijs2blgp49mnww8rcm7iq0f2ic2l49czg5"))))
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
    (license unknown-license!)))

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
        (base32 "0000000000000000000000000000000000000000000000000000"))))
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

(define-public go-google-golang-org-api
  (package
    (name "go-google-golang-org-api")
    (version "0.249.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/google-api-go-client")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0ky987jwrg43l9xi2hyy4w670lqnp34nx14i0s2m4668gwb3ai0l"))))
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
    (version "0.0.0-20250908214217-97024824d090")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/go-genproto")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1chybdsjkn5zdd452h4pwcb1hbjzp3am9wzn2l1qrn2fdv93p8h2"))))
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
    (version "0.0.0-20250908214217-97024824d090")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/googleapis/go-genproto")
             (commit (go-version->git-ref version
                                          #:subdir "googleapis/bytestream"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1chybdsjkn5zdd452h4pwcb1hbjzp3am9wzn2l1qrn2fdv93p8h2"))))
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

(define-public go-modernc-org-golex
  (package
    (name "go-modernc-org-golex")
    (version "1.1.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://gitlab.com/cznic/golex")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "01izinzm5j5210z09r6k8rygybw7s442hrhk0kv726ig9l9si7fi"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "modernc.org/golex"))
    (propagated-inputs (list go-modernc-org-lexer go-modernc-org-lex))
    (home-page "https://modernc.org/golex")
    (synopsis #f)
    (description
     "Golex is a lex/flex like (not fully POSIX lex compatible) utility.  It renders
.l formated data
(@@url{https://westes.github.io/flex/manual/Format.html#Format,https://westes.github.io/flex/manual/Format.html#Format})
to Go source code.  The .l data can come from a file named in a command line
argument.  If no non-opt args are given, golex reads stdin.")
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
    (version "1.66.8")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://gitlab.com/cznic/libc")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1lwpivdplj3yskkd2sh6v289sfz834gyqsq7bs8klqi9g30b00jx"))))
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

(define-public go-modernc-org-parser
  (package
    (name "go-modernc-org-parser")
    (version "1.1.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://gitlab.com/cznic/parser")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0mawi7qqd5pkpg1a9k3isnkm6c524ig83awmpc132x47qsxd2a6g"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "modernc.org/parser"))
    (propagated-inputs (list go-modernc-org-strutil go-modernc-org-scanner
                             go-modernc-org-golex))
    (home-page "https://modernc.org/parser")
    (synopsis #f)
    (description #f)
    (license #f)))

(define-public go-modernc-org-scanner
  (package
    (name "go-modernc-org-scanner")
    (version "1.2.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://gitlab.com/cznic/scanner")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0nj7iy8gr9f5vwmg5fvpvxsjy9668mkm9dyc8ajx8imvlx4n1lvw"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "modernc.org/scanner"))
    (home-page "https://modernc.org/scanner")
    (synopsis "scanner")
    (description "Package scanner provides some common scanner stuff.")
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

(define-public go-modernc-org-y
  (package
    (name "go-modernc-org-y")
    (version "1.1.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://gitlab.com/cznic/y")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1vp9dzw7m64yhf8j0sxir9lpn8zis1z06ia95iah62h6p0c3q9ys"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "modernc.org/y"))
    (propagated-inputs (list go-modernc-org-strutil go-modernc-org-sortutil
                             go-modernc-org-parser go-modernc-org-mathutil))
    (home-page "https://modernc.org/y")
    (synopsis "y")
    (description
     "Package y converts .y (yacc[2]) source files to data suitable for a parser
generator.")
    (license license:bsd-3)))

