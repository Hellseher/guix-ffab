#!/bin/sh
# GNU Guix --- Functional package management for GNU
# Copyright © 2021 Sharlatan Hellseher <sharlatanus@gmail.com>

## Commentary:
#
# This script provides a quick prototype to generate Guix package definition of
# Common Lisp system available in Quicklisp distribution. It's not a final
# solution, which needs to be implemented in Guile and integrated to Guix, but
# it would help to accelerate packaging process.
#
# Related to Quicklisp resources:
#
# https://github.com/borodust/bodge-projects
# https://bodge.borodust.org/dist/org.borodust.bodge.txt
#
# https://github.com/quicklisp/quicklisp-projects
# http://beta.quicklisp.org/dist/quicklisp.txt
#
# http://dist.tymoon.eu/shirakumo.txt
# http://bodge.borodust.org/dist/org.borodust.bodge.txt

REQUIRE=(
   awk
   curl
   git
   grep
   guix
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

QL_PREFIX_URL="https://beta.quicklisp.org/dist"

# quicklisp-projects has metadata for Common Lisp projects tracked by Quicklisp.
# Each subdirectory is named after a project, and a project's subdirectory has a
# source.txt file describing how to get the project's files.
QL_PROJECTS="https://github.com/quicklisp/quicklisp-projects"

QL_IGNORE_SYSTEMS="asdf\|uoip\|test"

quicklisp_version=
package_name=
commit=
version=
url=
inputs=
synopsis=
description=
license=
sha256_base32=

main()
{
    local system="${1:-}"
    local recursive="${2:-}"

    local package_available
    local project
    local project_dependencies
    local project_fetch_method
    local project_systems
    local project_url
    local ql_dist
    local ql_dist_url
    local ql_projects
    local ql_projects_total
    local ql_system_index_url
    local ql_system_src
    local ql_systems
    local ql_systems_total
    local ql_version
    local system_deps
    local system_main
    local system_project
    local system_project
    local tmp_ql_cache

    chk_require

    tmp_ql_cache="$(mktemp -d -t quicklisp-cache.XXXXXXX)"
    ql_dist_url="${QL_PREFIX_URL}/quicklisp.txt"

    ql_dist="${tmp_ql_cache}/quicklisp-dist"
    ql_systems="${tmp_ql_cache}/systems"
    ql_projects="${tmp_ql_cache}/quicklisp-projects"

    _curl "${ql_dist_url}" "${ql_dist}"

    ql_version="$(grep -oP '(?<=version: ).*' ${ql_dist})"
    ql_system_index_url="${QL_PREFIX_URL}/quicklisp/${ql_version}/systems.txt"

    _curl "${ql_system_index_url}" "${ql_systems}"
    ql_systems_total="$(awk '{print $3}' ${ql_systems} | sort -u | wc -l)"
    ql_projects_total="$(awk '{print $1}' ${ql_systems} | sort -u | wc -l)"

    fetch_with git "${QL_PROJECTS}" "${ql_projects}"

    if [ -z "${system-x}" ]
    then
        printf "___ Quicklisp ___\n"
        printf "distribution URL: %s\n" "${ql_dist_url}"
        printf "projects URL: %s\n" "${QL_PROJECTS}"
        printf "version: %s\n" "${ql_version}"
        printf "systems: %s\n" "${ql_systems_total}"
        printf "projects: %s\n" "${ql_projects_total}"
    elif ! grep "${system}" "${ql_systems}" &>/dev/null
    then
        _err "${ERR} ${system} is not present in Quicklisp distribution ${ql_version}"
    else
        system_project="$(ql_system_query "${system}" system "${ql_systems}")"
        ql_system_src="${ql_projects}/projects/${system_project}/source.txt"
        project="${tmp_ql_cache}/${system_project}"

        project_dependencies="$(ql_system_query "${system_project}" dependency "${ql_systems}")"
        project_systems="$(ql_system_query "${system_project}" project "${ql_systems}")"

        project_fetch_method="$(awk 'NR==1{print $1}' ${ql_system_src})"
        project_url="$(awk 'NR==1{print $2}' ${ql_system_src})"

        package_available="$(guix_package_available "${system_project}")"

        printf "___ Quicklisp ___\n"
        printf "fetch-method: %s\n" "${project_fetch_method}"
        printf "guix-package: %s\n" "${package_available}"
        printf "project-dependencies: %s\n" "${project_dependencies}"
        printf "project-systems: %s\n" "${project_systems}"
        printf "project-url: %s\n" "${project_url}"
        printf "system-project: %s\n" "${system_project}"
        printf "system: %s\n" "${system}"
    fi

    if [ -z "${recursive-x}" ]
    then
        _msg "${INF} Fetch ${project_url} with ${project_fetch_method}"
        fetch_with "${project_fetch_method}" "${project_url}" "${project}"

        hash="$(guix_hash "${project}" "${project_fetch_method}")"
        commit="$(get_commit "${project}" "${project_fetch_method}")"
        inputs="$(guix_sbcl_inputs "${project_dependencies}")"

        guix_package "${system_project}" "${commit}" "${project_url}" "${inputs}" "${hash}"
    else
        for system in ${project_dependencies[@]}
        do
            system_project="$(ql_system_query "${system}" system "${ql_systems}")"
            ql_system_src="${ql_projects}/projects/${system_project}/source.txt"
            project="${tmp_ql_cache}/${system_project}"

            package_available="$(guix_package_available "${system_project}")"

            printf "___ Quicklisp ___\n"
            printf "guix-package: %s\n" "${package_available}"
            printf "system-project: %s\n" "${system_project}"
            printf "system: %s\n" "${system}"

            if [ "${package_available}" = "not-availalbe" ]
            then
                project_dependencies="$(ql_system_query "${system_project}" dependency "${ql_systems}")"
                project_systems="$(ql_system_query "${system_project}" project "${ql_systems}")"
                project_fetch_method="$(awk 'NR==1{print $1}' ${ql_system_src})"
                project_url="$(awk 'NR==1{print $2}' ${ql_system_src})"

                printf "___ Quicklisp ___\n"
                printf "fetch-method: %s\n" "${project_fetch_method}"
                printf "guix-package: %s\n" "${package_available}"
                printf "project-dependencies: %s\n" "${project_dependencies}"
                printf "project-systems: %s\n" "${project_systems}"
                printf "project-url: %s\n" "${project_url}"
                printf "system-project: %s\n" "${system_project}"
                printf "system: %s\n" "${system}"


                _msg "${INF} Fetch ${project_url} with ${project_fetch_method}"
                fetch_with "${project_fetch_method}" "${project_url}" "${project}"

                hash="$(guix_hash "${project}" "${project_fetch_method}")"
                commit="$(get_commit "${project}" "${project_fetch_method}")"
                inputs="$(guix_sbcl_inputs "${project_dependencies}")"

                guix_package "${system_project}" "${commit}" "${project_url}" "${inputs}" "${hash}"
            fi
        done
    fi

    rm -rf "${tmp_ql_cache}"
}

_err()
{ # All errors go to stderr.
    printf "[%s]: %s\n" "$(date +%s.%3N)" "$1"
}

_msg()
{ # Default message to stdout.
    printf "[%s]: %s\n" "$(date +%s.%3N)" "$1"
}

_debug()
{
    if [ "${DEBUG}" = '1' ]; then
        printf "[%s]: %s\n" "$(date +%s.%3N)" "$1"
    fi
}

_curl()
{ # Quicklisp distributes metadata in plain text format. Try to download
  # metadata files from the URL and save it under DST file name.
    local url="$1"
    local dst="$2"

    _debug "--- [ $FUNCNAME ] ---"

    if [ "${DEBUG}" -eq 1 ]
    then
        curl --verbose "${url}" > "${dst}"
    else
        curl --silent "${url}" > "${dst}"
    fi
}

fetch_with()
{ # Use fetch METHOD to obtain PRJ from URL. PRJ could be an absolute
  # destination path.
    local method="$1"
    local url="$2"
    local prj="$3"

    _debug "--- [ $FUNCNAME ] ---"

    # Methods as they could be obtained from 'source.txt' file of
    # 'quicklisp-projects'
    #
    # branched-git cvs darcs ediware-http git http https kmr-git
    # latest-github-release latest-github-tag mercurial single-file svn
    # tagged-git
    case "${method}" in
        *git*)
            if [ "${DEBUG}" -eq 1 ]
            then
                git clone "${url}" "${prj}"
            else
                git clone --quiet "${url}" "${dst}${prj}"
            fi
            ;;
        http*)
            mkdir "$prj"
            if [ "${DEBUG}" -eq 1 ]
            then
                curl ${url} --output ${prj}
            else
                curl --silent ${url} --output ${prj}/
            fi
            ;;
        svn)
            echo WIP
            ;;
        darcs)
            echo WIP
            ;;
        mercurial)
            echo WIP
            ;;
        *)
            _err "${ERR} Not supported VCS: ${vcs}"
            return 1
            ;;
    esac
}

ql_system_query()
{
    local query="$1"
    local type="$2"
    local systems="$3"

    # project system-file system-name [dependency1..dependencyN]
    case "$type" in
        system)
            # Query in system columnt and return related project
            awk -v q="$query" '($3 == q) {print $1}' "${systems}"
            ;;
        project)
            # Query in project columnt and return all output systems
            awk -v q="$query" '($1 == q) {print $3}' "${systems}" |
                grep --invert-match "${QL_IGNORE_SYSTEMS}" |
                xargs
            ;;
        dependency)
            # Query in project columnt and combine all depdnencies
            awk -v q="$query" '($1 == q)' "${systems}" |
                cut -f4- -d' ' |
                xargs |
                xargs -n1 |
                grep --invert-match "${QL_IGNORE_SYSTEMS}" |
                sort -u |
                xargs
            ;;
    esac
}

get_commit()
{ # Return latest commit of given SRC and VCS type if applicable.
    local src="$1"
    local vcs="$2"

    case "${vcs}" in
        git)
            git --git-dir "${src}/.git" log -n1 --format=format:"%H"
            ;;
        tagged-git)
            git --git-dir "${src}/.git" describe --tags --abbrev=0
            ;;
        *)
            echo "not-available"
            ;;
    esac
}

guix_sbcl_inputs()
{ # Return a block of lisp list of provided DEPS.
    local deps="$1"

    for d in ${deps[@]}
    do
        printf "sbcl-%s\n" "$d"
    done
}

guix_hash()
{ # Return base32 sha254sum sum of given SRC and TYPE.
    local src="$1"
    local type="${2:-}"
    local tag

    case "${type}" in
        git)
            guix hash --serializer=nar --exclude-vcs "${src}"
            ;;
        tagged-git)
            tag=$(git --git-dir "${src}/.git" describe --tags --abbrev=0)
            git --git-dir "${src}/.git" checkout "${tag}" &>/dev/null
            guix hash --serializer=nar --exclude-vcs "${src}"
            ;;
        https | http)
            guix hash "${src}"
            ;;
    esac
}

guix_package_available()
{ # Check if provided Common Lisp SYSTEM is available in Guix upstream packages.
    local system="$1"

    if guix package --show="sbcl-${system}" &>/dev/null
    then
        echo "available"
    else
        echo "not-availalbe"
    fi
}

chk_require()
{ # Check that every required commands are available.
    declare -a warn

    _debug "--- [ $FUNCNAME ] ---"

    for c in "${REQUIRE[@]}"; do
        command -v "$c" &>/dev/null || warn+=("$c")
    done

    [ "${#warn}" -ne 0 ] &&
        { _err "${ERR}Missing commands: ${warn[*]}.";
          return 1; }

    _msg "${PAS}verification of required commands completed"
}

guix_package()
{ # Return Guix package definition
    local package_name="$1"
    local commit="$2"
    local version="0.0.0"
    local url="$3"
    local inputs="$4"
    local synopsis="TBC"
    local description="TBC"
    local license="#f"
    local sha256_base32="$5"

    cat <<EOF
(define-public sbcl-${package_name}
  (let ((commit "${commit}")
        (revision "1"))
    (package
      (name "sbcl-${package_name}")
      (version (git-version "${version}" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "${url}")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "${sha256_base32}"))))
      (build-system asdf-build-system/sbcl)
      (inputs
       (list ${inputs}))
      (home-page "${url}")
      (synopsis "${synopsis}")
      (description
"${description}")
      (license ${license}))))
EOF
}

main "$@"
# End of guix-import-quicklisp.bash
