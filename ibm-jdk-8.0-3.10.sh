#!/bin/sh

export JDK_VERSION="8.0-3.10"

docker-compose -f docker/ibm.yml build
docker-compose -f docker/ibm.yml run tar

echo ""
echo "Build complete!"
echo "Upload builds/ibm-jdk-${JDK_VERSION}.tar.gz to your server or S3 bucket"
echo "and run 'heroku config:set JDK_URL_1_8=' with the URL of the file."
