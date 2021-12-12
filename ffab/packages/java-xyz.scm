(define-module (ffab packages java-xyz)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix build-system maven)
  #:use-module (guix git-download)
  #:use-module (guix packages))


(define-public java-universal-g-code-sender
  (package
    (name "java-universal-g-code-sender")
    (version "2.0.8")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/winder/Universal-G-Code-Sender")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0p9sy3h3msd30q9gv2as1gqgkvf4iigjw7iw2dx62748hf9m0z0x"))))
    (build-system maven-build-system)
    ;; (arguments
    ;;  `(#:exclude
    ;;    (("org.apache.maven.plugins" .
    ;;      ("maven-source-plugin" "maven-archetype-plugin" "maven-shade-plugin"
    ;;       "maven-site-plugin" "maven-javadoc-plugin" "maven-eclipse-plugin"))
    ;;     ("com.mycila.maven-license-plugin" . ("maven-license-plugin"))
    ;;     ("org.apache.maven.wagon" . ("wagon-ssh")))
    ;;    #:maven-plugins
    ;;    (("maven-enforcer-plugin" ,maven-enforcer-plugin)
    ;;     ,@(default-maven-plugins))
    ;;    #:phases
    ;;    (modify-phases %standard-phases
    ;;      (add-after 'unpack 'remove-unnecessary
    ;;        (lambda _
    ;;          ;; requires org.apache.maven.archetype:archetype-packaging.
    ;;          ;; Its subprojects also require groovy, kotlin and scala,
    ;;          ;; respectively.
    ;;          (delete-file-recursively "jmh-archetypes"))))))
    (home-page "http://winder.github.io/ugs_website")
    (synopsis "G-Code sender for GRBL, Smoothieware, TinyG and G2core")
    (description "")
    (license license:gpl3)))


(define-public java-mockito-core
  (package
    (name "java-mockito-core")
    (version "4.1.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/mockito/mockito")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0czfs58p375i7ml31yjnrz8z51fd4i00qafnifhzlwzb8z7sw73n"))))
    (build-system maven-build-system)
    (home-page "https://site.mockito.org/")
    (synopsis "Java mocking framework for unit tests")
    (description "")
    (license license:expat)))
