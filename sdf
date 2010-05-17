#!/bin/sh
#
# ~/bin/sdf
# 
# Andrew Antle - http://antlechrist.org
#
# Plan 9 would do
#     ls $HOME | grep "^\."
#

TAR=/usr/bin/bsdtar
DATE=`date '+%Y-%m-%d'`
EXT=tar.gz
OPT=cpzf
SRC=`ls -a $HOME | egrep "^\.\w"`
DEST=/mnt/sdc1/backups
ARCHIVE=$DEST/$USER-dot_$DATE.$EXT

set -e

cd

if test ! -f $ARCHIVE; then
	$TAR $OPT $ARCHIVE $SRC
fi
