#!/bin/sh

. ./*.info

SRCDIR=/home/ftp/pub/slackware/slackbuilds/source
TARNAM=`basename $DOWNLOAD`

if test ! -e $TARNAM; then
	wget $DOWNLOAD
fi

echo "$MD5SUM  $TARNAM" > $PRGNAM.MD5

md5sum -c $PRGNAM.MD5 || exit 1
mv -v $TARNAM $SRCDIR
ln -sv $SRCDIR/$TARNAM .

rm -fv $PRGNAM.MD5
