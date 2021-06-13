#!/bin/sh
# GNU Guix --- Functional package management for GNU
# Copyright © 2021 Sharlatan Hellseher <sharlatanus@gmail.com>

REQUIRE=(
   awk
   git
)

PAS=$'[ \033[32;1mPASS\033[0m ] '
ERR=$'[ \033[31;1mFAIL\033[0m ] '
WAR=$'[ \033[33;1mWARN\033[0m ] '
INF="[ INFO ] "

DEBUG="${DEBUG:-0}"
if [ "${DEBUG}" -eq 1 ]
then
    set -x
fi

GUIX_SRC="${GUIX_SRC:-"${HOME}/code/guix"}"
DOWNLOAD_DIR="${DOWNLOAD_DIR:-"${HOME}/code"}"

get_git_urls()
{ # Return a list of all availalbe git-reference URLs
    local gnu_packages_lisp_xyz

    gnu_packages_lisp_xyz="${GUIX_SRC}/gnu/packages/lisp-xyz.scm"

    awk '/git-reference/,/commit/' "$gnu_packages_lisp_xyz" |
        awk '/url/{print $2}' |
        awk '!/home-page/ && !/string-append/ && !/git.kpe/'  |
        tr '"' ' ' |
        tr ')' ' ' |
        sort -u
}

git_release()
{
    local src="$1"

    if git --git-dir "${src}/.git" describe --tags --abbrev=0 &>/dev/null
    then
        git --git-dir "${src}/.git" describe --tags --abbrev=0
    else
        echo "0.0.0"
    fi
}

git_clone_or_pull()
{
    local repo_url="$1"
    local repo_name
    local src

    repo_name="$(echo "$repo_url" | awk -F\/ '{print $5}')"

    src="${DOWNLOAD_DIR}/${repo_name}"

    if [ -e "$src" ]
    then
        git --git-dir "${src}/.git" pull &>/dev/null
        printf "%s %s %s %s\n" \
            "$(git --git-dir "${src}/.git" log -n1 --format=format:"%H")" \
            "$(guix hash --recursive --exclude-vcs "${src}")" \
            "$(git_release "$src")" \
            "$repo_name"
    else
        git clone $repo_url $src &>/dev/null
        printf "%s %s %s %s\n" \
            "$(git --git-dir "${src}/.git" log -n1 --format=format:"%H")" \
            "$(guix hash --recursive --exclude-vcs "${src}")" \
            "$(git_release "$src")" \
            "$repo_name"
    fi
}

main()
{
    for url in $(get_git_urls)
    do
        git_clone_or_pull "$url"
    done
}

main "$@"
# End of guix-refresh-lisp-xyz.bash
