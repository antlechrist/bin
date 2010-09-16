#!/bin/sh -e
#
# ~/bin/sdf
# Andrew Antle - http://antlechrist.org
#
# Plan 9 would do
#     ls $HOME | grep "^\."

TAR=bsdtar
DATE=`date '+%Y%m%d'`
EXT=tar.gz
OPT=cpzf
SRC=`ls -a $HOME | egrep "^\.\w"`
BACKUPDIR=${BACKUPDIR:-$b}
ARCHIVE=$BACKUPDIR/$USER-dot_$DATE

cd
if test ! -f $ARCHIVE.$EXT; then
	$TAR $OPT $ARCHIVE.$EXT $SRC
	$TAR tf $ARCHIVE.$EXT | sort > $ARCHIVE.txt
fi
