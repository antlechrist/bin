#!/bin/sh
#
# ~/bin/pdf
#
# Andrew Antle - http://antlechrist.org/
#
# Open a pdf file or just the pdf program if no filename is given.
# Works very nicely with dmenu.

FILE="$1"
NUM="$2"
PROG="evince"

set -e

if [ -r "$FILE" ]; then
	$PROG --page-label="$NUM" "$FILE" 2> /dev/null
else
	$PROG 2> /dev/null
fi
