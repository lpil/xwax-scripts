#!/bin/sh

NEWPLAYLISTS=
for N in ~/data/new-music/*; do
    NEWPLAYLISTS="-l $N $NEWPLAYLISTS"
done

OLDPLAYLISTS=
for L in ~/data/old-music/*; do
    OLDPLAYLISTS="-l $L $OLDPLAYLISTS"
done

xwax -c -t serato_2b -t serato_cd -t serato_2a -a plughw:Audio4DJ,0,0 -a plughw:Audio4DJ,0,1 $NEWPLAYLISTS $OLDPLAYLISTS -l /media/
