#!/bin/sh
#
# ~/bin/spc
# Andrew Antle - http://antlechrist.org/
#
# Sync package cache on Arch.

RSYNC=/usr/bin/rsync
LPATH=/var/cache/pacman/pkg/
RPATH=/mnt/sdc1/pkg-cache/

set -e

$RSYNC -avz $LPATH $RPATH
