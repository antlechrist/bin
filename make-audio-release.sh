#!/bin/sh

set -e

for i in *.flac; do
	flac -d $i;
done

for i in *.wav; do
	lame -V 2 $i;
	oggenc $i -q 7;
done

rm *.wav

for i in *.mp3; do
	rename '.wav' '' $i
done
