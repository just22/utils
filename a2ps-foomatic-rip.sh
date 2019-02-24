#!/bin/sh

# ----------------------------------------------------------------------
#  $Id$
#
#  Non-postscript files converter using a2ps
# ----------------------------------------------------------------------

/usr/local/bin/a2ps -BRq --columns=1 -o - |
        /usr/local/bin/foomatic-rip -P hp-deskjet_1510_series
