#!/bin/sh

export JDK_VERSION="8.0-3.10"

if [ ! -f vendor/ibm-java-sdk-${JDK_VERSION}-x86_64-archive.bin ]; then
  echo "ERROR: You must download ibm-java-sdk-${JDK_VERSION}-x86_64-archive.bin"
  echo "       for AMD, Linux, x86_64 platforms and put it in the 'vendor/'"
  echo "       directory before running this script!"
  exit 1
fi

docker-compose -f docker/ibm.yml build
docker-compose -f docker/ibm.yml run tar

echo ""
echo "Build complete!"
echo "Upload builds/ibm-jdk-${JDK_VERSION}.tar.gz to your server or S3 bucket"
echo "and run 'heroku config:set JDK_URL_1_8=' with the URL of the file."
