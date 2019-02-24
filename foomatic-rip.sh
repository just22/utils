#!/bin/sh

# ----------------------------------------------------------------------
#  $Id$
#
#  Non-postscript files converter using foomatic-rip and a2ps
# ----------------------------------------------------------------------

# No output msgs, please
exec >/dev/null 2>&1

_array() {
        case "$SH_VERSION" in
        *KSH*)
                a="$1"; shift
                set -A "$a" "$@"
                ;;
        *)
                eval $1='("${@:2}")'
        esac
}

_array MENU_ITEMS \
        "5min" \
        "10min" \
        "15min" \
        "20min" \
        "25min" \
        "30min" \
        "45min" \
        "60min"

d="$(printf "%s\n" "${MENU_ITEMS[@]}" | dmenu-cust -p Timer: "$@")"
[ -n "$d" ] && timer -t "+$d"
