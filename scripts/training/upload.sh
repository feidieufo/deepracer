#!/usr/bin/env bash

S3_BUCKET=$1
S3_PREFIX=$2

SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`

cd $SCRIPTPATH

#wrapper for upload-snapshot.sh for the GUI
gnome-terminal -x sh -c "${SCRIPTPATH}/upload-snapshot.sh ${S3_BUCKET} ${S3_PREFIX}"
