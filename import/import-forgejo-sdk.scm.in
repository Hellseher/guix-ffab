(define-public go-codeberg-org-mvdkleijn-forgejo-sdk-forgejo
  (package
    (name "go-codeberg-org-mvdkleijn-forgejo-sdk-forgejo")
    (version "2.2.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://codeberg.org/mvdkleijn/forgejo-sdk.git")
             (commit (go-version->git-ref version
                                          #:subdir "forgejo"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1nvvxdbqnnf78sy7mk2p6ag5381s0svivibi645r7w0yml42i3hh"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "codeberg.org/mvdkleijn/forgejo-sdk/forgejo/v2"
      #:unpack-path "codeberg.org/mvdkleijn/forgejo-sdk"))
    (propagated-inputs (list go-golang-org-x-crypto
                             go-github-com-stretchr-testify
                             go-github-com-hashicorp-go-version
                             go-github-com-go-fed-httpsig
                             go-github-com-davidmz-go-pageant
                             go-github-com-42wim-httpsig))
    (home-page "https://codeberg.org/mvdkleijn/forgejo-sdk")
    (synopsis #f)
    (description
     "package forgejo implements a client for the Forgejo API. The version corresponds
to the highest supported version of the forgejo API, but backwards-compatibility
is mostly given.")
    (license license:expat)))

(define-public go-github-com-davidmz-go-pageant
  (package
    (name "go-github-com-davidmz-go-pageant")
    (version "1.0.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/davidmz/go-pageant")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0b333bnzi8wncakff7b890gg4md9pcbhs9fdv5bhh68r5pm2dz41"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/davidmz/go-pageant"))
    (propagated-inputs (list go-golang-org-x-crypto))
    (home-page "https://github.com/davidmz/go-pageant")
    (synopsis #f)
    (description
     "Package pageant provides an interface to @code{PyTTY} pageant.exe utility.  This
package is windows-only.")
    (license license:expat)))
