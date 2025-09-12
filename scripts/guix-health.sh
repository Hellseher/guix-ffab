#!/bin/sh
# GNU Guix --- Functional package management for GNU
# Copyright © 2023 sharlatan <sharlatanus@gmail.com>

# This file is part of GNU Guix.
#
# GNU Guix is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or (at
# your option) any later version.
#
# GNU Guix is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with GNU Guix.  If not, see <http://www.gnu.org/licenses/>.

# We require Bash but for portability we'd rather not use /bin/bash or
# /usr/bin/env in the shebang, hence this hack.

## Commentary:
#
# General purpose check script which may be used as report during diagnostics of
# issues with running system in general and Guix in particularly.

## Code:

if [ "x$BASH_VERSION" = "x" ]
then
    exec bash "$0" "$@"
fi

set -eo pipefail

[ "$UID" -eq 0 ] || { echo "This script must be run as root."; exit 1; }

REQUIRE=(
    "herd"
    "stat"
    "grep"
    "cat"
)

PAS=$'[ \033[32;1mPASS\033[0m ] '
ERR=$'[ \033[31;1mFAIL\033[0m ] '
WAR=$'[ \033[33;1mWARN\033[0m ] '
INF="[ INFO ] "

DEBUG=0

# Map of all vital predictable files required to diagnose health condition of
# the guix-daemon.
declare -A GUIX_FILE
GUIX_FILE=(
    [socket]="/var/guix/daemon-socket/socket"
    [configuration]="/run/current-system/configuration.scm"
)

# ------------------------------------------------------------------------------
#+UTILITIES

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

die()
{
    _err "${ERR}$*"
    exit 1
}

chck_require()
{ # Check that every required command is available.
    declare -a warn
    local c

    _debug "--- [ ${FUNCNAME[0]} ] ---"

    for c in "$@"; do
        command -v "$c" &>/dev/null || warn+=("$c")
    done

    [ "${#warn}" -ne 0 ] && die "Missing commands: ${warn[*]}."

    _msg "${PAS}verification of required commands completed"
}

# ------------------------------------------------------------------------------
#+CHECKS :: Collection of grouped check to validate Guix system health.

chck_daemon()
{ # Basic assumptions and check list to show what's going on with guix-daemon,
  # some of the checks can't be performed if daemon is not running (e.g guix
  # system shepherd-graph)

    local guix_daemon_status

    _debug "--- [ ${FUNCNAME[0]} ] ---"

    guix_daemon_status="$(herd status | grep guix-daemon | cut -d' ' -f2)"

    if [ "$(stat --format=%F ${GUIX_FILE[socket]})" == 'socket' ]
    then
        _msg "${PAS}Guix socket file is present in ${GUIX_FILE[socket]}"
    fi

    if [ "$guix_daemon_status" == "+" ]
    then
        _msg "${PAS}guix-daemon is running"
    elif [ "$guix_daemon_status" == "-" ]
    then
        _msg "${WAR}guix-daemon is stopped"
    fi

    if grep guix-daemon "${GUIX_FILE[configuration]}" &>/dev/null
    then
        _msg "${PAS}guix-daemon is listed in current system config"
    else
        _msg "${WAR}guix-daemon is not listed in current system config"
    fi
}

main()
{
    chck_require
    chck_daemon
    # XXX: Add more, event more!
}

main "$@"
