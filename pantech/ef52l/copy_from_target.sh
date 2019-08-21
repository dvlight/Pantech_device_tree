#!/bin/sh

VENDOR=pantech
DEVICE=ef52l

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary
#rm -rf $BASE/*

for FILE in `cat proprietary-target.txt | grep -v ^# | grep -v ^$ `; do
    DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
        mkdir -p $BASE/$DIR
    fi
    cp /home/hl/android/A870k/Stock/system_pac/$FILE $BASE/$FILE
done
