#!/bin/sh

VENDOR=huawei
DEVICE=u9200

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary
rm -rf $BASE/*

for FILE in `cat proprietary-blobs.txt | grep -v ^# | grep -v ^$ | sed -e 's#^/system/##g'`; do
    DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
        mkdir -p $BASE/$DIR
    fi
    # Allow copying blobs from a local directory instead of pulling from a device
    if [ $VENDOR_DIR != "" ]; then
        cp $VENDOR_DIR/$FILE $BASE/$FILE
    else
        adb pull /system/$FILE $BASE/$FILE
    fi

done

./setup-makefiles.sh
