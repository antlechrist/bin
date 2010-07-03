#!/bin/sh -e

CWD=$(pwd)

. $CWD/*.info

SRCDIR=/mnt/sdb4/pub/src
TARNAM=$(basename $DOWNLOAD)

if test ! -e $SRCDIR/$TARNAM; then
	wget -c $DOWNLOAD
	echo "$MD5SUM  $TARNAM" > $PRGNAM.MD5
	md5sum -c $PRGNAM.MD5
	mv $TARNAM $SRCDIR
fi

if test ! -L $CWD/$TARNAM; then
	ln -s $SRCDIR/$TARNAM .
fi

rm -f $PRGNAM.MD5
