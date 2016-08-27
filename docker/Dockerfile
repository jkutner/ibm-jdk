FROM ibmjava:sdk

WORKDIR /app

RUN mkdir -p /app/bin

ADD bin/build.sh /app/bin/build.sh

ENTRYPOINT ["./bin/build.sh"]
