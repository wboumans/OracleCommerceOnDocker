#!/bin/sh

start=`date +%s`

set -o pipefail

# Build log file
BUILD_LOG_FILE=/tmp/build.log

if [ -e $BUILD_LOG_FILE ]
then
  mv $BUILD_LOG_FILE $BUILD_LOG_FILE.`date +%s`
fi

# Endeca build
DOCKERFILE_LOC=endeca
IMAGE=ramnishkalsi/endeca
VERSION=11.3.1

docker build -t ${IMAGE}:${VERSION} $DOCKERFILE_LOC | tee $BUILD_LOG_FILE || exit 1

end=`date +%s`
runtime=$((end-start))

echo "Time taken: $runtime seconds"