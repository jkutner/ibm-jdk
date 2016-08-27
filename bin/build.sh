#!/bin/bash

cd /opt/ibm/java/

./bin/java -version > version.txt
echo "${JDK_TAG}" > tag.txt

TARFILE="jdk.tgz"
tar czf $TARFILE --exclude='demo' --exclude='src.zip' --exclude='sample' \
    --exclude='docs' --exclude='$TARFILE' --ignore-failed-read *

mv $TARFILE /app/builds/ibm-jdk-${JDK_VERSION}.tar.gz

cd /app
