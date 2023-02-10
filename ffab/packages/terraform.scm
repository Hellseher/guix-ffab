;;; GNU Guix --- Functional package management for GNU
;;; Copyright © 2021-2022 Sharlatan Hellseher <sharlatanus@gmail.com>
;;;
;;; This file is NOT part of GNU Guix.
;;;
;;; This program is free software: you can redistribute it and/or modify
;;; it under the terms of the GNU General Public License as published by
;;; the Free Software Foundation, either version 3 of the License, or
;;; (at your option) any later version.
;;;
;;; This program is distributed in the hope that it will be useful,
;;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;; GNU General Public License for more details.
;;;
;;; You should have received a copy of the GNU General Public License
;;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

(define-module (ffab packages terraform)
  #:use-module (ffab packages golang)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages base)
  #:use-module (gnu packages golang)
  #:use-module (gnu packages check)
  #:use-module (guix build-system go)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages))

;; 20211212T190623+0000
(define terraform
  (package
    (name "terraform")
    (version "1.3.4")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/hashicorp/terraform")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "16nr5zhc5apxr1pma3h028lhpws822rhwqv3svb7cb4s3561k8si"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/hashicorp/terraform"))
    (propagated-inputs
     (list go-cloud-google-com-go
           go-cloud-google-com-go-storage
           go-github-com-abdullin-seq
           go-github-com-agext-levenshtein
           go-github-com-aliyun-alibaba-cloud-sdk-go
           go-github-com-aliyun-aliyun-oss-go-sdk
           go-github-com-aliyun-aliyun-tablestore-go-sdk
           go-github-com-antchfx-xpath
           go-github-com-antchfx-xquery
           go-github-com-apparentlymart-go-cidr
           go-github-com-apparentlymart-go-dump
           go-github-com-apparentlymart-go-shquot
           go-github-com-apparentlymart-go-textseg-v13
           go-github-com-apparentlymart-go-userdirs
           go-github-com-apparentlymart-go-versions
           go-github-com-armon-circbuf
           go-github-com-armon-go-metrics
           go-github-com-armon-go-radix
           go-github-com-aws-aws-sdk-go
           go-github-com-azure-azure-sdk-for-go
           go-github-com-azure-go-autorest
           go-github-com-azure-go-autorest-autorest
           go-github-com-azure-go-autorest-autorest-adal
           go-github-com-azure-go-autorest-autorest-azure-cli
           go-github-com-azure-go-autorest-autorest-date
           go-github-com-azure-go-autorest-autorest-to
           go-github-com-azure-go-autorest-autorest-validation
           go-github-com-azure-go-autorest-logger
           go-github-com-azure-go-autorest-tracing
           go-github-com-azure-go-ntlmssp
           go-github-com-baiyubin-aliyun-sts-go-sdk
           go-github-com-bgentry-go-netrc
           go-github-com-bgentry-speakeasy
           go-github-com-bmatcuk-doublestar
           go-github-com-burntsushi-toml
           go-github-com-christrenkamp-goxpath
           go-github-com-chzyer-readline
           go-github-com-coreos-go-semver
           go-github-com-coreos-go-systemd
           go-github-com-coreos-pkg
           go-github-com-davecgh-go-spew
           go-github-com-dimchansky-utfbom
           go-github-com-dylanmei-iso8601
           go-github-com-dylanmei-winrmtest
           go-github-com-fatih-color
           go-github-com-go-logr-logr
           go-github-com-go-test-deep
           go-github-com-gofrs-uuid
           go-github-com-gogo-protobuf
           go-github-com-golang-groupcache
           go-github-com-golang-jwt-jwt-v4
           go-github-com-golang-jwt-jwt-v4
           go-github-com-golang-mock
           go-github-com-golang-protobuf
           go-github-com-google-go-cmp
           go-github-com-google-go-querystring
           go-github-com-google-gofuzz
           go-github-com-google-uuid
           go-github-com-googleapis-gax-go-v2
           go-github-com-googleapis-gnostic
           go-github-com-gophercloud-gophercloud
           go-github-com-gophercloud-utils
           go-github-com-gopherjs-gopherjs
           go-github-com-hashicorp-aws-sdk-go-base
           go-github-com-hashicorp-consul-api
           go-github-com-hashicorp-consul-sdk
           go-github-com-hashicorp-errwrap
           go-github-com-hashicorp-go-azure-helpers
           go-github-com-hashicorp-go-checkpoint
           go-github-com-hashicorp-go-cleanhttp
           go-github-com-hashicorp-go-getter
           go-github-com-hashicorp-go-hclog
           go-github-com-hashicorp-go-immutable-radix
           go-github-com-hashicorp-go-msgpack
           go-github-com-hashicorp-go-multierror
           go-github-com-hashicorp-go-plugin
           go-github-com-hashicorp-go-retryablehttp
           go-github-com-hashicorp-go-rootcerts
           go-github-com-hashicorp-go-safetemp
           go-github-com-hashicorp-go-slug
           go-github-com-hashicorp-go-tfe
           go-github-com-hashicorp-go-uuid
           go-github-com-hashicorp-go-version
           go-github-com-hashicorp-golang-lru
           go-github-com-hashicorp-hcl
           go-github-com-hashicorp-hcl-v2
           go-github-com-hashicorp-jsonapi
           go-github-com-hashicorp-serf
           go-github-com-hashicorp-terraform-config-inspect
           go-github-com-hashicorp-terraform-svchost
           go-github-com-hashicorp-yamux
           go-github-com-huandu-xstrings
           go-github-com-imdario-mergo
           go-github-com-jmespath-go-jmespath
           go-github-com-joyent-triton-go
           go-github-com-json-iterator-go
           go-github-com-jstemmer-go-junit-report
           go-github-com-jtolds-gls
           go-github-com-kardianos-osext
           go-github-com-klauspost-compress
           go-github-com-kr-pretty
           go-github-com-kr-pty
           go-github-com-lib-pq
           go-github-com-lusis-go-artifactory
           go-github-com-manicminer-hamilton
           go-github-com-masterminds-goutils
           go-github-com-masterminds-semver
           go-github-com-masterminds-sprig
           go-github-com-masterzen-simplexml
           go-github-com-masterzen-winrm
           go-github-com-mattn-go-colorable
           go-github-com-mattn-go-isatty
           go-github-com-mattn-go-shellwords
           go-github-com-microsoft-go-winio
           go-github-com-mitchellh-cli
           go-github-com-mitchellh-colorstring
           go-github-com-mitchellh-copystructure
           go-github-com-mitchellh-go-homedir
           go-github-com-mitchellh-go-linereader
           go-github-com-mitchellh-go-testing-interface
           go-github-com-mitchellh-go-wordwrap
           go-github-com-mitchellh-gox
           go-github-com-mitchellh-iochan
           go-github-com-mitchellh-mapstructure
           go-github-com-mitchellh-reflectwalk
           go-github-com-modern-go-concurrent
           go-github-com-modern-go-reflect2
           go-github-com-mozillazg-go-httpheader
           go-github-com-netflix-go-expect
           go-github-com-nishanths-exhaustive
           go-github-com-nu7hatch-gouuid
           go-github-com-oklog-run
           go-github-com-packer-community-winrmcp
           go-github-com-pkg-browser
           go-github-com-pkg-errors
           go-github-com-posener-complete
           go-github-com-satori-go-uuid
           go-github-com-sergi-go-diff
           go-github-com-smartystreets-assertions
           go-github-com-smartystreets-goconvey
           go-github-com-spf13-afero
           go-github-com-spf13-pflag
           go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-common
           go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tag
           go-github-com-tencentyun-cos-go-sdk-v5
           go-github-com-tombuildsstuff-giovanni
           go-github-com-ulikunitz-xz
           go-github-com-vmihailenco-msgpack-v4
           go-github-com-vmihailenco-tagparser
           go-github-com-xanzy-ssh-agent
           go-github-com-xlab-treeprint
           go-github-com-zclconf-go-cty
           go-github-com-zclconf-go-cty-debug
           go-github-com-zclconf-go-cty-yaml
           go-go-etcd-io-etcd
           go-go-opencensus-io
           go-go-uber-org-atomic
           go-go-uber-org-multierr
           go-go-uber-org-zap
           go-golang-org-x-crypto
           go-golang-org-x-lint
           go-golang-org-x-mod
           go-golang-org-x-net
           go-golang-org-x-oauth2
           go-golang-org-x-sys
           go-golang-org-x-term
           go-golang-org-x-text
           go-golang-org-x-time
           go-golang-org-x-tools
           go-golang-org-x-xerrors
           go-google-golang-org-api
           go-google-golang-org-appengine
           go-google-golang-org-genproto
           go-google-golang-org-grpc
           go-google-golang-org-grpc-cmd-protoc-gen-go-grpc
           go-google-golang-org-protobuf
           go-gopkg-in-check-v1
           go-gopkg-in-inf-v0
           go-gopkg-in-ini-v1
           go-gopkg-in-yaml-v2
           go-honnef-co-go-tools
           go-k8s-io-api
           go-k8s-io-apimachinery
           go-k8s-io-client-go
           go-k8s-io-klog-v2
           go-k8s-io-utils
           go-sigs-k8s-io-structured-merge-diff-v4
           go-sigs-k8s-io-yaml))
    (home-page "https://github.com/hashicorp/terraform")
    (synopsis "Declarative configuration manager for cloud and on-premises infrastructure")
    (description
     "Terraform is a tool for building, changing, and versioning infrastructure
safely and efficiently. Terraform can manage existing and popular service
providers as well as custom in-house solutions.")
    (license license:mpl2.0)))
