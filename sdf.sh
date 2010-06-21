#!/bin/sh
#
# ~/bin/sdf
# Andrew Antle - http://antlechrist.org
# Plan 9 would do
#     ls $HOME | grep "^\."

TAR=/usr/bin/bsdtar
DATE=`/bin/date '+%Y%m%d'`
EXT=tar.gz
OPT=cpzf
SRC=`/bin/ls -a $HOME | /bin/egrep "^\.\w"`
DEST=${DEST:-$backups}
ARCHIVE=$DEST/$USER-dot_$DATE.$EXT

set -e

cd

if test ! -f $ARCHIVE; then
	$TAR $OPT $ARCHIVE $SRC
fi
