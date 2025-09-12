#!/usr/bin/env bash

GOLANG_STD=(
    archive/tar
    archive/zip
    bufio
    bytes
    cmp
    compress/flate
    compress/gzip
    compress/zlib
    container/heap
    context
    crypto
    crypto/ed25519
    crypto/md5
    crypto/rand
    crypto/sha256
    crypto/tls
    embed
    encoding
    encoding/base32
    encoding/base64
    encoding/binary
    encoding/csv
    encoding/hex
    encoding/json
    encoding/pem
    encoding/xml
    errors
    expvar
    flag
    fmt
    hash
    hash/maphash
    html
    html/template
    image
    image/color
    image/draw
    io
    io/fs
    iter
    log
    log/slog
    maps
    math
    math/rand
    math/rand/v2
    mime
    net
    net/http
    net/http/httptest
    net/url
    os
    os/user
    path
    path/filepath
    plugin
    reflect
    regexp
    runtime
    slices
    sort
    strconv
    strings
    sync
    sync/atomic
    syscall
    testing
    text/tabwriter
    text/template
    time
    unicode
    unicode/utf16
    unsafe
)

_hl()
{
    printf -- "-%.0s" $(seq 1 80)
    printf "\n\n"
}

_golang_std()
{
    printf "^%s|" "${GOLANG_STD[@]}" | sed 's/|$//'
}

get_test_modules()
{
    go list -f '{{range .TestImports}}{{.}}{{"\n"}}{{end}}' ./... |
        sort -u |
        grep -v -E $(_golang_std) |
        sed -e 's/^/    :input /'
}

get_prod_modules()
{
    go list -f '{{range .Imports}}{{.}}{{"\n"}}{{end}}' ./... |
        sort -u |
        grep -v -E $(_golang_std) |
        sed -e 's/^/    :input /'
}

main()
{
    printf ":date %s\n" "$(date +%Y%m%dT%H%M%S%z)"
    printf ":submodules-count %s\n" $(find . -type f -name go.mod | wc -l)
    _hl

    for m in $(find . -type f -name go.mod)
    do
        (
            cd "$(dirname "$m")"
            printf ":subdir %s\n" "$(dirname "$m")"
            printf ":module %s\n" "$(go mod why | grep -v -E \#)"

            printf ":main %s\n" $(find . -type f -name "*.go" -exec grep -l "^func main(" {} \;)

            printf "\n:test\n"
            get_test_modules

            printf "\n:build\n"
            get_prod_modules

            printf "\n:test-only\n"
            comm -2 -3 <(get_test_modules) <(get_prod_modules) |
                sed -e 's/^    :input /    :native-input /'
            _hl
        );
    done
}

main "$@"

# End of mw-golangctl.bash
