#! /bin/sh

SCRIPT=`readlink -f $0`
echo `dirname $SCRIPT`
ROOT_DIR=`dirname $SCRIPT`/../gps


export LD_LIBRARY_PATH=$ROOT_DIR/lib
LD_PRELOAD=libhook.so $ROOT_DIR/bin/gps
$ROOT_DIR/bin/gps
