#!/bin/sh

# usage: $1 is the dir under which you want to find stuff;
#        $2 is the name of the file you're looking for;
find $1 -name $2 -type f -print0 | xargs -0 /bin/rm -f
