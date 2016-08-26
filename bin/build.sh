#!/bin/bash

sh vendor/ibm-java-sdk-${JDK_VERSION}-x86_64-archive.bin

cd vendor/ibm-java-x86_64-80/

find . -name *.so -exec objcopy --strip-unneeded {} \; #remove debug from .so files

./bin/java -version > version.txt
echo "${JDK_TAG}" > tag.txt

TARFILE="jdk.tgz"
tar czf $TARFILE --exclude='demo' --exclude='src.zip' --exclude='sample' \
    --exclude='docs' --exclude='$TARFILE' --ignore-failed-read *

mv $TARFILE ../../builds/ibm-jdk-${JDK_VERSION}.tar.gz

cd ../..

rm -rf vendor/ibm-java-x86_64-80
