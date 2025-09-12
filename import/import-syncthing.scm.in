(define-public go-github-com-azure-azure-sdk-for-go-sdk-azcore
  (package
    (name "go-github-com-azure-azure-sdk-for-go-sdk-azcore")
    (version "1.18.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Azure/azure-sdk-for-go")
             (commit (go-version->git-ref version
                                          #:subdir "sdk/azcore"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0ar55pkfv4y0vb9rr4pns6g88qjvxbzi2j9a6npiknnz49ljscim"))))
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
(define-public go-github-com-calmh-glob
  (package
    (name "go-github-com-calmh-glob")
    (version "0.0.0-20181002190808-e7a84e9525fe")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/calmh/glob")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1v6vjklq06wqddv46ihajahaj1slv0imgaivlxr8bsx59i90js5q"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/calmh/glob"))
    (home-page "https://github.com/calmh/glob")
    (synopsis "glob.")
    (description
     "This library is created for compile-once patterns.  This means, that compilation
could take time, but strings matching is done faster, than in case when always
parsing template.")
    (license license:expat)))

(define-public go-github-com-calmh-incontainer
  (package
    (name "go-github-com-calmh-incontainer")
    (version "1.0.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/calmh/incontainer")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0d5c2jh54lqgv9gbgd9n307kswx7m8sh26ni7qcvby1h3ajxbnac"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/calmh/incontainer"))
    (home-page "https://github.com/calmh/incontainer")
    (synopsis "incontainer")
    (description
     "Small package to try to determine if we're running inside a container or not.")
    (license license:expat)))

(define-public go-github-com-calmh-xdr
  (package
    (name "go-github-com-calmh-xdr")
    (version "1.2.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/calmh/xdr")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0l9byby8gwva4zm2drpm6g6kfsgvj0ra9z8rw3ly1xzb2yyyqvqj"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/calmh/xdr"))
    (home-page "https://github.com/calmh/xdr")
    (synopsis "This project is not actively maintained")
    (description
     "Package xdr implements an XDR (@@url{https://rfc-editor.org/rfc/rfc4506.html,RFC
4506}) marshaller/unmarshaller.")
    (license license:expat)))

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

(define-public go-github-com-greatroar-blobloom
  (package
    (name "go-github-com-greatroar-blobloom")
    (version "0.8.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/greatroar/blobloom")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "13s14cpi8sa2wksqgw7671343f1hrkfrhyis8xjkacs4b7yd3ab9"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/greatroar/blobloom"))
    (propagated-inputs (list go-github-com-stretchr-testify))
    (home-page "https://github.com/greatroar/blobloom")
    (synopsis "Blobloom")
    (description "Package blobloom implements blocked Bloom filters.")
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

(define-public go-github-com-maruel-panicparse
  (package
    (name "go-github-com-maruel-panicparse")
    (version "2.5.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/maruel/panicparse")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1302lnp85bvh2yld3dqwsdzmgim1aaiy3245wknz8a60w9z8yl5x"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/maruel/panicparse/v2"
      #:unpack-path "github.com/maruel/panicparse"))
    (propagated-inputs (list go-golang-org-x-sys go-github-com-mgutz-ansi
                             go-github-com-mattn-go-isatty
                             go-github-com-mattn-go-colorable
                             go-github-com-google-go-cmp))
    (home-page "https://github.com/maruel/panicparse")
    (synopsis "panicparse")
    (description
     "panicparse: analyzes stack dump of Go processes and simplifies it.")
    (license license:asl2.0)))

(define-public go-github-com-maxbrunsfeld-counterfeiter
  (package
    (name "go-github-com-maxbrunsfeld-counterfeiter")
    (version "6.11.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/maxbrunsfeld/counterfeiter")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "03jfwdhx7kvanhsbjqkhcyaavwv261wvch4j9hsc85xm3m72f0mj"))))
    (build-system go-build-system)
    (arguments
     (list
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

(define-public go-github-com-maxmind-geoipupdate
  (package
    (name "go-github-com-maxmind-geoipupdate")
    (version "6.1.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/maxmind/geoipupdate")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0vv2fzyf2jkkhnfql60l70zzlka7n03q0wkykqkpwfwagk5xc8py"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/maxmind/geoipupdate/v6"
      #:unpack-path "github.com/maxmind/geoipupdate"))
    (propagated-inputs (list go-golang-org-x-sync
                             go-github-com-stretchr-testify
                             go-github-com-spf13-pflag
                             go-github-com-gofrs-flock
                             go-github-com-cenkalti-backoff-v4))
    (home-page "https://github.com/maxmind/geoipupdate")
    (synopsis "GeoIP Update")
    (description
     "The @code{GeoIP} Update program performs automatic updates of @code{GeoIP2} and
@code{GeoLite2} binary databases.  CSV databases are supported.")
    (license (list license:asl2.0 license:expat))))

(define-public go-github-com-miscreant-miscreant-go
  (package
    (name "go-github-com-miscreant-miscreant-go")
    (version "0.0.0-20200214223636-26d376326b75")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/miscreant/miscreant.go")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1vl66xnf67kpiim334yd0brg3bljkrpbd542rn9lcwzb75y0rhal"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/miscreant/miscreant.go"))
    (home-page "https://github.com/miscreant/miscreant.go")
    (synopsis "miscreant.go")
    (description
     "Go implementation of @@strong{Miscreant}: Advanced symmetric encryption library
which provides the @@url{https://github.com/miscreant/meta/wiki/AES-SIV,AES-SIV}
(@@url{https://tools.ietf.org/html/rfc5297,RFC 5297}),
@@url{https://github.com/miscreant/meta/wiki/AES-PMAC-SIV,AES-PMAC-SIV}, and
@@url{https://github.com/miscreant/meta/wiki/STREAM,STREAM} constructions.
These algorithms are easy-to-use (or rather, hard-to-misuse) and support
encryption of individual messages or message streams.")
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
                             go-github-com-bsm-ginkgo-v2 ; packaged
                             ))
    (home-page "https://github.com/redis/go-redis")
    (synopsis "Redis client for Go")
    (description "Package redis implements a Redis client.")
    (license license:bsd-2)))
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

(define-public go-github-com-syncthing-syncthing
  (package
    (name "go-github-com-syncthing-syncthing")
    (version "1.30.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/syncthing/syncthing")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "05mxa718w0i9f4amrs5449z6hq3qlpa4mxznnmznicrkd4kv7b0q"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/syncthing/syncthing"))
    (propagated-inputs (list go-github-com-calmh-glob
                        go-sigs-k8s-io-yaml
                        go-google-golang-org-protobuf
                        go-golang-org-x-tools
                        go-golang-org-x-time
                        go-golang-org-x-text
                        go-golang-org-x-sys
                        go-golang-org-x-net
                        go-golang-org-x-crypto
                        go-go-uber-org-automaxprocs
                        go-github-com-willabides-kongplete
                        go-github-com-vitrun-qart
                        go-github-com-urfave-cli
                        go-github-com-thejerf-suture-v4
                        go-github-com-syndtr-goleveldb
                        go-github-com-syncthing-notify
                        go-github-com-shirou-gopsutil-v4
                        go-github-com-rcrowley-go-metrics
                        go-github-com-rabbitmq-amqp091-go
                        go-github-com-quic-go-quic-go
                        go-github-com-puzpuzpuz-xsync-v3
                        go-github-com-prometheus-client-golang
                        go-github-com-pierrec-lz4-v4
                        go-github-com-oschwald-geoip2-golang
                        go-github-com-miscreant-miscreant-go
                        go-github-com-maxmind-geoipupdate-v6
                        go-github-com-maxbrunsfeld-counterfeiter-v6
                        go-github-com-maruel-panicparse-v2
                        go-github-com-kballard-go-shellquote
                        go-github-com-julienschmidt-httprouter
                        go-github-com-jackpal-go-nat-pmp
                        go-github-com-jackpal-gateway
                        go-github-com-hashicorp-golang-lru-v2
                        go-github-com-greatroar-blobloom
                        go-github-com-gofrs-flock
                        go-github-com-go-ldap-ldap-v3
                        go-github-com-getsentry-raven-go
                        go-github-com-d4l3k-messagediff
                        go-github-com-chmduquesne-rollinghash
                        go-github-com-ccding-go-stun
                        go-github-com-calmh-xdr
                        go-github-com-calmh-incontainer
                        go-github-com-aws-aws-sdk-go
                        go-github-com-alecthomas-kong
                        go-github-com-azure-azure-sdk-for-go-sdk-storage-azblob
                        go-github-com-audriusbutkevicius-recli))
    (home-page "https://github.com/syncthing/syncthing")
    (synopsis "Goals")
    (description
     "Syncthing is a @@strong{continuous file synchronization program}.  It
synchronizes files between two or more computers.  We strive to fulfill the
goals below.  The goals are listed in order of importance, the most important
ones first.  This is the summary version of the goal list - for more commentary,
see the full
@@url{https://github.com/syncthing/syncthing/blob/main/GOALS.md,Goals document}.")
    (license license:mpl2.0)))

(define-public go-github-com-willabides-kongplete
  (package
    (name "go-github-com-willabides-kongplete")
    (version "0.4.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/WillAbides/kongplete")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "153nrxwnnfzdhyxyxcb8p1mp5cd4a9254mbwpzx7d2gyia1wfa7b"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/willabides/kongplete"))
    (propagated-inputs (list go-github-com-stretchr-testify
                             go-github-com-riywo-loginshell
                             go-github-com-posener-complete
                             go-github-com-alecthomas-kong))
    (home-page "https://github.com/willabides/kongplete")
    (synopsis "kongplete")
    (description
     "Package kongplete lets you generate shell completions for your command-line
programs using github.com/alecthomas/kong and github.com/posener/complete.")
    (license license:expat)))
